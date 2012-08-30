<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:x="http://www.w3.org/1999/xhtml"
    xmlns="http://www.w3.org/1999/xhtml"
exclude-result-prefixes="x">

<xsl:output method="html" omit-xml-declaration="yes" />
<!-- By default, copy *everything* -->
<xsl:template match="@*|node()">
  <xsl:copy>
    <xsl:apply-templates select="@*|node()"/>
  </xsl:copy>
</xsl:template>

<xsl:template match="comment()">
</xsl:template>

<xsl:template match="x:sagecell">
  <div class="asagecell"><xsl:apply-templates/></div>
</xsl:template>

<xsl:template match="x:sagecell/x:pre">
  <xsl:apply-templates select="./x:code/node()"/>
</xsl:template>

<xsl:template match="x:frontmatter">
  <div class="frontmatter"><xsl:apply-templates/></div>
</xsl:template>

</xsl:stylesheet>