<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/"><!--template para crear plantilla y match para la raiz-->
    <html>
      <body>
        <h2 style="text-align:center">My CD Collection</h2>
        <table border="1" style="text-align:center">
          <tr bgcolor="Red">
            <th style="text-align:center">Number</th>
            <th style="text-align:center">Title</th>
            <th style="text-align:center">Artist</th>
            <th style="text-align:center">country</th>
            <th style="text-align:center">company</th>
            <th style="text-align:center">price</th>
            <th style="text-align:center">year</th>
          </tr>
          <xsl:for-each select="catalogo/cd"><!--for-each select="ruta"-->
          <xsl:sort select="artist"/>
          <xsl:sort select="price" data-type="number" order="descending"/>
          <tr>
            <td bgcolor="Silver">
              <xsl:value-of select="number"/>
            </td>
            <td>
              <xsl:value-of select="title"/>
            </td>
            <td>
              <xsl:value-of select="artist"/>
            </td>
            <td>
              <xsl:value-of select="country"/>
            </td>
            <td>
              <xsl:value-of select="company"/>
            </td>
            <td>
              <xsl:value-of select="price"/>
            </td>
            <td>
              <xsl:value-of select="year"/>
            </td>
          </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>