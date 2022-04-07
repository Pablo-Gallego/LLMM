<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/"><!--template para crear plantilla y match para la raiz-->
    <html>
      <body>
        <h2 style="text-align:center">My CD Collection</h2>
        <xsl:apply-templates/> 
        </body>
    </html>
  </xsl:template>
  <xsl:template match="cd">
    <p>
      <xsl:apply-templates select="title"/>  
      <xsl:apply-templates select="artist"/>
    </p>
  </xsl:template>

  <xsl:template match="title">
    Title: <span style="color:#ff0000">
    <xsl:value-of select="."/></span>
    <br />
  </xsl:template>

  <xsl:template match="artist">
    Artist: <span style="color:#00ff00">
    <xsl:value-of select="."/></span>
    <br />
  </xsl:template>

</xsl:stylesheet>