CREATE TABLE `TipoRecurso` (`IdTipoRecurso` bigint primary key, DescTipoRecurso text) CHARACTER SET utf8;

CREATE TABLE `Log` (`IdLog` bigint primary key, IdEmpreendimento bigint, IdEtapa bigint, IdRecursoPrevisto bigint, IdTipoLogOperacao bigint, IdUsuario bigint, NomUsuario text, FlgHomologado bool, DthLog date, DescMensagem text, IdGrupo bigint, IdEntidade bigint, IdArquivo bigint, IdInstituicao bigint, NomInstituicao text, IdRecursoCaptado bigint, IdAditivo bigint, IdDesembolso bigint, IdLicitacao bigint, IdExecucaoFinanceira bigint, IdLicenca bigint, IdRelatorioExecucao bigint, IdRecurso bigint) CHARACTER SET utf8;

CREATE TABLE `TipoLicenca` (`IdTipoLicenca` bigint primary key, DescTipoLicenca text) CHARACTER SET utf8;

CREATE TABLE `FundamentoLegal` (`IdFundamentoLegal` bigint primary key, DescFundamentoLegal text) CHARACTER SET utf8;

CREATE TABLE `TipoExecucaoFinanceira` (`IdTipoExecucaoFinanceira` bigint primary key, DescTipoExecucaoFinanceira text, IdTipoExecucaoFinanceiraPai bigint) CHARACTER SET utf8;

CREATE TABLE `RecursoCaptado` (`IdRecursoCaptado` bigint primary key, IdTipoRecursoCaptado bigint, NumDocumento text, DatAssinatura date, NumOperacao text, DatInicioVigencia date, DatFinalVigencia date, IdInstituicaoCedente bigint, IdInstituicaoBeneficiario bigint, DescObjeto text, DescGarantia text, ValCedido decimal, ValContrapartida decimal, FlgAtivo bool, IdEmpreendimento bigint, IdFaseGrupo bigint, ValTotal decimal, IdTipoRecursoTransferencia bigint, FlgExclusaoDependencia bool) CHARACTER SET utf8;

CREATE TABLE `TipoRecursoTransferencia` (`IdTipoRecursoTransferencia` bigint primary key, DescTipoRecursoTransferencia text) CHARACTER SET utf8;

CREATE TABLE `ExecucaoFinanceira` (`IdExecucaoFinanceira` bigint primary key, IdEmpreendimento bigint, NumDocumento text, IdAndamentoFinanceiro bigint, IdTipoExecucaoFinanceira bigint, DatAssinatura date, DatInicioVigencia date, DatFinalVigencia date, IdInstituicaoContratante bigint, IdTipoDocumento bigint, IdInstituicaoContratado bigint, IdPessoaFisicaContratado bigint, ValContrato decimal, ValContrapartida decimal, ValTotal decimal, DescObjeto text, IdLicitacao bigint, FlgInexibilidadeLicitacao bool, FlgDispensaLicitacao bool, IdFundamentoLegal bigint, IdFaseGrupo bigint, FlgAtivo bool, FlgExclusaoDependencia bool) CHARACTER SET utf8;

CREATE TABLE `TipoInstituicao` (`IdTipoInstituicao` bigint primary key, DescTipoInstituicao text, FlgFinanciador bool) CHARACTER SET utf8;

CREATE TABLE `Alerta` (`IdAlerta` bigint primary key, DthAlerta date, IdRecursoPrevisto bigint, IdEtapa bigint, IdEmpreendimento bigint, DescMensagem text, FlgHomologado bool, IdGrupo bigint, IdEntidade bigint, NomUsuario text, IdUsuario bigint, IdTipoLogOperacao bigint, IdArquivo bigint, IdInstituicao bigint, NomInstituicao text, IdLicitacao bigint, IdRecursoCaptado bigint, IdDesembolso bigint, IdAditivo bigint, IdExecucaoFinanceira bigint, IdLicenca bigint, IdRelatorioExecucao bigint, IdRecurso bigint) CHARACTER SET utf8;

CREATE TABLE `FaseLicitacao` (`IdFaseLicitacao` bigint primary key, DescFaseLicitacao text) CHARACTER SET utf8;

