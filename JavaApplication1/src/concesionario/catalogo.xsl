<?xml version='1.0' encoding="ISO8859-1" ?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/">
        <html>
            <head>
                <title>Formateando con XSLT</title>
                <style>BODY,TD{font-family:verdana;font-size:15px}</style>
            </head>
            <body>
                <table cellspacing="0" cellpadding="10" align="center" width="800">
                    <xsl:for-each select="VEHICULOS/CARRO" order-by="+TITULO">
                        <tr >
                            <td  bgcolor="white" valign="top">
                                <!--aqui va la imagen-->
                                <IMG WIDTH="390" HEIGHT="163">
                                    <xsl:attribute name="src">
                                        <xsl:value-of select="IMGCARRO"/>
                                    </xsl:attribute>
                                </IMG>
                                <!--fin de la imagen-->
                            </td>
                            <td bgcolor="white" valign="top">
                                <P style="font-size: 20pt">
                                    <xsl:value-of select="TITULO"/>
                                </P>
                                <P>
                                    PRECIO: <xsl:value-of select="PRECIO"/>
                                </P>
                            </td>
                        </tr>
                        
                        <tr>
                            <td colspan="2" bgcolor="white" valign="top">
                                <table BORDER="1" cellspacing="0" cellpadding="10" align="center" width="800">
                                    <xsl:for-each select="ESPECIFICACIONES" order-by="+TITULO">
                                        <tr>
                                            <td width="350" bgcolor="gray" >
                                                <P>
                                                    Capacidad de tanque de combustible (L)
                                                </P>
                                            </td >
                                            <td bgcolor="white" valign="top">
                                                <P>
                                                    <xsl:value-of select="AT1"/>
                                                </P>
                                            </td>
                                        </tr> 
                                        <tr>
                                            <td width="350" bgcolor="gray">
                                                <P>
                                                    Carroceria
                                                </P>
                                            </td>
                                            <td>
                                                <P>
                                                    <xsl:value-of select="AT2"/>
                                                </P>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="350" bgcolor="gray">
                                                <P>
                                                    Combustible
                                                </P>
                                            </td>
                                            <td>
                                                <P>
                                                    <xsl:value-of select="AT3"/>
                                                </P>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="350" bgcolor="gray">
                                                <P>
                                                    Peso bruto total (kg) 
                                                </P>
                                            </td>
                                            <td>
                                                <P>
                                                    <xsl:value-of select="AT4"/>
                                                </P>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="350" bgcolor="gray">
                                                <P>
                                                    Motor	
                                                </P>
                                            </td>
                                            <td>
                                                <P>
                                                    <xsl:value-of select="AT5"/>
                                                </P>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="350" bgcolor="gray">
                                                <P>
                                                    Potencia (HP/rpm)
                                                </P>	
                                            </td>
                                            <td>
                                                <P>
                                                    <xsl:value-of select="AT6"/>
                                                </P>
                                            </td>
                                        </tr>
                                        <tr>
                                            <td width="350" bgcolor="gray">
                                                <P>
                                                    Torque (lb/ft/rpm)
                                                </P>
                                            </td>
                                            <td>
                                                <P>
                                                    <xsl:value-of select="AT7"/>
                                                </P>
                                            </td>
                                        </tr>
                                    </xsl:for-each>
                                </table>  
                            </td>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>