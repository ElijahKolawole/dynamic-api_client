<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Quote-Journey</title>
        <link href="style/style.css" rel="stylesheet" type="text/css"/>
      </head>
      <body style="font-family: HelveticaNeueLTStd-Lt,sans-serif;">
        <div class="content">
          <div id="quote_main">
            <form action="quoter.html" method="post" id="quote_form_1">
              <fieldset>
                <legend><h3>Dynamic Quote in seconds</h3></legend>
                <!--  <xsl:apply-templates/>  -->
                <table >
                  <xsl:for-each select="QuestionList/Questions">
                    <tr>
                      <xsl:if test="Response/ResponseType='Text' and not(contains(Response/Responsesubtype, 'Email'))">
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

                        <xsl:if test="Response/Responsesubtype='Currency(USD)'">
                        <td>
                          <xsl:value-of select="Description" />
                        </td>
                        <td>
                          $<input type="number" />
                        </td>
                      </xsl:if>

                      
                      <xsl:if test="Response/ResponseType='Dropdown' and Response/Responsevalues ">
                        <td>
                          <xsl:value-of select="Description" />:
                        </td>
                        <td>
                          <select>
                            <xsl:for-each select="Response/Responsevalues">
                              <option value="{Value}"><xsl:value-of select="Value" /></option>
                            </xsl:for-each>
                          </select>
                        </td>
                      </xsl:if>

                       <xsl:if test="Response/Responsesubtype='Email'">
                        <td>
                          <xsl:value-of select="Description" />
                        </td>
                        <td>
                          <input type="email" />
                        </td>
                      </xsl:if>

                       <!--  <xsl:if test="Response/Responsesubtype='Zipcode5'">
                        <td>
                          <xsl:value-of select="Description" />
                        </td>
                        <td>
                          <input type='text' pattern='[0-9]{5}'/>
                        </td>
                      </xsl:if>
 -->
                        <xsl:if test="Response/Responsesubtype='Telephone-US'">
                        <td>
                          <xsl:value-of select="Description" />
                        </td>
                        <td>
                          <input type="tel" />
                        </td>
                      </xsl:if>



                    </tr>
                  </xsl:for-each>
                </table>
                <br /> <br /><button type='submit' form='quote_form_1' value='Submit'>Submit Info</button>
                <!-- <button type="submit" value="Submit" onclick='printFormContents(this.form);return false;' id="quoteBtn">Get A Quote</button> -->
              </fieldset>
            </form>
          </div>
        </div>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>