CREATE TABLE `TipoRecursoCaptado` (`IdTipoRecursoCaptado` bigint primary key, DescTipoRecursoCaptado text) CHARACTER SET utf8;

CREATE TABLE `LicencaAmbiental` (`IdLicencaAmbiental` bigint primary key, DescLicencaAmbiental text) CHARACTER SET utf8;

CREATE TABLE `TipoDesembolso` (`IdTipoDesembolso` bigint primary key, DescTipoDesembolso text) CHARACTER SET utf8;

CREATE TABLE `Agrupador` (`IdAgrupador` bigint primary key, DescAgrupador text) CHARACTER SET utf8;

CREATE TABLE `RecursoPrevisto` (`IdRecursoPrevisto` bigint primary key, IdEmpreendimento bigint, ValRecurso numeric, ValRecursoContrapartida numeric, FlgAtivo bool, IdInstituicao bigint, IdInstituicaoContrapartida bigint, IdRecursoOperacao bigint, NumRecursoPrevisto text, FlgExclusaoDependencia bool, FlgPublicadoExclusao bool) CHARACTER SET utf8;

CREATE TABLE `Aditivo` (`IdAditivo` bigint primary key, NumAditivo text, DatAssinatura date, DatInicioVigencia date, DatFinalVigencia date, ValTotal decimal, DescObjeto text, FlgAtivo bool, IdRecursoCaptado bigint, ValCedido decimal, ValContrapartida decimal, IdExecucaoFinanceira bigint, FlgExclusaoDependencia bool, FlgPublicadoExclusao bool) CHARACTER SET utf8;

CREATE TABLE `Grupo_Entidade` (`IdGrupo` bigint, IdEntidade bigint, IdGrupo_Entidade bigint) CHARACTER SET utf8;

CREATE TABLE `Licenca` (`IdLicenca` bigint primary key, IdEmpreendimento bigint, IdTipoLicenca bigint, IdLicencaAmbiental bigint, FlgDispensaLicenca bool, NumLicenca text, DescLicenca text, DatExpedicao date, DatVencimento date, IdFaseGrupo bigint, DatRenovacaoLicenca date, DescRenovacaoLicenca text, FlgAtivo bool, IdInstituicao bigint, IdLicencaRenovacao bigint, FlgExclusaoDependencia bool) CHARACTER SET utf8;

CREATE TABLE `AndamentoLicenca` (`IdAndamentoLicenca` bigint primary key, DescAndamentoLicenca text) CHARACTER SET utf8;

CREATE TABLE `Modalidade` (`IdModalidade` bigint primary key, DescModalidade text) CHARACTER SET utf8;

CREATE TABLE `TipoLogOperacao` (`IdTipoLogOperacao` bigint primary key, DescTipoLogOperacao text) CHARACTER SET utf8;

CREATE TABLE `Desembolso` (`IdDesembolso` bigint primary key, IdRecursoCaptado bigint, DatDesembolso date, ValDesembolso decimal, IdTipoDesembolso bigint, FlgAtivo bool, DescDocumentoAutorizacao text, IdExecucaoFinanceira bigint, FlgExclusaoDependencia bool, FlgPublicadoExclusao bool) CHARACTER SET utf8;

CREATE TABLE `Andamento` (`IdAndamento` bigint primary key, DescAndamento text) CHARACTER SET utf8;

CREATE TABLE `FaseGrupo` (`IdFaseGrupo` bigint primary key, DescFaseGrupo text) CHARACTER SET utf8;

CREATE TABLE `TipoEtapa` (`IdTipoEtapa` bigint primary key, DescTipoEtapa text) CHARACTER SET utf8;

CREATE TABLE `CidadeSede` (`IdCidadeSede` bigint primary key, DescCidadeSede text, IdUf int) CHARACTER SET utf8;

CREATE TABLE `Recurso` (`IdRecurso` bigint primary key, IdEmpreendimento bigint, IdInstituicao bigint, DescObjeto text, ValComplementar decimal, FlgAtivo bool, IdTipoRecurso bigint, IdFaseGrupo bigint, ValInvestimento decimal, FlgExclusaoDependencia bool) CHARACTER SET utf8;

