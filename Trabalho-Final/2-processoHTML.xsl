<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="html" omit-xml-declaration="no" encoding="iso-8859-1" indent="yes" standalone="yes"/>

	<xsl:template match="/">
		<xsl:for-each select="Museu/Processo">
			<xsl:result-document href="src/processos/Processo-{numCM}.html">
				<html>
					
					<head>
						<title>Processo <xsl:value-of select="numCM"></xsl:value-of></title>

						<!-- BOOTSTRAP -->
						<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-giJF6kkoqNQ00vy+HMDP7azOuL0xtbfIcaT9wjKHr8RbDVddVHyTfAAsrekwKmP1" crossorigin="anonymous"/>
						<style>
							body{
								background-color: #f8f9fa!important;
							}
							.nav-link {
								padding-top: .75rem;
								padding-bottom: .75rem;
								font-size: .875rem;
								color: #e0e0e0;
							}
						</style>
					</head>
					<body>
                        
						<!-- VARIAVEL DO PATH -->
						<xsl:variable name="caminho_atual" select="static-base-uri()"/>

						<!-- NAV BAR -->
						<div class="nav-scroller bg-dark box-shadow">
							<nav class="nav nav-underline">
								<a class="nav-link" href="./../../src/index.html">Museu da Emigração</a>
								<a class="nav-link" href="./../../src/emigrantes_alfabetica.html">Emigrantes</a>
                                <a class="nav-link active" href="./../../src/processos.html">Processos</a>
                                <a class="nav-link" href="./../../src/localidades.html">Localidades</a>
							</nav>
						</div>
                        
                        <!-- VARIAVEIS -->
                        <xsl:variable name="id_processo" select="numCM"/>
                        <xsl:variable name="id_residencia" select="idResidencia"/>
                        <xsl:variable name="id_emigrante" select="idEmigrante"/>
                        

						<!-- CORPO -->
						<div class="container">
							<br/><h1>Processo </h1>
							<p class="lead">Dados sobre o processo <xsl:value-of select="numCM"/></p>
                            
                            <div class="my-3 p-3 bg-white rounded box-shadow">
								<div class="media text-muted pt-3">
									<div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
										<div class="d-flex justify-content-between align-items-center w-100">
											<strong class="text-gray-dark">Nome</strong>
										</div>
										<span class="d-block"><xsl:value-of select="../IdentificacaoEmigrante[idEmigrante=$id_emigrante]/nome"></xsl:value-of></span>
									</div>
                                </div>
                                
                                <xsl:if test="string-length(idade)>=1 and idade != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Idade</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="idade"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if> 
                                
                                <xsl:if test="string-length(estCivil)>=1 and estCivil != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Estado Civil</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="estCivil"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>
                                    
                                
                                <div class="string-length(media)>=1 text-muted pt-3">
                                    <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                        <div class="d-flex justify-content-between align-items-center w-100">
                                            <strong class="text-gray-dark">Local de destino</strong>
                                        </div>
                                        <span class="d-block">
                                            <xsl:if test="localidadeDestino != 'NULL'"><xsl:value-of select="localidadeDestino"/> - </xsl:if><xsl:value-of select="paisDestino"/>
                                        </span>
                                    </div>
                                </div>


                                <xsl:if test="string-length(dtExp)>=1 and dtExp != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Data expedição</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="dtExp"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>
                                
                                <xsl:if test="string-length(tipoTranspEmb)>=1 and tipoTranspEmb != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Tipo de transporte</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="tipoTranspEmb"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>
                                
                                <xsl:if test="string-length(ciaEmb)>=1 and ciaEmb != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Companhia</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="ciaEmb"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(dtExp)>=1 and dtExp != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Data expedição</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="dtExp"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(localEmb)>=1 and localEmb != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Local embarque</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="localEmb"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(portoDesemb)>=1 and portoDesemb != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Porto desembarque</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="portoDesemb"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(profissaoHab)>=1 and profissaoHab != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Profissão</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="profissaoHab"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(habLiterariasHab)>=1 and habLiterariasHab != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Habilidades literárias</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="habLiterariasHab"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(localTrabHab)>=1 and localTrabHab != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Local de trabalho</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="localTrabHab"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(motivoEmigCondEco)>=1 and motivoEmigCondEco != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Motivo</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="motivoEmigCondEco"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(nomeAuxPaisDestino)>=1 and nomeAuxPaisDestino != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Responsável no destino</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="nomeAuxPaisDestino"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(parentescoAuxPaisDestino)>=1 and parentescoAuxPaisDestino != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Parentesco do destino</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="parentescoAuxPaisDestino"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(residenciaAuxPaisDestino)>=1 and residenciaAuxPaisDestino != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Endereço do destino</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="residenciaAuxPaisDestino"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(profissaoAuxPaisDestino)>=1 and profissaoAuxPaisDestino != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Profissão do destino</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="profissaoAuxPaisDestino"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="string-length(parentescoComChamante)>=1 and parentescoComChamante != 'NULL'">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Parentesco com o destino</strong>
                                            </div>
                                            <span class="d-block">
                                                <xsl:value-of select="parentescoComChamante"/>
                                            </span>
                                        </div>
                                    </div>
                                </xsl:if>

                                <xsl:if test="../ProcessoAcomp[numCM=$id_processo]">
									<div class="media text-muted pt-3">
										<div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
											<div class="d-flex justify-content-between align-items-center w-100">
												<strong class="text-gray-dark">Acompanhantes</strong>
											</div>
                                            <xsl:for-each select="../ProcessoAcomp[numCM=$id_processo]">
                                                <xsl:variable name="id_acompanhante" select="idAcomp"/>
                                                <xsl:for-each select="../Acompanhante[idAcomp=$id_acompanhante]">
                                                    <span class="d-block"><xsl:value-of select="nome"/> (<xsl:value-of select="parentesco"/>)</span>
                                                </xsl:for-each>
											</xsl:for-each>
										</div>
									</div>
                                </xsl:if>

                                <xsl:if test="../ProcessoAnexo[numCM=$id_processo]">
									<div class="media text-muted pt-3">
										<div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
											<div class="d-flex justify-content-between align-items-center w-100">
												<strong class="text-gray-dark">Anexos</strong>
											</div>
											<xsl:for-each select="../ProcessoAnexo[numCM=$id_processo]">
												<span class="d-block">Anexo <xsl:value-of select="idAnexo"></xsl:value-of></span>
											</xsl:for-each>
										</div>
									</div>
                                </xsl:if>
                                
                                <xsl:if test="../PessoasFamFicamPais[idResidencia=$id_residencia]">
									<div class="media text-muted pt-3">
										<div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
											<div class="d-flex justify-content-between align-items-center w-100">
												<strong class="text-gray-dark">Parentes que ficaram</strong>
											</div>
											<xsl:for-each select="../PessoasFamFicamPais[idResidencia=$id_residencia]">
												<span class="d-block"><xsl:value-of select="nome"/> [<xsl:value-of select="idade"/> anos]: <xsl:value-of select="parentesco"/></span>
											</xsl:for-each>
										</div>
									</div>
                                </xsl:if>

                            </div>
							<br/><br/>
						</div>
					</body>
				</html>
			</xsl:result-document>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
