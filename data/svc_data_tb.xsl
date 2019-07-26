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
            <th>DataItem</th>
            <th>Xpath</th>
            <th>Question</th>
            <th colspan="4">Response</th>
          </tr>
          <tr>
            <td colspan="3"></td>
            <th>ResponseType</th>
            <th>MinimumValue</th>
            <th>MaximumValue</th>
            <th>EnumeratedValues</th>
          </tr>
          <xsl:for-each select="InsuranceSvcRs/Questions/Question">
            <tr>
              <td><xsl:value-of select="DataItem"/></td>
              <td><xsl:value-of select="XPath"/></td>
              <td><xsl:value-of select="Question"/></td>
              <td><xsl:value-of select="Response/ResponseType"/></td>
              <td><xsl:value-of select="Response/MinimumValue"/></td>
              <td><xsl:value-of select="Response/MaximumValue"/></td>
              <td><xsl:value-of select="Response/EnumeratedValues"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>