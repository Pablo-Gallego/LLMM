<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/">
    <html>
      <title>
        Resultado Ejercicio1 Paises
      </title>
      <body>
        <h1>Paises de la OTAN</h1>
        <table border="5" style="text-align:center">
          <th>Nombre País</th>
          <th>Año de entrada</th>
          <xsl:for-each select="geografia/otan/pais">
            <tr style="text-align:center">
              <td>
                <xsl:value-of select="@nombre"/>
              </td>
              <td>
                <xsl:value-of select="@entrada"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <h1>Paises de la UE</h1>
        <table border="5" style="text-align:center">
          <th>Nombre País</th>
          <th>Año de entrada</th>
          <xsl:for-each select="geografia/ue/pais">
            <tr style="text-align:center">
              <td>
                <xsl:value-of select="@nombre"/>
              </td>
              <td>
                <xsl:value-of select="@entrada"/>
              </td>
            </tr>
          </xsl:for-each>
        </table>
        <h1>Información de los paises de Europa</h1>
        <ul>
          <xsl:for-each select="geografia/paises/pais">
            <li>
              <xsl:value-of select="nombre"/> es un país con <xsl:value-of select="@tipo"/> cuya capital es  <xsl:value-of select="capital"/>. Tiene una poblacion de <xsl:value-of select="datos/@poblacion"/> millones de habitantes.</li>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>