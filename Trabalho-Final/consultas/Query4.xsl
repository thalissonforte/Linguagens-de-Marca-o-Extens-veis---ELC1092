<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
<xsl:output method="xml" omit-xml-declaration="no" encoding="iso-8859-1" indent="yes" standalone="yes"/>
	<xsl:template match="/">
	
		<Localidade>
		<xsl:for-each-group select="//Localidade" group-by="distrito">
			<xsl:sort select="distrito"/>
			<distrito>
				<xsl:attribute name="name" select="distrito"></xsl:attribute>
				<xsl:for-each-group select="//Localidade[distrito=current-grouping-key()]" group-by="concelho">
					<xsl:sort select="concelho"/>
					<concelho>
						<xsl:attribute name="name" select="concelho"></xsl:attribute>
						<xsl:for-each  select="//Localidade[concelho=current-grouping-key()]">
							<xsl:sort select="freguesia"/>
							<freguesia>
								<xsl:value-of select="freguesia"></xsl:value-of>
							</freguesia>
						</xsl:for-each>
					</concelho>
				</xsl:for-each-group>
				
			</distrito>
			</xsl:for-each-group>
		</Localidade>
	</xsl:template>
</xsl:stylesheet>