CREATE TABLE `TipoDocumento` (`IdTipoDocumento` bigint primary key, DescTipoDocumento text) CHARACTER SET utf8;

CREATE TABLE `Projeto` (`IdProjeto` bigint primary key, DescProjeto text) CHARACTER SET utf8;

CREATE TABLE `PessoaFisica` (`IdPessoaFisica` bigint primary key, NomPessoaFisica text, NumCpf text) CHARACTER SET utf8;

CREATE TABLE `RecursoOperacao` (`IdRecursoOperacao` bigint primary key, DescRecursoOperacao text, DescPapel text, DescPapelContraPartida text) CHARACTER SET utf8;

CREATE TABLE `Licitacao` (`IdLicitacao` bigint primary key, NumLicitacao text, IdAno bigint, IdFaseGrupo bigint, DatPublicacao date, FlgRecursoPublicoFederal bool, IdModalidade bigint, IdTipoLicitacao bigint, ValEstimado decimal, NumEmpenho text, ValEmpenho decimal, DescObjeto text, IdEmpreendimento bigint, FlgAtivo bool, IdFaseLicitacao bigint, FlgExclusaoDependencia bool) CHARACTER SET utf8;

CREATE TABLE `Tema` (`IdTema` bigint primary key, DescTema text) CHARACTER SET utf8;

CREATE TABLE `Instituicao` (`IdInstituicao` bigint primary key, IdTipoInstituicao bigint, NomInstituicao text, NumCnpj text) CHARACTER SET utf8;

CREATE TABLE `Entidade` (`IdEntidade` bigint primary key, DescEntidade text) CHARACTER SET utf8;

CREATE TABLE `Grupo` (`IdGrupo` bigint primary key, DescGrupo text) CHARACTER SET utf8;

CREATE TABLE `TipoAlerta` (`IdTipoAlerta` bigint primary key, DescTipoAlerta text) CHARACTER SET utf8;

CREATE TABLE `Empreendimento` (`IdEmpreendimento` bigint primary key, DescEmpreendimento text, IdCidadeSede bigint, IdTema bigint, IdAgrupador bigint, FlgFonteMatriz bool, FlgDireto bool, DescObservacao text, IdAndamento bigint, FlgAtivo bool, IdFaseGrupo bigint, TxtExplicativoInvestimento text, TxtExplicativoRecursos text, TxtExplicativoEtapas text, IdProjeto bigint, IdInstituicao bigint, ValTotalPrevisto numeric) CHARACTER SET utf8;

CREATE TABLE `AcaoGoverno` (`IdAcaoGoverno` bigint primary key, NomAcaoGoverno text, NumAcaoGoverno text) CHARACTER SET utf8;

CREATE TABLE `Etapa` (`IdEtapa` bigint primary key, IdEmpreendimento bigint, IdTipoEtapa bigint, DatInicio date, DatFim date, DatReprogramacao date, DatInicioEfetiva date, DatFimEfetiva date, DatReprogramacaoEfetiva date, NumEtapa text, FlgAtivo bool, FlgExclusaoDependencia bool, FlgPublicadoExclusao bool) CHARACTER SET utf8;

CREATE TABLE `RelatorioExecucao` (`IdRelatorioExecucao` bigint primary key, DatInicial date, DatFinal date, DescResumo text, IdEmpreendimento bigint, ValPercentualConcluido decimal, IdFaseGrupo bigint, FlgAtivo bool, NumRelatorioExecucao text, FlgExclusaoDependencia bool) CHARACTER SET utf8;

CREATE TABLE `TipoInstituicao_RecursoOperacao` (`IdTipoInstituicao_RecursoOperacao` bigint primary key, IdTipoInstituicao bigint, IdRecursoOperacao bigint) CHARACTER SET utf8;

CREATE TABLE `AndamentoFinanceiro` (`IdAndamentoFinanceiro` bigint primary key, DescAndamentoFinanceiro text) CHARACTER SET utf8;

CREATE TABLE `Ano` (`IdAno` bigint primary key, NumAno int) CHARACTER SET utf8;

CREATE TABLE `TipoLicitacao` (`IdTipoLicitacao` bigint primary key, DescTipoLicitacao text) CHARACTER SET utf8;

