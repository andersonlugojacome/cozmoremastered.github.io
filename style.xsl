<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <html>
            <head>
                <style>
                    body {
                        background-color: black;
                        color: white;
                    }
                    table {
                        border: 1px solid white;
                        width: 100%;
                    }
                    th, td {
                        border: 1px solid white;
                        padding: 10px;
                        text-align: left;
                    }
                </style>
            </head>
            <body>
                <table>
                    <tr>
                        <th>Name</th>
                        <th>Cozmo ID</th>
                        <th>Cozmo Version</th>
                        <th>Regestration Code</th>
                    </tr>
                    <xsl:for-each select="table/row">
                        <tr>
                            <xsl:for-each select="cell">
                                <td><xsl:value-of select="."/></td>
                            </xsl:for-each>
                        </tr>
                    </xsl:for-each>
                </table>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
