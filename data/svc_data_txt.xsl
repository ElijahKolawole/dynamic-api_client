<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Table representation of data for quick view</h2>
  <table border="1">
    <tr bgcolor="#9acd32">
      <th>Xpath</th>
      <th>Question</th>
      <th>Answer</th>
    </tr>
    <xsl:for-each select="Questions/Question">
    <tr>
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