CREATE TABLE `Entidade_TipoArquivo` (`IdEntidade_TipoArquivo` bigint primary key, IdEntidade bigint, IdTipoArquivo bigint) CHARACTER SET utf8;

CREATE TABLE `TipoArquivo` (`IdTipoArquivo` bigint primary key, DescTipoArquivo text) CHARACTER SET utf8;

CREATE TABLE `ProgramaGoverno` (`IdProgramaGoverno` bigint primary key, NomProgramaGoverno text, NumProgramaGoverno text) CHARACTER SET utf8;

CREATE TABLE `FonteRecurso` (`IdFonteRecurso` bigint primary key, NumFonteRecurso text, NomFonteRecurso text) CHARACTER SET utf8;

ALTER TABLE `Recurso` ADD FOREIGN KEY (`IdTipoRecurso`) REFERENCES `TipoRecurso`(`IdTipoRecurso`);

ALTER TABLE `Licenca` ADD FOREIGN KEY (`IdTipoLicenca`) REFERENCES `TipoLicenca`(`IdTipoLicenca`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdTipoLogOperacao`) REFERENCES `TipoLogOperacao`(`IdTipoLogOperacao`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdTipoLogOperacao`) REFERENCES `TipoLogOperacao`(`IdTipoLogOperacao`);

ALTER TABLE `ExecucaoFinanceira` ADD FOREIGN KEY (`IdTipoExecucaoFinanceira`) REFERENCES `TipoExecucaoFinanceira`(`IdTipoExecucaoFinanceira`);

ALTER TABLE `Empreendimento` ADD FOREIGN KEY (`IdCidadeSede`) REFERENCES `CidadeSede`(`IdCidadeSede`);

ALTER TABLE `RecursoCaptado` ADD FOREIGN KEY (`IdTipoRecursoTransferencia`) REFERENCES `TipoRecursoTransferencia`(`IdTipoRecursoTransferencia`);

ALTER TABLE `Aditivo` ADD FOREIGN KEY (`IdExecucaoFinanceira`) REFERENCES `ExecucaoFinanceira`(`IdExecucaoFinanceira`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdExecucaoFinanceira`) REFERENCES `ExecucaoFinanceira`(`IdExecucaoFinanceira`);

ALTER TABLE `Desembolso` ADD FOREIGN KEY (`IdExecucaoFinanceira`) REFERENCES `ExecucaoFinanceira`(`IdExecucaoFinanceira`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdExecucaoFinanceira`) REFERENCES `ExecucaoFinanceira`(`IdExecucaoFinanceira`);

ALTER TABLE `RecursoCaptado` ADD FOREIGN KEY (`IdTipoRecursoCaptado`) REFERENCES `TipoRecursoCaptado`(`IdTipoRecursoCaptado`);

ALTER TABLE `Licitacao` ADD FOREIGN KEY (`IdFaseLicitacao`) REFERENCES `FaseLicitacao`(`IdFaseLicitacao`);

ALTER TABLE `Licenca` ADD FOREIGN KEY (`IdLicencaAmbiental`) REFERENCES `LicencaAmbiental`(`IdLicencaAmbiental`);

ALTER TABLE `Desembolso` ADD FOREIGN KEY (`IdTipoDesembolso`) REFERENCES `TipoDesembolso`(`IdTipoDesembolso`);

ALTER TABLE `Empreendimento` ADD FOREIGN KEY (`IdAgrupador`) REFERENCES `Agrupador`(`IdAgrupador`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdRecursoPrevisto`) REFERENCES `RecursoPrevisto`(`IdRecursoPrevisto`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdRecursoPrevisto`) REFERENCES `RecursoPrevisto`(`IdRecursoPrevisto`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdAditivo`) REFERENCES `Aditivo`(`IdAditivo`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdAditivo`) REFERENCES `Aditivo`(`IdAditivo`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdLicenca`) REFERENCES `Licenca`(`IdLicenca`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdLicenca`) REFERENCES `Licenca`(`IdLicenca`);

ALTER TABLE `Licitacao` ADD FOREIGN KEY (`IdModalidade`) REFERENCES `Modalidade`(`IdModalidade`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdDesembolso`) REFERENCES `Desembolso`(`IdDesembolso`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdDesembolso`) REFERENCES `Desembolso`(`IdDesembolso`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdGrupo`) REFERENCES `Grupo`(`IdGrupo`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdGrupo`) REFERENCES `Grupo`(`IdGrupo`);

