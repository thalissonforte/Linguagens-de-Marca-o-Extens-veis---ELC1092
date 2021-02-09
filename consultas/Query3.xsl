<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:output method="xml" omit-xml-declaration="no" encoding="iso-8859-1" indent="yes"/>
	<xsl:template match="/">
		<root>
			<xsl:for-each-group select="//ProcessoAcomp" group-by="numCM">
			<xsl:if test="count(current-group())>2">
			<numCM>
				<xsl:value-of select="numCM"></xsl:value-of>
			</numCM>
			</xsl:if>
			</xsl:for-each-group>
		</root>
</xsl:template>
</xsl:stylesheet>
