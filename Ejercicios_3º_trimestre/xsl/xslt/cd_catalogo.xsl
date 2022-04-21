<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/"><!--template para crear plantilla y match para la raiz-->
    <html>
      <body>
        <h2 style="text-align:center">My CD Collection</h2>
        <table border="20" style="text-align:center">
            
          <tr bgcolor="Red">
            <th style="text-align:center">Number</th>
            <th style="text-align:center">Title</th>
            <th style="text-align:center">Artist</th>
            <th style="text-align:center">country</th>
            <th style="text-align:center">company</th>
            <th style="text-align:center">price</th>
            <th style="text-align:center">year</th>
          </tr>

          <xsl:for-each select="catalogo/cd">
          <!--for-each select="ruta"--><!--Aqui van los ordenes, los condicionales...-->
          <!--<xsl:sort select="artist"/><xsl:sort select="price" data-type="number" order="descending"/>-->
          <!-- filtramos por elementos con cadenas, poniendo = 'valor'-->
          <!--<xsl:if test="artist='Bob Dylan' and title/@id='2'">-->
          <!-- Filtramos por atributos de elementos con la @atributo -->
          <!--<xsl:if test="(price &lt; 10 and price &gt; 7.5) or price &gt; 12">-->
          <tr>
            <td bgcolor="Silver">
              <xsl:value-of select="number"/>
            </td>
            <td>
              <xsl:value-of select="title"/>
            </td>

            <!--Utilizamos choose para escoger entre distintas opciones -->
            <!--Con when especificamos la condicion a cumplir-->
            <!--con otherwise especificamos qué se hace, si la condición no se cumple -->
            <xsl:choose>
              <xsl:when test="(price &gt;= 0 and price &lt; 8)"> 
                <td bgcolor="pink">
                  <xsl:value-of select="artist"/>
                </td>
              </xsl:when> 
              <xsl:when test="(price &gt;= 8 and price &lt; 10)">
                <td bgcolor="green" style="color:#00ff00">
                  <xsl:value-of select="artist"/>
                </td>
              </xsl:when>
              <xsl:otherwise> 
                  <td bgcolor="yellow">
                    <xsl:value-of select="artist"/>
                  </td>
              </xsl:otherwise>
            </xsl:choose>

            <td>
              <xsl:value-of select="country"/>
            </td>
            <td>
              <xsl:value-of select="company"/>
            </td>
            
            <xsl:if test="(price &gt;= 0 and price &lt; 8)">
              <td bgcolor="green">
                <xsl:value-of select="price"/>
              </td>
            </xsl:if>
            <xsl:if test="(price &gt; 8 and price &lt; 10) or price=8">
              <td bgcolor="pink">
                <xsl:value-of select="price"/>
              </td>
            </xsl:if> 
            <xsl:if test="price &gt;= 10">
              <td bgcolor="white">
                <xsl:value-of select="price"/>
              </td>
            </xsl:if> 

            <td>
              <xsl:value-of select="year"/>
            </td>
          </tr>
          <!--</xsl:if>-->
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
<!--<xsl:apply-templates/> 
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
  </xsl:template>-->