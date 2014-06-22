SET FOREIGN_KEY_CHECKS=0;

SELECT 'AcaoGoverno';
LOAD DATA INFILE '/var/tmp/cdata/20140620_AcaoGoverno.csv' INTO TABLE AcaoGoverno FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdAcaoGoverno, NomAcaoGoverno, NumAcaoGoverno);

SELECT 'Aditivo';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Aditivo.csv' INTO TABLE Aditivo FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdAditivo, NumAditivo, @DatAssinatura, @DatInicioVigencia, @DatFinalVigencia, ValTotal, DescObjeto, FlgAtivo, IdRecursoCaptado, ValCedido, ValContrapartida, IdExecucaoFinanceira, FlgExclusaoDependencia, FlgPublicadoExclusao) SET DatAssinatura = STR_TO_DATE(@DatAssinatura, '%d/%m/%Y'), DatInicioVigencia = STR_TO_DATE(@DatInicioVigencia, '%d/%m/%Y'), DatFinalVigencia = STR_TO_DATE(@DatFinalVigencia, '%d/%m/%Y');

SELECT 'Agrupador';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Agrupador.csv' INTO TABLE Agrupador FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdAgrupador, DescAgrupador);

SELECT 'Alerta';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Alerta.csv' INTO TABLE Alerta FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdAlerta, @DthAlerta, IdRecursoPrevisto, IdEtapa, IdEmpreendimento, DescMensagem, FlgHomologado, IdGrupo, IdEntidade, NomUsuario, IdUsuario, IdTipoLogOperacao, IdArquivo, IdInstituicao, NomInstituicao, IdLicitacao, IdRecursoCaptado, IdDesembolso, IdAditivo, IdExecucaoFinanceira, IdLicenca, IdRelatorioExecucao, IdRecurso) SET DthAlerta = STR_TO_DATE(@DthAlerta, '%d/%m/%Y');

SELECT 'AndamentoFinanceiro';
LOAD DATA INFILE '/var/tmp/cdata/20140620_AndamentoFinanceiro.csv' INTO TABLE AndamentoFinanceiro FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdAndamentoFinanceiro, DescAndamentoFinanceiro);

SELECT 'AndamentoLicenca';
LOAD DATA INFILE '/var/tmp/cdata/20140620_AndamentoLicenca.csv' INTO TABLE AndamentoLicenca FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdAndamentoLicenca, DescAndamentoLicenca);

SELECT 'Andamento';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Andamento.csv' INTO TABLE Andamento FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdAndamento, DescAndamento);

SELECT 'Ano';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Ano.csv' INTO TABLE Ano FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdAno, NumAno);

SELECT 'CidadeSede';
LOAD DATA INFILE '/var/tmp/cdata/20140620_CidadeSede.csv' INTO TABLE CidadeSede FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdCidadeSede, DescCidadeSede, IdUf);

SELECT 'Desembolso';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Desembolso.csv' INTO TABLE Desembolso FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdDesembolso, IdRecursoCaptado, @DatDesembolso, ValDesembolso, IdTipoDesembolso, FlgAtivo, DescDocumentoAutorizacao, IdExecucaoFinanceira, FlgExclusaoDependencia, FlgPublicadoExclusao) SET DatDesembolso = STR_TO_DATE(@DatDesembolso, '%d/%m/%Y');

SELECT 'Empreendimento';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Empreendimento.csv' INTO TABLE Empreendimento FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdEmpreendimento, DescEmpreendimento, IdCidadeSede, IdTema, IdAgrupador, FlgFonteMatriz, FlgDireto, DescObservacao, IdAndamento, FlgAtivo, IdFaseGrupo, TxtExplicativoInvestimento, TxtExplicativoRecursos, TxtExplicativoEtapas, IdProjeto, IdInstituicao, ValTotalPrevisto);

SELECT 'Entidade_TipoArquivo';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Entidade_TipoArquivo.csv' INTO TABLE Entidade_TipoArquivo FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdEntidade_TipoArquivo, IdEntidade, IdTipoArquivo);

