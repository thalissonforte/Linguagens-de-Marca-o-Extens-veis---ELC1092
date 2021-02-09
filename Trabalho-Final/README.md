# Museu da Emigração
<div align="right">Linguagens de Marcação Extensíveis - ELC1092</div>
<br>

## Base de Dados

Antes de iniciar os procedimentos de transformação, certifique-se de que possui o arquivo `MuseuEmigracaoDB.xml`, que serve como a base de dados para todo o processo.

## Arquivos necessários

* Transformação para XML: 
    * `transformacaoXML.xsl`
* Transformações para HTML:
    * `indexHTML.xsl` 
    * `emigranteHTML.xsl`
    * `processoHTML.xsl`
    * `localidadesHTML.xsl`
    * `processosGeraisHTML.xsl`
    * `emigranteAlfabeticoHTML.xsl`

* Imagens: 
    * Dentro do diretório `/src/imagens_museu`

```
  Todos os arquivos devem estar dentro do diretório
    > trabalhoFinal
  
  trabalhoFinal
  ├── MuseuEmigracaoDB.xml
  ├── transformacaoXML.xsl
  ├── indexHTML.xsl
  ├── emigranteHTML.xsl
  ├── processoHTML.xsl
  ├── localidadesHTML.xsl
  ├── processosGeraisHTML.xsl
  ├── emigranteAlfabeticoHTML.xsl
  └── src
      └── imagens_museu
 
```

## Utilização

Em posse de todos os arquivos inicaremos os processos de transformações

### Passo 1:
Sobre a base de dados `MuseuEmigracaoDB.xml`, executar o arquivo `transformacaoXML.xsl`. <br>Dessa forma, será gerado o arquivo `MuseuEmigracaoCorrecao.xml`, que **servirá como base para todas as próximas transformações**.

### Passo 2:
Agora, sobre o novo XML gerado `MuseuEmigracaoCorrecao.xml`, executar em ordem os seguintes arquivos:
* `processoHTML.xsl`
    * A partir da execução desse, será criada a pasta `src/processos`, contendo todos os processos registrados.

* `emigranteHTML.xsl`
    * A partir dessa execução, será criada a pasta `src/emigrantes`, contendo todos os emigrantes registrados.

* `localidadesHTML.xsl`
    * A partir dessa execução, será criado o arquivo `src/localidades.html`, contendo todas as localidades em **ordem alfabética**.

* `emigranteAlfabeticoHTML.xsl`
    * A partir dessa execução, será criado o arquivo `src/emigrantes_alfabetica.html`, contendo todos os emigrantes em **ordem alfabética**.

* `processosGeraisHTML.xsl`
    * A partir dessa execução, será criado o arquivo `src/processos.html`, contendo todos os processos registrados, **ordenados por ID**.

* `indexHTML.xsl`
    * A partir dessa execução, será criado o arquivo `src/index.html` que serve de base para a navegação em todo o website.

### Passo 3:
Após realizados os passos anteriores, basta abrir o arquivo `src/index.html` no navegador de sua preferência para que seja visualizado a página inicial e os demais recursos trazidos pelo processamento dos dados.

## Sobre


Trabalho desenvolvido por **[Thalisson Forte](http://github.com/thalissonforte)** e **[Luiz Felipe Lersch](http://github.com/lflersch)**.

