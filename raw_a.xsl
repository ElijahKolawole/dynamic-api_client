<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Quote-Journey</title>
      </head>
      <body style="font-family: HelveticaNeueLTStd-Lt,sans-serif;">
        <form action="quoter.html" method="get" id="quote_form_1">
          <fieldset>
            <legend><h3>Dynamic Quote in seconds</h3></legend>
            <xsl:apply-templates/> 
            
            <br /> <br /><button type='submit' form='quote_form_1' value='Submit'>Submit Info</button>
            <!-- <button type="submit" value="Submit" onclick='printFormContents(this.form);return false;' id="quoteBtn">Get A Quote</button> -->
          </fieldset>
        </form>
      </body>
    </html>
  </xsl:template>
  <xsl:template match="Questions">
    <xsl:apply-templates select="Question"/>
    <xsl:apply-templates select="Response"/>
    <xsl:apply-templates select="Questions"/>
<!--  <p>
<xsl:apply-templates select="DataItem"/>  
<xsl:apply-templates select="XPath"/>


<xsl:apply-templates select="ResponseType"/>
<xsl:apply-templates select="MinimumValue"/>
<xsl:apply-templates select="MaximumValue"/>
<xsl:apply-templates select="EnumeratedValues"/>
</p> -->
</xsl:template>
<xsl:template match="Response">
 <!--  <h4>Question:  <span style="color:blue"> -->
 <xsl:if test="ResponseType='Text'">
        <xsl:value-of select="Description"/> <input name=<xsl:value-of select="Description"/>  type="text"/>
        <br />
      </xsl:if>
    
  </xsl:template>
  <xsl:template match="Responsue">
    Response: <xsl:value-of select="."/>
  </xsl:template>
  <xsl:template match="Description">
    Description: <xsl:value-of select="."/>
  </xsl:template>
 
</xsl:stylesheet>