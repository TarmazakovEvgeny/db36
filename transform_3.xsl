<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
  <h2>Students of the faculty of KiB</h2>
    <table border="1">
      <tr bgcolor="#e3fffa">
        <th style="text-align:left">Number</th>
        <th style="text-align:center">Student</th>
        <th style="text-align:left">Group</th>
      </tr>
      <xsl:for-each select="//student[ancestor::faculty/@name='Kib']">
      <tr>
        <td style="text-align: center"><xsl:value-of select="position()"/></td>
        <td><xsl:value-of select="self::student"/></td>
        <td><xsl:value-of select="concat(string(ancestor::department/@tag),string(2*(2014.0-number(parent::group/@entryyear))+1),'-',string(ancestor::department/@number),string(parent::group/@number))"/></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
