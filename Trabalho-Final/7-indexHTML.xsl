<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="3.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="html" omit-xml-declaration="no" encoding="iso-8859-1" indent="yes" standalone="yes"/>
	<xsl:template match="/">
		<xsl:for-each select="Museu">
			<xsl:result-document href="src/index.html">
				<html>
					<head>
						<title>Museu da Migracao</title>
                        <!-- BOOTSTRAP e STYLESHEETs -->
                            <link href="https://getbootstrap.com/docs/4.0/dist/css/bootstrap.min.css" rel="stylesheet"/>
                            <link href="https://getbootstrap.com/docs/4.0/examples/carousel/carousel.css" rel="stylesheet"/>

						<style>
							body{
                                background-color: #f8f9fa!important;
                                padding-top:0px!important;
							}
							.nav-link {
								padding-top: .75rem;
								padding-bottom: .75rem;
								font-size: .875rem;
								color: #e0e0e0;
                            }
                            .main-text{
                                position: absolute;
                                top: 420px;
                                left: 150px;
                                width: 100%;
                                color: #FFF;
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
						<main role="main">

                            <div id="carrosel_imagens" class="carousel slide" data-ride="carousel" data-interval="2000">
                              <ol class="carousel-indicators">
                                <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
                                <li data-target="#myCarousel" data-slide-to="1"></li>
                                <li data-target="#myCarousel" data-slide-to="2"></li>
                                <li data-target="#myCarousel" data-slide-to="3"></li>
                                <li data-target="#myCarousel" data-slide-to="4"></li>
                                <li data-target="#myCarousel" data-slide-to="5"></li>
                                <li data-target="#myCarousel" data-slide-to="6"></li>
                                <li data-target="#myCarousel" data-slide-to="7"></li>
                                <li data-target="#myCarousel" data-slide-to="8"></li>
                              </ol>
                              <div class="carousel-inner">
                                <div class="carousel-item active">
                                  <img class="first-slide" src="./../src/imagens_museu/imagem_2.jpg" alt="Imagem 1"/>
                                    <div class="container">
                                        <div class="carousel-caption text-left">
                                            <h1>Museu da Emigração</h1>
                                        </div>
                                    </div>
                                </div>
                                <div class="carousel-item">
                                  <img class="second-slide" src="./../src/imagens_museu/imagem_1.jpg" alt="Imagem 2"/>
                                
                                </div>
                                <div class="carousel-item">
                                  <img class="third-slide" src="./../src/imagens_museu/imagem_3.jpg" alt="Imagem 3"/>
                                  
                                </div>
                                <div class="carousel-item">
                                    <img class="third-slide" src="./../src/imagens_museu/imagem_4.jpg" alt="Imagem 4"/>
                                    
                                  </div>
                                  <div class="carousel-item">
                                    <img class="third-slide" src="./../src/imagens_museu/imagem_5.jpg" alt="Imagem 5"/>
                                    
                                  </div>
                                  <div class="carousel-item">
                                    <img class="third-slide" src="./../src/imagens_museu/imagem_6.jpg" alt="Imagem 6"/>
                                    
                                  </div>
                                  <div class="carousel-item">
                                    <img class="third-slide" src="./../src/imagens_museu/imagem_7.jpg" alt="Imagem 7"/>
                                    
                                  </div>
                                  <div class="carousel-item">
                                    <img class="third-slide" src="./../src/imagens_museu/imagem_8.jpg" alt="Imagem 8"/>
                                    
                                  </div>
                                  <div class="carousel-item">
                                    <img class="third-slide" src="./../src/imagens_museu/imagem_9.jpg" alt="Imagem 9"/>
                                    
                                  </div>
                              </div>
                            </div>
                        


                            <!-- CONTEUDO INDEX -->
                            <div class="container marketing">
                      

                            <div class="row">
                                <div class="col-lg-4">
                                    <img class="rounded-circle" src="./../src/imagens_museu/emigrantes.png" alt="Emigrantes" width="140" height="140"/>
                                    <h2>Emigrantes</h2>
                                    <p>Informações sobre os emigrantes registrados</p>
                                    <p><a class="btn btn-secondary" href="./../src/emigrantes_alfabetica.html" role="button">Ver Detalhes</a></p>
                                </div><!-- /.col-lg-4 -->
                                <div class="col-lg-4">
                                    <img class="rounded-circle" src="./../src/imagens_museu/processos2.jpg" alt="Processos" width="140" height="140"/>
                                    <h2>Processos</h2>
                                    <p>Informações sobre os processos vinculados aos emigrantes</p>
                                    <p><a class="btn btn-secondary" href="./../src/processos.html" role="button">Ver Detalhes</a></p>
                                </div><!-- /.col-lg-4 -->
                                <div class="col-lg-4">
                                    <img class="rounded-circle" src="./../src/imagens_museu/mapa.jpg" alt="Localidades" width="140" height="140"/>
                                    <h2>Localidades</h2>
                                    <p>Informações sobre as localidades</p>
                                    <p><a class="btn btn-secondary" href="./../src/localidades.html" role="button">Ver Detalhes</a></p>
                                </div><!-- /.col-lg-4 -->
                            </div><!-- /.row -->                      
                            </div><!-- /.container -->
                      
                            </main>
                            <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
                            <script src="https://getbootstrap.com/docs/4.0/assets/js/vendor/popper.min.js"></script>
                            <script src="https://getbootstrap.com/docs/4.0/dist/js/bootstrap.min.js"></script>
					</body>
				</html>
			</xsl:result-document>
		</xsl:for-each>
	</xsl:template>
</xsl:stylesheet>
