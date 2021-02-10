<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" encoding="iso-8859-1" indent="yes"/>
	<xsl:template match="/">
		<root>
			<xsl:for-each select="//IdentificacaoEmigrante">
			<xsl:variable name="dt" select="translate(dtNasc, '-', '')"/>
			<xsl:if test="number($dt) &gt;= 19370101 and number($dt) &lt;= 19370630">
			<Emigrante>
				<xsl:value-of select="nome"></xsl:value-of>
			</Emigrante>
			</xsl:if>
			</xsl:for-each>
		</root>
</xsl:template>
</xsl:stylesheet>
