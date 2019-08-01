<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <head>
        <title>Quote-Journey</title>
        <style>
          <style>
* {
  box-sizing: border-box;
}

input[type=text], select, textarea {
  width: 100%;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 4px;
  resize: vertical;
}

label {
  padding: 5px 5px 5px 0;
  display: inline-block;
}

input[type=submit] {
  background-color: #4CAF50;
  color: white;
  padding: 12px 20px;
  border: none;
  border-radius: 4px;
  cursor: pointer;
  float: right;
}

input[type=submit]:hover {
  background-color: #45a049;
}

.container {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
  width: 80%;
  margin:auto;
}

.col-25 {
  float: left;
  width: 40%;
  margin-top: 6px;
}

.col-75 {
  float: left;
  width: 60%;
  margin-top: 6px;
}

/* Clear floats after the columns */
.row:after {
  content: "";
  display: table;
  clear: both;
}

/* Responsive layout - when the screen is less than 600px wide, make the two columns stack on top of each other instead of next to each other */
@media screen and (max-width: 600px) {
  .col-25, .col-75, input[type=submit] {
    width: 100%;
    margin-top: 0;
  }
  .container{
    width:96%;
  }

}

#img_div{
   margin-left: 10px;
  width: 50%;
  height: 100px;
 background-image: url("logo.png");
  background-repeat: no-repeat;
}
        </style>
      </head>
      <body style="font-family: HelveticaNeueLTStd-Lt,sans-serif;">
        <form action="quoter.html" method="get" id="quote_form_1">
          <fieldset>
            <legend><h3>Dynamic Quote in seconds</h3></legend>
            <xsl:apply-templates/> 
            
            <br /> <div id="button_div"><br /><button type='submit' form='quote_form_1' value='Submit'>Submit Info</button></div>
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