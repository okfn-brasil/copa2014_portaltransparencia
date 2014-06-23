
# for f in 20140620_*csv ; do sed -e ':a;N;$!ba;s/\r\n/\\n/g' $f > ${f/new-/} ; done

t_descs = !ls ../data/*txt
table_code = "CREATE TABLE `{name}` ({tid}{cols}) CHARACTER SET utf8;\n\n"
insert_line = 'SELECT \'{}\';\nLOAD DATA INFILE \'/var/tmp/cdata/{}\' INTO TABLE {} FIELDS TERMINATED BY \';\' ENCLOSED BY \'"\' ({}){};\n\n'
refs = {}
table = {}
insert_files = {}
insert_content = ['SET FOREIGN_KEY_CHECKS=0;\n\n']

def col_type(x):
    if x == 'varchar' or x == 'ntext':
        return 'text'
    elif x == 'datetime':
        return 'date'
    elif x == 'bit':
        return 'bool'
    else:
        return x

def col_name(cname, ctype):
    if ctype == 'datetime':
        return '@{}'.format(cname)
    else:
        return cname

def conv_dates(cols):
    cdates = [c[0] for c in cols if c[1] == 'datetime']
    conv = ''
    
    if cdates:
        conv = ' SET '
        convl = []
        for cd in cdates:
            convl += ['{} = STR_TO_DATE(@{}, \'%d/%m/%Y\')'.format(cd, cd)]
        conv += ', '.join(convl)
    
    return conv
    
for table_file in t_descs:
    table_name = re.compile(r'[^_]*_(.*)\.txt$').match(table_file).group(1)
    ins_file = '{}.csv'.format(re.compile(r'.*/(.*)\.txt$').match(table_file).group(1))
    
    header_file = !cut -f1,2 $table_file
    columns = [l.split('\t') for l in header_file]
    prim_key = columns[0]
    for_keys = [e for e in columns[1:] if e[0][:2] == 'Id']
    if table_name != 'Grupo_Entidade':
        tid = '`{}` {} primary key'.format(prim_key[0], prim_key[1])
    else:
        tid = '`{}` {}'.format(prim_key[0], prim_key[1])
        
    cols = ''.join([', {} {}'.format(c[0], col_type(c[1])) for c in columns[1:]])
    
    insert_content += insert_line.format(table_name, ins_file, table_name, ', '.join(['{}'.format(col_name(c[0], c[1])) for c in columns]), conv_dates(columns))

    
    for fk in for_keys:
        if not refs.has_key(fk[0][2:]):
            refs[fk[0][2:]] = []
        refs[fk[0][2:]].append('ALTER TABLE `{}` ADD FOREIGN KEY (`{}`) REFERENCES `{}`(`{}`);\n\n'.format(table_name, fk[0], fk[0][2:], fk[0]))
    
    table[table_name] = table_code.format(name=table_name, tid=tid, cols=cols)

# sql for tables creation
output_content = ''.join(table.values()) + ''.join([''.join(refs[r]) for r in [r for r in refs.keys() if r in table.keys() and r != 'Grupo_Entidade']])
output_file = open('create_tables.sql', 'w')
output_file.write(output_content)
output_file.flush()

# sql for data insert
insert_content = ''.join(insert_content)
output_file = open('insert.sql', 'w')
output_file.write(insert_content)
output_file.flush()
    