<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="html" omit-xml-declaration="no" encoding="iso-8859-1" indent="yes" standalone="yes"/>
	<xsl:template match="/">
		<xsl:for-each select="Museu/IdentificacaoEmigrante">
			<xsl:result-document href="src/emigrantes/Emigrante-{idEmigrante}.html">
				<html>
					<head>
						<title>Emigrante <xsl:value-of select="nome"></xsl:value-of></title>
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
								<a class="nav-link active" href="./../../src/emigrantes_alfabetica.html">Emigrantes</a>
								<a class="nav-link" href="./../../src/processos.html">Processos</a>
								<a class="nav-link" href="./../../src/localidades.html">Localidades</a>
							</nav>
						</div>
						
						<!-- CORPO -->
						<div class="container">
							<br/><h1>Emigrante</h1>
							<p class="lead">Dados sobre o emigrante</p>

							<!-- VARIAVEIS -->
							<xsl:variable name="nome_conjuge" select="nomeConj"/>
							<xsl:variable name="id_filiacao" select="idFiliacao"/>
							<xsl:variable name="id_naturalidade" select="idNaturalidade"/>
							<xsl:variable name="id_emigrante" select="idEmigrante"/>
							

							<div class="my-3 p-3 bg-white rounded box-shadow">
								<div class="media text-muted pt-3">
									<div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
										<div class="d-flex justify-content-between align-items-center w-100">
											<strong class="text-gray-dark">Nome</strong>
										</div>
										<span class="d-block"><xsl:value-of select="nome"></xsl:value-of></span>
									</div>
								</div>

								<div class="media text-muted pt-3">
									<div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
										<div class="d-flex justify-content-between align-items-center w-100">
											<strong class="text-gray-dark">Data de Nascimento</strong>
										</div>
										<span class="d-block"><xsl:value-of select="dtNasc"></xsl:value-of><br/></span>
									</div>
								</div>
								
								<xsl:if test="$nome_conjuge != 'NULL'">
									<div class="media text-muted pt-3">
										<div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
											<div class="d-flex justify-content-between align-items-center w-100">
												<strong class="text-gray-dark">Conjuge</strong>
											</div>
											<span class="d-block"><xsl:value-of select="$nome_conjuge"></xsl:value-of></span>
										</div>
									</div>
								</xsl:if>

								<xsl:if test="$id_filiacao != 'NULL'">
									<div class="media text-muted pt-3">
										<div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
											<div class="d-flex justify-content-between align-items-center w-100">
												<strong class="text-gray-dark">Filiação</strong>
											</div>
											<xsl:for-each select="../Filiacao[idFiliacao=$id_filiacao]">
												<span class="d-block"><xsl:value-of select="nomePai"></xsl:value-of></span>
												<span class="d-block"><xsl:value-of select="nomeMae"></xsl:value-of></span>
											</xsl:for-each>
										</div>
									</div>
								</xsl:if>

								<xsl:if test="$id_naturalidade != 'NULL'">
									<div class="media text-muted pt-3">
										<div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
											<div class="d-flex justify-content-between align-items-center w-100">
												<strong class="text-gray-dark">Naturalidade</strong>
											</div>
											<xsl:for-each select="../Localidade[idLocalidade=$id_naturalidade]">
												<span class="d-block"><small>Freguesia: </small> <xsl:value-of select="freguesia"></xsl:value-of></span>
												<span class="d-block"><small>Concelho: </small> <xsl:value-of select="concelho"></xsl:value-of></span>
												<span class="d-block"><small>Distrito: </small> <xsl:value-of select="distrito"></xsl:value-of></span>
											</xsl:for-each>
										</div>
									</div>
								</xsl:if>
								
								<xsl:if test="../Processo[idEmigrante=$id_emigrante]">
									<div class="media text-muted pt-3">
										<div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
											<div class="d-flex justify-content-between align-items-center w-100">
												<strong class="text-gray-dark">Processos</strong>
											</div>
											<xsl:for-each select="../Processo[idEmigrante=$id_emigrante]">
												<xsl:variable name="path_atual" select="static-base-uri()"/>
												<span class="d-block">
													<a href="{$path_atual}/../src/processos/{concat('Processo-',numCM,'.html')}">
														Processo <xsl:value-of select="numCM"></xsl:value-of><br/>
													</a>
												</span>
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