ALTER TABLE `Empreendimento` ADD FOREIGN KEY (`IdFaseGrupo`) REFERENCES `FaseGrupo`(`IdFaseGrupo`);

ALTER TABLE `ExecucaoFinanceira` ADD FOREIGN KEY (`IdFaseGrupo`) REFERENCES `FaseGrupo`(`IdFaseGrupo`);

ALTER TABLE `Licenca` ADD FOREIGN KEY (`IdFaseGrupo`) REFERENCES `FaseGrupo`(`IdFaseGrupo`);

ALTER TABLE `Licitacao` ADD FOREIGN KEY (`IdFaseGrupo`) REFERENCES `FaseGrupo`(`IdFaseGrupo`);

ALTER TABLE `RecursoCaptado` ADD FOREIGN KEY (`IdFaseGrupo`) REFERENCES `FaseGrupo`(`IdFaseGrupo`);

ALTER TABLE `Recurso` ADD FOREIGN KEY (`IdFaseGrupo`) REFERENCES `FaseGrupo`(`IdFaseGrupo`);

ALTER TABLE `RelatorioExecucao` ADD FOREIGN KEY (`IdFaseGrupo`) REFERENCES `FaseGrupo`(`IdFaseGrupo`);

ALTER TABLE `Etapa` ADD FOREIGN KEY (`IdTipoEtapa`) REFERENCES `TipoEtapa`(`IdTipoEtapa`);

ALTER TABLE `Aditivo` ADD FOREIGN KEY (`IdRecursoCaptado`) REFERENCES `RecursoCaptado`(`IdRecursoCaptado`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdRecursoCaptado`) REFERENCES `RecursoCaptado`(`IdRecursoCaptado`);

ALTER TABLE `Desembolso` ADD FOREIGN KEY (`IdRecursoCaptado`) REFERENCES `RecursoCaptado`(`IdRecursoCaptado`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdRecursoCaptado`) REFERENCES `RecursoCaptado`(`IdRecursoCaptado`);

ALTER TABLE `ExecucaoFinanceira` ADD FOREIGN KEY (`IdFundamentoLegal`) REFERENCES `FundamentoLegal`(`IdFundamentoLegal`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdRecurso`) REFERENCES `Recurso`(`IdRecurso`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdRecurso`) REFERENCES `Recurso`(`IdRecurso`);

ALTER TABLE `ExecucaoFinanceira` ADD FOREIGN KEY (`IdTipoDocumento`) REFERENCES `TipoDocumento`(`IdTipoDocumento`);

ALTER TABLE `Empreendimento` ADD FOREIGN KEY (`IdProjeto`) REFERENCES `Projeto`(`IdProjeto`);

ALTER TABLE `RecursoPrevisto` ADD FOREIGN KEY (`IdRecursoOperacao`) REFERENCES `RecursoOperacao`(`IdRecursoOperacao`);

ALTER TABLE `TipoInstituicao_RecursoOperacao` ADD FOREIGN KEY (`IdRecursoOperacao`) REFERENCES `RecursoOperacao`(`IdRecursoOperacao`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdLicitacao`) REFERENCES `Licitacao`(`IdLicitacao`);

ALTER TABLE `ExecucaoFinanceira` ADD FOREIGN KEY (`IdLicitacao`) REFERENCES `Licitacao`(`IdLicitacao`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdLicitacao`) REFERENCES `Licitacao`(`IdLicitacao`);

ALTER TABLE `Empreendimento` ADD FOREIGN KEY (`IdTema`) REFERENCES `Tema`(`IdTema`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdEntidade`) REFERENCES `Entidade`(`IdEntidade`);

ALTER TABLE `Entidade_TipoArquivo` ADD FOREIGN KEY (`IdEntidade`) REFERENCES `Entidade`(`IdEntidade`);

ALTER TABLE `Grupo_Entidade` ADD FOREIGN KEY (`IdEntidade`) REFERENCES `Entidade`(`IdEntidade`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdEntidade`) REFERENCES `Entidade`(`IdEntidade`);

