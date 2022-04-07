<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <body>
        <!--<ul>
          <xsl:for-each select="inventario/producto">
            <li>Elemento: <xsl:value-of select="./@codigo"/></li>
            <ul>
              <li>Nombre: <xsl:value-of select="nombre"/></li>
              <li>Peso: <xsl:value-of select="peso"/>-<xsl:value-of select="peso/@unidad"/></li>
            </ul>
          </xsl:for-each>
        </ul> -->
        <table border="20" style="text-align:center">
          <xsl:for-each select="inventario/producto">
          <xsl:if test="(peso/@unidad='g')">
            <tr bgcolor="Silver">
              <th colspan="2">Elemento: <xsl:value-of select="./@codigo"/>
              </th>
            </tr>

            <tr>
              <td>Nombre </td>
              <td>
                <xsl:value-of select="nombre"/>
              </td>
            </tr>
          
            <tr>
              <xsl:if test="peso &gt;=100">
              <td bgcolor="red">Peso </td>
              <td bgcolor="red">
                <xsl:value-of select="peso"/>_<xsl:value-of select="peso/@unidad"/>
              </td>
            </xsl:if>
            <xsl:if test="peso &lt;100">
              <td bgcolor="green">Peso </td>
              <td bgcolor="green">
                <xsl:value-of select="peso"/>_<xsl:value-of select="peso/@unidad"/>
              </td>
            </xsl:if>
            </tr>
          </xsl:if>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>