SELECT 'Entidade';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Entidade.csv' INTO TABLE Entidade FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdEntidade, DescEntidade);

SELECT 'Etapa';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Etapa.csv' INTO TABLE Etapa FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdEtapa, IdEmpreendimento, IdTipoEtapa, @DatInicio, @DatFim, @DatReprogramacao, @DatInicioEfetiva, @DatFimEfetiva, @DatReprogramacaoEfetiva, NumEtapa, FlgAtivo, FlgExclusaoDependencia, FlgPublicadoExclusao) SET DatInicio = STR_TO_DATE(@DatInicio, '%d/%m/%Y'), DatFim = STR_TO_DATE(@DatFim, '%d/%m/%Y'), DatReprogramacao = STR_TO_DATE(@DatReprogramacao, '%d/%m/%Y'), DatInicioEfetiva = STR_TO_DATE(@DatInicioEfetiva, '%d/%m/%Y'), DatFimEfetiva = STR_TO_DATE(@DatFimEfetiva, '%d/%m/%Y'), DatReprogramacaoEfetiva = STR_TO_DATE(@DatReprogramacaoEfetiva, '%d/%m/%Y');

SELECT 'ExecucaoFinanceira';
LOAD DATA INFILE '/var/tmp/cdata/20140620_ExecucaoFinanceira.csv' INTO TABLE ExecucaoFinanceira FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdExecucaoFinanceira, IdEmpreendimento, NumDocumento, IdAndamentoFinanceiro, IdTipoExecucaoFinanceira, @DatAssinatura, @DatInicioVigencia, @DatFinalVigencia, IdInstituicaoContratante, IdTipoDocumento, IdInstituicaoContratado, IdPessoaFisicaContratado, ValContrato, ValContrapartida, ValTotal, DescObjeto, IdLicitacao, FlgInexibilidadeLicitacao, FlgDispensaLicitacao, IdFundamentoLegal, IdFaseGrupo, FlgAtivo, FlgExclusaoDependencia) SET DatAssinatura = STR_TO_DATE(@DatAssinatura, '%d/%m/%Y'), DatInicioVigencia = STR_TO_DATE(@DatInicioVigencia, '%d/%m/%Y'), DatFinalVigencia = STR_TO_DATE(@DatFinalVigencia, '%d/%m/%Y');

SELECT 'FaseGrupo';
LOAD DATA INFILE '/var/tmp/cdata/20140620_FaseGrupo.csv' INTO TABLE FaseGrupo FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdFaseGrupo, DescFaseGrupo);

SELECT 'FaseLicitacao';
LOAD DATA INFILE '/var/tmp/cdata/20140620_FaseLicitacao.csv' INTO TABLE FaseLicitacao FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdFaseLicitacao, DescFaseLicitacao);

SELECT 'FonteRecurso';
LOAD DATA INFILE '/var/tmp/cdata/20140620_FonteRecurso.csv' INTO TABLE FonteRecurso FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdFonteRecurso, NumFonteRecurso, NomFonteRecurso);

SELECT 'FundamentoLegal';
LOAD DATA INFILE '/var/tmp/cdata/20140620_FundamentoLegal.csv' INTO TABLE FundamentoLegal FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdFundamentoLegal, DescFundamentoLegal);

SELECT 'Grupo_Entidade';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Grupo_Entidade.csv' INTO TABLE Grupo_Entidade FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdGrupo, IdEntidade, IdGrupo_Entidade);

SELECT 'Grupo';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Grupo.csv' INTO TABLE Grupo FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdGrupo, DescGrupo);

SELECT 'Instituicao';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Instituicao.csv' INTO TABLE Instituicao FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdInstituicao, IdTipoInstituicao, NomInstituicao, NumCnpj);

SELECT 'LicencaAmbiental';
LOAD DATA INFILE '/var/tmp/cdata/20140620_LicencaAmbiental.csv' INTO TABLE LicencaAmbiental FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdLicencaAmbiental, DescLicencaAmbiental);

