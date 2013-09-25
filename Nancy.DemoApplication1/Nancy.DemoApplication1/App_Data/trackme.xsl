<?xml version="1.0"?>
<!DOCTYPE stylesheet [
  <!ENTITY % w3centities-f PUBLIC "-//W3C//ENTITIES Combined Set//EN//XML"
      "http://www.w3.org/2003/entities/2007/w3centities-f.ent">
  %w3centities-f;
]>

<xsl:stylesheet version="1.0"
      xmlns:xsl="http://www.w3.org/1999/XSL/Transform" >

<xsl:template match="/">
<xsl:text disable-output-escaping='yes'>&lt;!DOCTYPE html></xsl:text>
  <HTML>
<BODY>

 
  <xsl:apply-templates/>
</BODY>
</HTML>
</xsl:template>

<xsl:template match="/">
<TABLE BORDER="1">
<TH>HEAD</TH>
        <xsl:for-each select="*[position() = 1]/*">
            <TR>
            <TD>
              <span style="color:purple">
                <xsl:value-of select="local-name()"/>: <xsl:text> &nbsp; </xsl:text> 
              </span>
              <xsl:value-of select="."/>
            </TD>
          </TR>
        </xsl:for-each>
      <xsl:apply-templates/>
</TABLE>
</xsl:template>

<xsl:template match="/*">
<TR>
    <xsl:apply-templates/>
</TR>
</xsl:template>

<xsl:template match="/*/*">
  <TR>
<TD>
  <span style="color:red"><xsl:value-of select="."/> </span>
</TD>
    </TR>
</xsl:template>
  

</xsl:stylesheet>
