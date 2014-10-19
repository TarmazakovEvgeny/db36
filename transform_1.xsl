<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<xsl:for-each select="//faculty[@name='Kib']/department">
<xsl:value-of select="@name"/>, 
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>