ALTER TABLE `Empreendimento` ADD FOREIGN KEY (`IdAndamento`) REFERENCES `Andamento`(`IdAndamento`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdEmpreendimento`) REFERENCES `Empreendimento`(`IdEmpreendimento`);

ALTER TABLE `Etapa` ADD FOREIGN KEY (`IdEmpreendimento`) REFERENCES `Empreendimento`(`IdEmpreendimento`);

ALTER TABLE `ExecucaoFinanceira` ADD FOREIGN KEY (`IdEmpreendimento`) REFERENCES `Empreendimento`(`IdEmpreendimento`);

ALTER TABLE `Licenca` ADD FOREIGN KEY (`IdEmpreendimento`) REFERENCES `Empreendimento`(`IdEmpreendimento`);

ALTER TABLE `Licitacao` ADD FOREIGN KEY (`IdEmpreendimento`) REFERENCES `Empreendimento`(`IdEmpreendimento`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdEmpreendimento`) REFERENCES `Empreendimento`(`IdEmpreendimento`);

ALTER TABLE `RecursoCaptado` ADD FOREIGN KEY (`IdEmpreendimento`) REFERENCES `Empreendimento`(`IdEmpreendimento`);

ALTER TABLE `RecursoPrevisto` ADD FOREIGN KEY (`IdEmpreendimento`) REFERENCES `Empreendimento`(`IdEmpreendimento`);

ALTER TABLE `Recurso` ADD FOREIGN KEY (`IdEmpreendimento`) REFERENCES `Empreendimento`(`IdEmpreendimento`);

ALTER TABLE `RelatorioExecucao` ADD FOREIGN KEY (`IdEmpreendimento`) REFERENCES `Empreendimento`(`IdEmpreendimento`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdEtapa`) REFERENCES `Etapa`(`IdEtapa`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdEtapa`) REFERENCES `Etapa`(`IdEtapa`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdRelatorioExecucao`) REFERENCES `RelatorioExecucao`(`IdRelatorioExecucao`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdRelatorioExecucao`) REFERENCES `RelatorioExecucao`(`IdRelatorioExecucao`);

ALTER TABLE `ExecucaoFinanceira` ADD FOREIGN KEY (`IdAndamentoFinanceiro`) REFERENCES `AndamentoFinanceiro`(`IdAndamentoFinanceiro`);

ALTER TABLE `Licitacao` ADD FOREIGN KEY (`IdAno`) REFERENCES `Ano`(`IdAno`);

ALTER TABLE `Licitacao` ADD FOREIGN KEY (`IdTipoLicitacao`) REFERENCES `TipoLicitacao`(`IdTipoLicitacao`);

ALTER TABLE `Entidade_TipoArquivo` ADD FOREIGN KEY (`IdTipoArquivo`) REFERENCES `TipoArquivo`(`IdTipoArquivo`);

ALTER TABLE `Alerta` ADD FOREIGN KEY (`IdInstituicao`) REFERENCES `Instituicao`(`IdInstituicao`);

ALTER TABLE `Empreendimento` ADD FOREIGN KEY (`IdInstituicao`) REFERENCES `Instituicao`(`IdInstituicao`);

ALTER TABLE `Licenca` ADD FOREIGN KEY (`IdInstituicao`) REFERENCES `Instituicao`(`IdInstituicao`);

ALTER TABLE `Log` ADD FOREIGN KEY (`IdInstituicao`) REFERENCES `Instituicao`(`IdInstituicao`);

ALTER TABLE `RecursoPrevisto` ADD FOREIGN KEY (`IdInstituicao`) REFERENCES `Instituicao`(`IdInstituicao`);

ALTER TABLE `Recurso` ADD FOREIGN KEY (`IdInstituicao`) REFERENCES `Instituicao`(`IdInstituicao`);

ALTER TABLE `Instituicao` ADD FOREIGN KEY (`IdTipoInstituicao`) REFERENCES `TipoInstituicao`(`IdTipoInstituicao`);

ALTER TABLE `TipoInstituicao_RecursoOperacao` ADD FOREIGN KEY (`IdTipoInstituicao`) REFERENCES `TipoInstituicao`(`IdTipoInstituicao`);