SELECT 'Licenca';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Licenca.csv' INTO TABLE Licenca FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdLicenca, IdEmpreendimento, IdTipoLicenca, IdLicencaAmbiental, FlgDispensaLicenca, NumLicenca, DescLicenca, @DatExpedicao, @DatVencimento, IdFaseGrupo, @DatRenovacaoLicenca, DescRenovacaoLicenca, FlgAtivo, IdInstituicao, IdLicencaRenovacao, FlgExclusaoDependencia) SET DatExpedicao = STR_TO_DATE(@DatExpedicao, '%d/%m/%Y'), DatVencimento = STR_TO_DATE(@DatVencimento, '%d/%m/%Y'), DatRenovacaoLicenca = STR_TO_DATE(@DatRenovacaoLicenca, '%d/%m/%Y');

SELECT 'Licitacao';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Licitacao.csv' INTO TABLE Licitacao FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdLicitacao, NumLicitacao, IdAno, IdFaseGrupo, @DatPublicacao, FlgRecursoPublicoFederal, IdModalidade, IdTipoLicitacao, ValEstimado, NumEmpenho, ValEmpenho, DescObjeto, IdEmpreendimento, FlgAtivo, IdFaseLicitacao, FlgExclusaoDependencia) SET DatPublicacao = STR_TO_DATE(@DatPublicacao, '%d/%m/%Y');

SELECT 'Log';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Log.csv' INTO TABLE Log FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdLog, IdEmpreendimento, IdEtapa, IdRecursoPrevisto, IdTipoLogOperacao, IdUsuario, NomUsuario, FlgHomologado, @DthLog, DescMensagem, IdGrupo, IdEntidade, IdArquivo, IdInstituicao, NomInstituicao, IdRecursoCaptado, IdAditivo, IdDesembolso, IdLicitacao, IdExecucaoFinanceira, IdLicenca, IdRelatorioExecucao, IdRecurso) SET DthLog = STR_TO_DATE(@DthLog, '%d/%m/%Y');

SELECT 'Modalidade';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Modalidade.csv' INTO TABLE Modalidade FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdModalidade, DescModalidade);

SELECT 'PessoaFisica';
LOAD DATA INFILE '/var/tmp/cdata/20140620_PessoaFisica.csv' INTO TABLE PessoaFisica FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdPessoaFisica, NomPessoaFisica, NumCpf);

SELECT 'ProgramaGoverno';
LOAD DATA INFILE '/var/tmp/cdata/20140620_ProgramaGoverno.csv' INTO TABLE ProgramaGoverno FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdProgramaGoverno, NomProgramaGoverno, NumProgramaGoverno);

SELECT 'Projeto';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Projeto.csv' INTO TABLE Projeto FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdProjeto, DescProjeto);

SELECT 'RecursoCaptado';
LOAD DATA INFILE '/var/tmp/cdata/20140620_RecursoCaptado.csv' INTO TABLE RecursoCaptado FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdRecursoCaptado, IdTipoRecursoCaptado, NumDocumento, @DatAssinatura, NumOperacao, @DatInicioVigencia, @DatFinalVigencia, IdInstituicaoCedente, IdInstituicaoBeneficiario, DescObjeto, DescGarantia, ValCedido, ValContrapartida, FlgAtivo, IdEmpreendimento, IdFaseGrupo, ValTotal, IdTipoRecursoTransferencia, FlgExclusaoDependencia) SET DatAssinatura = STR_TO_DATE(@DatAssinatura, '%d/%m/%Y'), DatInicioVigencia = STR_TO_DATE(@DatInicioVigencia, '%d/%m/%Y'), DatFinalVigencia = STR_TO_DATE(@DatFinalVigencia, '%d/%m/%Y');

SELECT 'RecursoOperacao';
LOAD DATA INFILE '/var/tmp/cdata/20140620_RecursoOperacao.csv' INTO TABLE RecursoOperacao FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdRecursoOperacao, DescRecursoOperacao, DescPapel, DescPapelContraPartida);

