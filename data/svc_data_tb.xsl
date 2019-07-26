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
          <tr class="t_head">
            <th>Question</th>
            <th>Description</th>
            <th colspan="5">Response</th>
          </tr>
          <tr>
            <td colspan="2"></td>
            <th>ResponseType</th>
            <th>Responsesubtype</th>
            <th>minimumvalue</th>
            <th>maximumvalue</th>
            <th>datatype</th>
          </tr>
          <xsl:for-each select="QuestionList/Questions"> 
            <tr>
              <td><xsl:value-of select="Question"/></td>
              <td><xsl:value-of select="Description"/></td>
              <td><xsl:value-of select="Response/ResponseType"/></td>
              <td><xsl:value-of select="Response/Responsesubtype"/></td>
              <td><xsl:value-of select="Response/minimumvalue"/></td>
              <td><xsl:value-of select="Response/maximumvalue"/></td>
              <td><xsl:value-of select="Response/datatype"/></td>
            </tr>
          </xsl:for-each> 
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>