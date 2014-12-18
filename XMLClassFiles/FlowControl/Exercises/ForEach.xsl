<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
				xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
		<Names>
		<!--Use a for-each loop to output a Name element for each Name element in BusinessLetter.xml.
			The Name element should contain three child elements: Title, FName, and LName,
			the values of which will be taken from the source document (BusinessLetter.xml).
			See ForEachOutput.xml to see what the resulting output should look like.
		-->
		    <xsl:for-each select=".//Name">
		    <Title><xsl:value-of select="@Title" /></Title>
		    <FName><xsl:value-of select="FirstName" /></FName>
		    <LName><xsl:value-of select="LastName" /></LName>
		    </xsl:for-each>
		</Names>
	</xsl:template>
</xsl:stylesheet>
