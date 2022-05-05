<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <title>
        Resultado Ejercicio3 Museos
      </title>
      <body>
        <table border="5" style="text-align:center">
          <th>Nombre</th>
          <th>Ciudad</th>
          <xsl:for-each select="museos/museo">
            <tr style="text-align:center">
              <td>
                <xsl:value-of select="nombre"/>
              </td>
              <xsl:choose>
                <xsl:when test="ciudad = &apos;Londres&apos;">
                  <td bgcolor="red">
                    <xsl:value-of select="ciudad"/>
                  </td>
                </xsl:when>
                <xsl:otherwise>
                  <td bgcolor="white">
                    <xsl:value-of select="ciudad"/>
                  </td>
                </xsl:otherwise>
              </xsl:choose>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>