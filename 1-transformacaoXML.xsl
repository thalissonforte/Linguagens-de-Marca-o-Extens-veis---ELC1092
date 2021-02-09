<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" omit-xml-declaration="no" encoding="iso-8859-1" indent="yes"/>
	<xsl:template match="/">
		<xsl:result-document href="MuseuEmigracaoCorrecao.xml">
			<Museu>
				<xsl:for-each select="//table">
					<xsl:if test="@name = 'Acompanhante'">
						<Acompanhante>
							<idAcomp>
								<xsl:value-of select="column[@name = 'idAcomp']"/>
							</idAcomp>
							<nome>
								<xsl:value-of select="column[@name = 'nome']"/>
							</nome>
							<idAcompAux>
								<xsl:value-of select="column[@name = 'idAcompAux']"/>
							</idAcompAux>
							<dtNasc>
								<xsl:value-of select="column[@name = 'dtNasc']"/>
							</dtNasc>
							<parentesco>
								<xsl:value-of select="column[@name = 'parentesco']"/>
							</parentesco>
							<habilitacoes>
								<xsl:value-of select="column[@name = 'habilitacoes']"/>
							</habilitacoes>
							<xsl:value-of select="nome"/>
						</Acompanhante>
					</xsl:if>
					<xsl:if test="@name = 'anexo'">
						<anexo>
							<idAnexo>
								<xsl:value-of select="column[@name = 'idAnexo']"/>
							</idAnexo>
							<descricao>
								<xsl:value-of select="column[@name = 'descricao']"/>
							</descricao>
							<xsl:value-of select="nome"/>
						</anexo>
					</xsl:if>
					<xsl:if test="@name = 'Chamante'">
						<Chamante>
							<idChamante>
								<xsl:value-of select="column[@name = 'idChamante']"/>
							</idChamante>
							<nome>
								<xsl:value-of select="column[@name = 'nome']"/>
							</nome>
							<residencia>
								<xsl:value-of select="column[@name = 'residencia']"/>
							</residencia>
							<tempoEstrang>
								<xsl:value-of select="column[@name = 'tempoEstrang']"/>
							</tempoEstrang>
							<passap>
								<xsl:value-of select="column[@name = 'passap']"/>
							</passap>
							<xsl:value-of select="nome"/>
						</Chamante>
					</xsl:if>
					<xsl:if test="@name = 'Contratante'">
						<Contratante>
							<idContratante>
								<xsl:value-of select="column[@name = 'idContratante']"/>
							</idContratante>
							<nome>
								<xsl:value-of select="column[@name = 'nome']"/>
							</nome>
							<residencia>
								<xsl:value-of select="column[@name = 'residencia']"/>
							</residencia>
							<conhecimento>
								<xsl:value-of select="column[@name = 'conhecimento']"/>
							</conhecimento>
							<xsl:value-of select="nome"/>
						</Contratante>
					</xsl:if>
					<xsl:if test="@name = 'DeslAnterior'">
						<DeslAnterior>
							<idDeslAnterior>
								<xsl:value-of select="column[@name = 'idDeslAnterior']"/>
							</idDeslAnterior>
							<viajaPrimVez>
								<xsl:value-of select="column[@name = 'viajaPrimVez']"/>
							</viajaPrimVez>
							<dtRegresso>
								<xsl:value-of select="column[@name = 'dtRegresso']"/>
							</dtRegresso>
							<passapAnt>
								<xsl:value-of select="column[@name = 'passapAnt']"/>
							</passapAnt>
							<entEmissora>
								<xsl:value-of select="column[@name = 'entEmissora']"/>
							</entEmissora>
							<repatriado>
								<xsl:value-of select="column[@name = 'repatriado']"/>
							</repatriado>
							<motivo>
								<xsl:value-of select="column[@name = 'motivo']"/>
							</motivo>
							<pedidoAnt>
								<xsl:value-of select="column[@name = 'pedidoAnt']"/>
							</pedidoAnt>
							<numCM>
								<xsl:value-of select="column[@name = 'numCM']"/>
							</numCM>
							<xsl:value-of select="nome"/>
						</DeslAnterior>
					</xsl:if>
					<xsl:if test="@name = 'Filiacao'">
						<Filiacao>
							<idFiliacao>
								<xsl:value-of select="column[@name = 'idFiliacao']"/>
							</idFiliacao>
							<idPai>
								<xsl:value-of select="column[@name = 'idPai']"/>
							</idPai>
							<idMae>
								<xsl:value-of select="column[@name = 'idMae']"/>
							</idMae>
							<nomePai>
								<xsl:value-of select="column[@name = 'nomePai']"/>
							</nomePai>
							<nomeMae>
								<xsl:value-of select="column[@name = 'nomeMae']"/>
							</nomeMae>
							<xsl:value-of select="nome"/>
						</Filiacao>
					</xsl:if>
					<xsl:if test="@name = 'IdentificacaoEmigrante'">
						<IdentificacaoEmigrante>
							<idEmigrante>
								<xsl:value-of select="column[@name = 'idEmigrante']"/>
							</idEmigrante>
							<nome>
								<xsl:value-of select="column[@name = 'nome']"/>
							</nome>
							<dtNasc>
								<xsl:value-of select="column[@name = 'dtNasc']"/>
							</dtNasc>
							<idConj>
								<xsl:value-of select="column[@name = 'idConj']"/>
							</idConj>
							<nomeConj>
								<xsl:value-of select="column[@name = 'nomeConj']"/>
							</nomeConj>
							<idFiliacao>
								<xsl:value-of select="column[@name = 'idFiliacao']"/>
							</idFiliacao>
							<idNaturalidade>
								<xsl:value-of select="column[@name = 'idNaturalidade']"/>
							</idNaturalidade>
							<xsl:value-of select="nome"/>
						</IdentificacaoEmigrante>
					</xsl:if>
					<xsl:if test="@name = 'Intermediario'">
						<Intermediario>
							<idIntermediario>
								<xsl:value-of select="column[@name = 'idIntermediario']"/>
							</idIntermediario>
							<nome>
								<xsl:value-of select="column[@name = 'nome']"/>
							</nome>
							<residencia>
								<xsl:value-of select="column[@name = 'residencia']"/>
							</residencia>
							<atividade>
								<xsl:value-of select="column[@name = 'atividade']"/>
							</atividade>
							<nomePai>
								<xsl:value-of select="column[@name = 'nomePai']"/>
							</nomePai>
							<nomeMae>
								<xsl:value-of select="column[@name = 'nomeMae']"/>
							</nomeMae>
							<parentesco>
								<xsl:value-of select="column[@name = 'parentesco']"/>
							</parentesco>
							<passap>
								<xsl:value-of select="column[@name = 'passap']"/>
							</passap>
							<pagamento>
								<xsl:value-of select="column[@name = 'pagamento']"/>
							</pagamento>
							<xsl:value-of select="nome"/>
						</Intermediario>
					</xsl:if>
					<xsl:if test="@name = 'Localidade'">
						<Localidade>
							<idLocalidade>
								<xsl:value-of select="column[@name = 'idLocalidade']"/>
							</idLocalidade>
							<freguesia>
								<xsl:value-of select="column[@name = 'freguesia']"/>
							</freguesia>
							<concelho>
								<xsl:value-of select="column[@name = 'concelho']"/>
							</concelho>
							<distrito>
								<xsl:value-of select="column[@name = 'distrito']"/>
							</distrito>
							<xsl:value-of select="nome"/>
						</Localidade>
					</xsl:if>
					<xsl:if test="@name = 'Lugar'">
						<Lugar>
							<idLugar>
								<xsl:value-of select="column[@name = 'idLugar']"/>
							</idLugar>
							<lugar>
								<xsl:value-of select="column[@name = 'lugar']"/>
							</lugar>
							<idLocalidade>
								<xsl:value-of select="column[@name = 'idLocalidade']"/>
							</idLocalidade>
							<xsl:value-of select="nome"/>
						</Lugar>
					</xsl:if>
					<xsl:if test="@name = 'Nota'">
						<Nota>
							<idNota>
								<xsl:value-of select="column[@name = 'idNota']"/>
							</idNota>
							<descricao>
								<xsl:value-of select="column[@name = 'descricao']"/>
							</descricao>
							<numCM>
								<xsl:value-of select="column[@name = 'numCM']"/>
							</numCM>
							<xsl:value-of select="nome"/>
						</Nota>
					</xsl:if>
					<xsl:if test="@name = 'PessoasFamFicamPais'">
						<PessoasFamFicamPais>
							<idPessoasFamFicamPais>
								<xsl:value-of select="column[@name = 'idPessoasFamFicamPais']"/>
							</idPessoasFamFicamPais>
							<nome>
								<xsl:value-of select="column[@name = 'nome']"/>
							</nome>
							<idDependente>
								<xsl:value-of select="column[@name = 'idDependente']"/>
							</idDependente>
							<idade>
								<xsl:value-of select="column[@name = 'idade']"/>
							</idade>
							<parentesco>
								<xsl:value-of select="column[@name = 'parentesco']"/>
							</parentesco>
							<aCargoEmigrante>
								<xsl:value-of select="column[@name = 'aCargoEmigrante']"/>
							</aCargoEmigrante>
							<idResidencia>
								<xsl:value-of select="column[@name = 'idResidencia']"/>
							</idResidencia>
							<xsl:value-of select="nome"/>
						</PessoasFamFicamPais>
					</xsl:if>
					<xsl:if test="@name = 'Processo'">
						<Processo>
							<numCM>
								<xsl:value-of select="column[@name = 'numCM']"/>
							</numCM>
							<numCMu>
								<xsl:value-of select="column[@name = 'numCMu']"/>
							</numCMu>
							<numJE>
								<xsl:value-of select="column[@name = 'numJE']"/>
							</numJE>
							<ano>
								<xsl:value-of select="column[@name = 'ano']"/>
							</ano>
							<idade>
								<xsl:value-of select="column[@name = 'idade']"/>
							</idade>
							<estCivil>
								<xsl:value-of select="column[@name = 'estCivil']"/>
							</estCivil>
							<paisDestino>
								<xsl:value-of select="column[@name = 'paisDestino']"/>
							</paisDestino>
							<localidadeDestino>
								<xsl:value-of select="column[@name = 'localidadeDestino']"/>
							</localidadeDestino>
							<dtExp>
								<xsl:value-of select="column[@name = 'dtExp']"/>
							</dtExp>
							<oficioExp>
								<xsl:value-of select="column[@name = 'oficioExp']"/>
							</oficioExp>
							<passapExp>
								<xsl:value-of select="column[@name = 'passapExp']"/>
							</passapExp>
							<tipoTranspEmb>
								<xsl:value-of select="column[@name = 'tipoTranspEmb']"/>
							</tipoTranspEmb>
							<desigTranspEmb>
								<xsl:value-of select="column[@name = 'desigTranspEmb']"/>
							</desigTranspEmb>
							<ciaEmb>
								<xsl:value-of select="column[@name = 'ciaEmb']"/>
							</ciaEmb>
							<dtEmb>
								<xsl:value-of select="column[@name = 'dtEmb']"/>
							</dtEmb>
							<passPagaEmb>
								<xsl:value-of select="column[@name = 'passPagaEmb']"/>
							</passPagaEmb>
							<localEmb>
								<xsl:value-of select="column[@name = 'localEmb']"/>
							</localEmb>
							<portoDesemb>
								<xsl:value-of select="column[@name = 'portoDesemb']"/>
							</portoDesemb>
							<irComEmb>
								<xsl:value-of select="column[@name = 'irComEmb']"/>
							</irComEmb>
							<profissaoHab>
								<xsl:value-of select="column[@name = 'profissaoHab']"/>
							</profissaoHab>
							<habLiterariasHab>
								<xsl:value-of select="column[@name = 'habLiterariasHab']"/>
							</habLiterariasHab>
							<localTrabHab>
								<xsl:value-of select="column[@name = 'localTrabHab']"/>
							</localTrabHab>
							<remCondEco>
								<xsl:value-of select="column[@name = 'remCondEco']"/>
							</remCondEco>
							<numDiasTrabCondEco>
								<xsl:value-of select="column[@name = 'numDiasTrabCondEco']"/>
							</numDiasTrabCondEco>
							<motivoEmigCondEco>
								<xsl:value-of select="column[@name = 'motivoEmigCondEco']"/>
							</motivoEmigCondEco>
							<despDeslCondEco>
								<xsl:value-of select="column[@name = 'despDeslCondEco']"/>
							</despDeslCondEco>
							<julgadoAntPen>
								<xsl:value-of select="column[@name = 'julgadoAntPen']"/>
							</julgadoAntPen>
							<procPendAntPen>
								<xsl:value-of select="column[@name = 'procPendAntPen']"/>
							</procPendAntPen>
							<procPendFamAntPen>
								<xsl:value-of select="column[@name = 'procPendFamAntPen']"/>
							</procPendFamAntPen>
							<nomeAuxPaisDestino>
								<xsl:value-of select="column[@name = 'nomeAuxPaisDestino']"/>
							</nomeAuxPaisDestino>
							<parentescoAuxPaisDestino>
								<xsl:value-of select="column[@name = 'parentescoAuxPaisDestino']"/>
							</parentescoAuxPaisDestino>
							<residenciaAuxPaisDestino>
								<xsl:value-of select="column[@name = 'residenciaAuxPaisDestino']"/>
							</residenciaAuxPaisDestino>
							<profissaoAuxPaisDestino>
								<xsl:value-of select="column[@name = 'profissaoAuxPaisDestino']"/>
							</profissaoAuxPaisDestino>
							<auxPrestadosAuxPaisDestino>
								<xsl:value-of select="column[@name = 'auxPrestadosAuxPaisDestino']"/>
							</auxPrestadosAuxPaisDestino>
							<obtenContratoTrab>
								<xsl:value-of select="column[@name = 'obtenContratoTrab']"/>
							</obtenContratoTrab>
							<profissaoContratoTrab>
								<xsl:value-of select="column[@name = 'profissaoContratoTrab']"/>
							</profissaoContratoTrab>
							<salarioContratoTrab>
								<xsl:value-of select="column[@name = 'salarioContratoTrab']"/>
							</salarioContratoTrab>
							<jaTrabalhouMulherMenor>
								<xsl:value-of select="column[@name = 'jaTrabalhouMulherMenor']"/>
							</jaTrabalhouMulherMenor>
							<familiaresMulherMenor>
								<xsl:value-of select="column[@name = 'familiaresMulherMenor']"/>
							</familiaresMulherMenor>
							<qtTempoMulherMenor>
								<xsl:value-of select="column[@name = 'qtTempoMulherMenor']"/>
							</qtTempoMulherMenor>
							<ocupacaoMulherMenor>
								<xsl:value-of select="column[@name = 'ocupacaoMulherMenor']"/>
							</ocupacaoMulherMenor>
							<temConhecimentoDeclMulher>
								<xsl:value-of select="column[@name = 'temConhecimentoDeclMulher']"/>
							</temConhecimentoDeclMulher>
							<consideraDeclMulher>
								<xsl:value-of select="column[@name = 'consideraDeclMulher']"/>
							</consideraDeclMulher>
							<parentescoComChamante>
								<xsl:value-of select="column[@name = 'parentescoComChamante']"/>
							</parentescoComChamante>
							<idEmigrante>
								<xsl:value-of select="column[@name = 'idEmigrante']"/>
							</idEmigrante>
							<idChamante>
								<xsl:value-of select="column[@name = 'idChamante']"/>
							</idChamante>
							<idResidencia>
								<xsl:value-of select="column[@name = 'idResidencia']"/>
							</idResidencia>
							<idLugar>
								<xsl:value-of select="column[@name = 'idLugar']"/>
							</idLugar>
							<idIntermediario>
								<xsl:value-of select="column[@name = 'idIntermediario']"/>
							</idIntermediario>
							<idContratante>
								<xsl:value-of select="column[@name = 'idContratante']"/>
							</idContratante>
							<xsl:value-of select="nome"/>
						</Processo>
					</xsl:if>
					<xsl:if test="@name = 'ProcessoAcomp'">
						<ProcessoAcomp>
							<numCM>
								<xsl:value-of select="column[@name = 'numCM']"/>
							</numCM>
							<idAcomp>
								<xsl:value-of select="column[@name = 'idAcomp']"/>
							</idAcomp>
							<idProcessoAcomp>
								<xsl:value-of select="column[@name = 'idProcessoAcomp']"/>
							</idProcessoAcomp>
							<xsl:value-of select="nome"/>
						</ProcessoAcomp>
					</xsl:if>
					<xsl:if test="@name = 'ProcessoAnexo'">
						<ProcessoAnexo>
							<idAnexo>
								<xsl:value-of select="column[@name = 'idAnexo']"/>
							</idAnexo>
							<numCM>
								<xsl:value-of select="column[@name = 'numCM']"/>
							</numCM>
							<idProcessoAnexo>
								<xsl:value-of select="column[@name = 'idProcessoAnexo']"/>
							</idProcessoAnexo>
							<xsl:value-of select="nome"/>
						</ProcessoAnexo>
					</xsl:if>
					<xsl:if test="@name = 'ProcessoPessoasFam'">
						<ProcessoPessoasFam>
							<idPessoasFamFicamPais>
								<xsl:value-of select="column[@name = 'idPessoasFamFicamPais']"/>
							</idPessoasFamFicamPais>
							<numCM>
								<xsl:value-of select="column[@name = 'numCM']"/>
							</numCM>
							<idProcessoPessoasFam>
								<xsl:value-of select="column[@name = 'idProcessoPessoasFam']"/>
							</idProcessoPessoasFam>
							<xsl:value-of select="nome"/>
						</ProcessoPessoasFam>
					</xsl:if>
				</xsl:for-each>
			</Museu>
		</xsl:result-document>
	</xsl:template>
</xsl:stylesheet>
