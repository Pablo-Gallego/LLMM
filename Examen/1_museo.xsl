<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <title>
            Resultado Ejercicio1 Museos
            </title>
            <body>
                <ul>
                    <xsl:for-each select="museos/museo">
                        <li>Datos del museo: </li>
                        <ul>
                            <li>Nombre: <xsl:value-of select="nombre"/>
                            </li>
                            <li>Ciudad: <xsl:value-of select="ciudad"/>
                            </li>
                        </ul>
                    </xsl:for-each>
                </ul>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>