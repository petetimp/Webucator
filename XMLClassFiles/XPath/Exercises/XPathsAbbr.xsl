<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" 
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:output method="xml" indent="yes"/>
	<xsl:template match="/">
		<XPathTests>
			<xsl:apply-templates />
		</XPathTests>
	</xsl:template>
	<xsl:template match="Head">
		<XPathTest>
			<!--OUTPUT: 
			Mr. Joshua Lockwood is from the United States-->
			 <xsl:value-of select="Recipient/Name/@Title"/>
       <xsl:text> </xsl:text> 
       <xsl:value-of select="Recipient/Name/FirstName"/>
       <xsl:text> </xsl:text>
       <xsl:value-of select="Recipient/Name/LastName"/> 
        is from the 
        <xsl:value-of select="Recipient/Address/Country"/>
		</XPathTest>
	</xsl:template>
	<xsl:template match="Body">
		<XPathTest>
			<!--OUTPUT:
			Bill Smith works at Webucator, Inc.
			His email is bsmith@webucator.com.
			If you have any questions, feel free to call me at 800-555-1000 x123.-->
			 <xsl:value-of select=".//FirstName"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select=".//LastName"/> works at 
            <xsl:value-of select=".//Company"/>
            His email is <xsl:value-of select="Para/Email"/>
            <xsl:text>
            </xsl:text>
            <xsl:value-of
                    select="Para[last()]/text()[1]"/>
            <xsl:value-of select="Para/Phone"/>.
		</XPathTest>
	</xsl:template>
	<xsl:template match="Foot">
		<XPathTest>
			<!--OUTPUT:
			VP of Operations: Smith, Bill -->
			  <xsl:value-of select=".//JobTitle"/>:
        <xsl:value-of select=".//LastName"/>, 
        <xsl:value-of select=".//FirstName"/>	
		</XPathTest>
	</xsl:template>
</xsl:stylesheet>
