<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">


<xsl:template match="/">
   <html>
      <head>
        <title>Table</title>
          <link href="style/style.css" rel="stylesheet" type="text/css"/>
        </head>
  <body style="font-family: HelveticaNeueLTStd-Lt,sans-serif;">
  <h2><u>TABLE REPRESENTATION</u></h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>DataItem</th>
      <th>Xpath</th>
      <th>Question</th>
      <th>Response</th>
    </tr>
      <xsl:for-each select="InsuranceSvcRs/Questions/Question">
    <tr>
      
      <td><xsl:value-of select="DataItem"/></td>
      <td><xsl:value-of select="XPath"/></td>
      <td><xsl:value-of select="Question"/></td>
      <td><xsl:value-of select="Response"/></td>
     
      
      
    </tr>
    </xsl:for-each>
  </table>

  </body>
  </html>
</xsl:template>

</xsl:stylesheet>