SELECT 'RecursoPrevisto';
LOAD DATA INFILE '/var/tmp/cdata/20140620_RecursoPrevisto.csv' INTO TABLE RecursoPrevisto FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdRecursoPrevisto, IdEmpreendimento, ValRecurso, ValRecursoContrapartida, FlgAtivo, IdInstituicao, IdInstituicaoContrapartida, IdRecursoOperacao, NumRecursoPrevisto, FlgExclusaoDependencia, FlgPublicadoExclusao);

SELECT 'Recurso';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Recurso.csv' INTO TABLE Recurso FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdRecurso, IdEmpreendimento, IdInstituicao, DescObjeto, ValComplementar, FlgAtivo, IdTipoRecurso, IdFaseGrupo, ValInvestimento, FlgExclusaoDependencia);

SELECT 'RelatorioExecucao';
LOAD DATA INFILE '/var/tmp/cdata/20140620_RelatorioExecucao.csv' INTO TABLE RelatorioExecucao FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdRelatorioExecucao, @DatInicial, @DatFinal, DescResumo, IdEmpreendimento, ValPercentualConcluido, IdFaseGrupo, FlgAtivo, NumRelatorioExecucao, FlgExclusaoDependencia) SET DatInicial = STR_TO_DATE(@DatInicial, '%d/%m/%Y'), DatFinal = STR_TO_DATE(@DatFinal, '%d/%m/%Y');

SELECT 'Tema';
LOAD DATA INFILE '/var/tmp/cdata/20140620_Tema.csv' INTO TABLE Tema FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTema, DescTema);

SELECT 'TipoAlerta';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoAlerta.csv' INTO TABLE TipoAlerta FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoAlerta, DescTipoAlerta);

SELECT 'TipoArquivo';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoArquivo.csv' INTO TABLE TipoArquivo FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoArquivo, DescTipoArquivo);

SELECT 'TipoDesembolso';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoDesembolso.csv' INTO TABLE TipoDesembolso FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoDesembolso, DescTipoDesembolso);

SELECT 'TipoDocumento';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoDocumento.csv' INTO TABLE TipoDocumento FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoDocumento, DescTipoDocumento);

SELECT 'TipoEtapa';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoEtapa.csv' INTO TABLE TipoEtapa FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoEtapa, DescTipoEtapa);

SELECT 'TipoExecucaoFinanceira';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoExecucaoFinanceira.csv' INTO TABLE TipoExecucaoFinanceira FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoExecucaoFinanceira, DescTipoExecucaoFinanceira, IdTipoExecucaoFinanceiraPai);

SELECT 'TipoInstituicao_RecursoOperacao';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoInstituicao_RecursoOperacao.csv' INTO TABLE TipoInstituicao_RecursoOperacao FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoInstituicao_RecursoOperacao, IdTipoInstituicao, IdRecursoOperacao);

SELECT 'TipoInstituicao';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoInstituicao.csv' INTO TABLE TipoInstituicao FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoInstituicao, DescTipoInstituicao, FlgFinanciador);

SELECT 'TipoLicenca';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoLicenca.csv' INTO TABLE TipoLicenca FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoLicenca, DescTipoLicenca);

SELECT 'TipoLicitacao';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoLicitacao.csv' INTO TABLE TipoLicitacao FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoLicitacao, DescTipoLicitacao);

SELECT 'TipoLogOperacao';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoLogOperacao.csv' INTO TABLE TipoLogOperacao FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoLogOperacao, DescTipoLogOperacao);

SELECT 'TipoRecursoCaptado';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoRecursoCaptado.csv' INTO TABLE TipoRecursoCaptado FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoRecursoCaptado, DescTipoRecursoCaptado);

SELECT 'TipoRecursoTransferencia';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoRecursoTransferencia.csv' INTO TABLE TipoRecursoTransferencia FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoRecursoTransferencia, DescTipoRecursoTransferencia);

SELECT 'TipoRecurso';
LOAD DATA INFILE '/var/tmp/cdata/20140620_TipoRecurso.csv' INTO TABLE TipoRecurso FIELDS TERMINATED BY ';' ENCLOSED BY '"' (IdTipoRecurso, DescTipoRecurso);

