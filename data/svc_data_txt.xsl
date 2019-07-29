<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Textual</title>
        <link href="style/style.css" rel="stylesheet" type="text/css"/>
      </head>
      <body style="font-family: HelveticaNeueLTStd-Lt,sans-serif;">
        <h2><u>TEXTUAL REPRESENTATION</u></h2>
          <xsl:apply-templates/>  
      </body>
    </html>
  </xsl:template>

  <xsl:template match="Question">
     

  <p>
    <xsl:apply-templates select="DataItem"/>  
    <xsl:apply-templates select="XPath"/>
    <xsl:apply-templates select="Question"/>
    <xsl:apply-templates select="Response"/>
    <xsl:apply-templates select="ResponseType"/>
    <xsl:apply-templates select="MinimumValue"/>
    <xsl:apply-templates select="MaximumValue"/>
    <xsl:apply-templates select="EnumeratedValues"/>
    
  </p>


</xsl:template>

<xsl:template match="PolicyType">
  Policy Type: <span style="color:blue">
  <xsl:value-of select="."/></span>
  <br />
</xsl:template>
<xsl:template match="DataItem">
  Data-Item: <xsl:value-of select="."/>
  <br />
</xsl:template>
<xsl:template match="XPath">
  XPath: <xsl:value-of select="."/>
  <br />
</xsl:template>

<xsl:template match="Question/Question">
  Question: <xsl:value-of select="."/>
  <br />
</xsl:template>

<xsl:template match="Question/Response">
  Response: <xsl:value-of select="."/>
  <br />
  ResponseType: 
</xsl:template>





</xsl:stylesheet>