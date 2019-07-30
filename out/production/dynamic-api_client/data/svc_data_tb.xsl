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
            <th colspan="11">Response</th>
          </tr>
          <tr>
            <th colspan="2"></th>
            <th>ResponseType</th>
            <th>Responsesubtype</th>
            <th>minimumvalue</th>
            <th>maximumvalue</th>
            <th>datatype</th>
            <th colspan="6">Responsevalues</th>
          </tr>
<!--  <tr>
<th colspan="7"></th>
<th colspan="5">Value</th>
</tr> -->
<tr>
  <th colspan="7"></th>
  <th>A</th>
  <th>B</th>
  <th>C</th>
  <th>D</th>
  <th>E</th>
  <th>F</th>
</tr>
<xsl:for-each select="QuestionList/Questions"> 
  <xsl:sort select="Description"/>
  <tr>
    <td><xsl:value-of select="Question"/></td>
    <td><xsl:value-of select="Description"/></td>
    <td><xsl:value-of select="Response/ResponseType"/></td>
    <td><xsl:value-of select="Response/Responsesubtype"/></td>
    <td><xsl:value-of select="Response/minimumvalue"/></td>
    <td><xsl:value-of select="Response/maximumvalue"/></td>
    <td><xsl:value-of select="Response/datatype"/></td>           
    <td><xsl:value-of select="Response/Responsevalues[1]"/></td>
    <td><xsl:value-of select="Response/Responsevalues[2]"/></td>
    <td><xsl:value-of select="Response/Responsevalues[3]"/></td>
    <td><xsl:value-of select="Response/Responsevalues[4]"/></td>
    <td><xsl:value-of select="Response/Responsevalues[5]"/></td>
    <td><xsl:value-of select="Response/Responsevalues[6]"/></td>
  </tr>
</xsl:for-each> 
</table>

<xsl:for-each select="QuestionList/Questions"> 
  <div><xsl:value-of select="Question"/> 
          <input type="text" name="Description"/>
</div>
</xsl:for-each>
</body>
</html>
</xsl:template>
</xsl:stylesheet>