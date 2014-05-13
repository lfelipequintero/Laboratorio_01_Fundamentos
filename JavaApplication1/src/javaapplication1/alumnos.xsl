<?xml version="1.0" encoding="iso-8859-1"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="alumnos">
        <html>
            <head>
                <title>Informacion de Alumnos</title>
            </head>
            <body>
                <h1>Lista de alumnos</h1>
                <table border="1" >
                    <tr bgcolor="666666">
                        <th>dni</th>
                        <th>nombre</th>
                        <th>apellido</th>
                        <th>nota</th>
                        <th>email</th>
                    </tr>          
                    <xsl:for-each select="alumno">
                        <tr>
                            <td><xsl:value-of select="@dni"/></td>
                            <td><xsl:value-of select="nombre"/></td>
                            <td><xsl:value-of select="apellidos"/></td>
                            <td><xsl:value-of select="nota"/></td>
                            <td><xsl:value-of select="email"/></td>
                        </tr>
                    </xsl:for-each>            
                </table>
            </body>
         </html>
       </xsl:template> 
</xsl:stylesheet>
