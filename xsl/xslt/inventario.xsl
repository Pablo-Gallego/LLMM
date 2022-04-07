<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:template match="/"><!--template para crear plantilla y match para la raiz-->
    <html>
      <body>
        <ul>
          <xsl:for-each select="inventario/producto">
            <li>Elemento: <xsl:value-of select="./@codigo"/></li>
            <ul>
              <li>Nombre: <xsl:value-of select="nombre"/></li>
              <li>Peso: <xsl:value-of select="peso"/> <xsl:value-of select="peso/@unidad"/></li>
            </ul>
          </xsl:for-each>
        </ul>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>