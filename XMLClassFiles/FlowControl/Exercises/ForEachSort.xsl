<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
		<Names>
		<xsl:for-each select="//Name">
		  <xsl:sort select="FirstName"/>
				<Name>
					<Title><xsl:value-of select="@Title"/></Title>
					<FName><xsl:value-of select="FirstName"/></FName>
					<LName><xsl:value-of select="LastName"/></LName>
				</Name>
		</xsl:for-each>
		</Names>
	</xsl:template>
</xsl:stylesheet>
