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
           <!--  <xsl:apply-templates/>  -->
            <table >
              <xsl:for-each select="QuestionList/Questions">
                 <tr>
                    <xsl:if test="Response/ResponseType='Text'">
                        <td>
                            <xsl:value-of select="Description" />:
                        </td>
                        <td>
                            <input type="text"/>
                        </td>
                    </xsl:if>
                     <xsl:if test="Response/ResponseType='Date'">
                        <td>
                            <xsl:value-of select="Description" />:
                        </td>
                        <td>
                            <input type="date"/>
                        </td>
                    </xsl:if>
                     <xsl:if test="Response/ResponseType='Dropdown'">
                        <td>
                            <xsl:value-of select="Description" />:
                        </td>
                        <td>
                              <select>
                                <option value="{Response/Responsevalues/Value}"><xsl:value-of select="Response/Responsevalues/Value[0]" /></option>
                                <option value="saab">Saab</option>
                                <option value="mercedes">Mercedes</option>
                                <option value="audi">Audi</option>
                              </select>
                        </td>
                    </xsl:if>
                 </tr>

              </xsl:for-each>
               
              


            </table>
            <br /> <br /><button type='submit' form='quote_form_1' value='Submit'>Submit Info</button>
            <!-- <button type="submit" value="Submit" onclick='printFormContents(this.form);return false;' id="quoteBtn">Get A Quote</button> -->
          </fieldset>
        </form>
      </body>
    </html>

  </xsl:template>
  
 
</xsl:stylesheet>