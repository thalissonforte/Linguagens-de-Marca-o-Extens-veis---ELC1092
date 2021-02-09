<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="html" omit-xml-declaration="no" encoding="iso-8859-1" indent="yes" standalone="yes"/>
	<xsl:template match="/">		
			<xsl:result-document href="src/emigrantes_alfabetica.html">
				<html>
					<head>
                        <title>Emigrantes</title>
                        
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
								<a class="nav-link" href="./../src/index.html">Museu da Emigração</a>
								<a class="nav-link active" href="./../src/emigrantes_alfabetica.html">Emigrantes</a>
								<a class="nav-link" href="./../src/processos.html">Processos</a>
								<a class="nav-link" href="./../src/localidades.html">Localidades</a>
							</nav>
						</div>
						
						<!-- CORPO -->
						<div class="container">
							<br/><h1>Emigrantes</h1>
							<p class="lead">Ordem alfabética de emigrantes</p>

                                <div class="my-3 p-3 bg-white rounded box-shadow">
                                    <div class="media text-muted pt-3">
                                        <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                            <div class="d-flex justify-content-between align-items-center w-100">
                                                <strong class="text-gray-dark">Nome - ID</strong>
                                            </div>
                                        </div>

                                        <xsl:for-each select="Museu/IdentificacaoEmigrante">
                                        <xsl:sort select="nome"/>
                                            <div class="media-body pb-3 mb-0 small lh-125 border-bottom border-gray">
                                                <span class="d-block">
                                                    <a href="./../src/emigrantes/Emigrante-{idEmigrante}.html">
                                                        <xsl:value-of select="nome"/> - <xsl:value-of select="idEmigrante"/>
                                                    </a>
                                                </span>
                                            </div>
                                        </xsl:for-each>
                                    </div>
                                </div>
						</div>
					</body>
				</html>
			</xsl:result-document>
		
	</xsl:template>
</xsl:stylesheet>
