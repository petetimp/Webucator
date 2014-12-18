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
			 <xsl:value-of select="child::Recipient/child::Name/attribute::Title"/>
       <xsl:text> </xsl:text> 
       <xsl:value-of select="child::Recipient/child::Name/child::FirstName"/>
       <xsl:text> </xsl:text>
       <xsl:value-of select="child::Recipient/child::Name/child::LastName"/> 
        is from the 
        <xsl:value-of select="child::Recipient/child::Address/child::Country"/>
		</XPathTest>
	</xsl:template>
	<xsl:template match="Body">
		<XPathTest>
			<!--OUTPUT:
			Bill Smith works at Webucator, Inc.
			His email is bsmith@webucator.com.
			If you have any questions, feel free to call me at 800-555-1000 x123.-->
			 <xsl:value-of select="descendant::FirstName"/>
            <xsl:text> </xsl:text>
            <xsl:value-of select="descendant::LastName"/> works at 
            <xsl:value-of select="descendant::Company"/>
            His email is <xsl:value-of select="child::Para/child::Email"/>
            <xsl:text>
            </xsl:text>
            <xsl:value-of
                    select="child::Para[position() = last()]/text()[position()=1]"/>
            <xsl:value-of select="child::Para/child::Phone"/>.
		</XPathTest>
	</xsl:template>
	<xsl:template match="Foot">
		<XPathTest>
			<!--OUTPUT:
			VP of Operations: Smith, Bill -->	 
             <xsl:value-of select="descendant::JobTitle"/>:
             <xsl:value-of select="descendant::LastName"/>, 
             <xsl:value-of select="descendant::FirstName"/>
		</XPathTest>
	</xsl:template>
</xsl:stylesheet>
