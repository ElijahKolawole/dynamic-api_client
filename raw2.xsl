<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Quote-Journey-2</title>
        <link rel="stylesheet" href="responsive-style.css"/>
        <link rel="stylesheet" href="style/style.css"/>
      </head>
      <body style="font-family: HelveticaNeueLTStd-Lt,sans-serif;">
        <div class="container">
          <form action="quoter.html" method="post" id="quote_form_1">
            <fieldset>
              <legend><h3>Dynamic Quote in seconds</h3></legend>
              <xsl:for-each select="QuestionList/Questions">
                <div class="row">
                  <xsl:choose>
                    
                    <xsl:when test="Response/ResponseType='Dropdown' and Response/Responsesubtype='Currency(USD) or '">
                      <div class="col-25"><label for=""><xsl:value-of select="Description" /></label></div>
                      <div class="col-75">$<input type="number"  min="1" max="999999" step="any"  placeholder="500" name="{Question}"  /></div>
                    </xsl:when>
                    <xsl:when test="Response/ResponseType='Date'">
                       <div class="col-25"><label for=""><xsl:value-of select="Description" />:</label></div>
                       <div class="col-75"><input id="datePicker" type="date" name="{Question}" /></div>
                    </xsl:when>
                    <xsl:when test="Response/ResponseType='Text' and Response/Responsesubtype='Zipcode5'">
                       <div class="col-25"><label for=""><xsl:value-of select="Description" /></label></div>
                       <div class="col-75"><input type='text' name="{Question}"  pattern='[0-9]{5}' placeholder="50029"/></div>
                    </xsl:when>
                    <xsl:when test="Response/ResponseType='Dropdown' and Response/Responsevalues ">
                       <div class="col-25"><label for=""><xsl:value-of select="Description" />:</label></div>
                       <div class="col-75"><select name="{Question}" >
                        <xsl:for-each select="Response/Responsevalues">
                          <option value="{Value}"><xsl:value-of select="Value" /></option>
                        </xsl:for-each>
                      </select></div>
                    </xsl:when>
                    <xsl:when test="Response/ResponseType='Text' and Response/Responsesubtype='Telephone-US'">
                     <!--  <td style="border-bottom: 1px solid black;"> -->
                        <div class="col-25"><label for=""><xsl:value-of select="Description" /></label></div>
                       <!--  <td style="border-bottom: 1px solid black;"> -->
                           <div class="col-75"><input type="text" name="{Question}"  placeholder="123-456-6712" /> </div>
                        </xsl:when>
                        <xsl:when test="Response/ResponseType='Text' and Response/Responsesubtype='Email'">
                           <div class="col-25"><label for=""><xsl:value-of select="Description" /></label></div>
                           <div class="col-75"><input type="email"  name="{Question}" placeholder="b_owner@biz.com" /></div>
                        </xsl:when>
                        <xsl:when test="Response/ResponseType='Text' and Question='NumOfEmployees'">
                               <div class="col-25"><label for=""><xsl:value-of select="Description" /></label></div>
                                <div class="col-75"><input type="number"  min="1" max="999999" step="any"  placeholder="10" name="{Question}"  /></div>
                  
                        </xsl:when>
                        <xsl:when test="Response/ResponseType='Radio' ">
                           <div class="col-25"><label for=""><xsl:value-of select="Description" /></label></div>
                           <div class="col-75"><xsl:for-each select="Response/Responsevalues"> 
                            <!-- <option value="{Value}"><xsl:value-of select="Value" /></option> -->
                            <input type="radio"  name="{../../Question}" value="{Value}"/><xsl:value-of select="Value"/> &#160;
                          </xsl:for-each> </div>
                        </xsl:when>
                        <xsl:otherwise>
                           <div class="col-25"><label for=""><xsl:value-of select="Description" />:</label></div>
                           <div class="col-75"><input type="text" name="{Question}" /></div>
                        </xsl:otherwise>
                      </xsl:choose>
                    </div>
                  </xsl:for-each>
                    <br /><button type='submit' form='quote_form_1' value='Submit' id="mybutton">Submit Info</button>

                </fieldset>
              </form>
            </div>
          </body>
        </html>
      </xsl:template>
    </xsl:stylesheet>