<?xml version="1.0" encoding="UTF-8" ?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

<xsl:template match="/ver_log">

  <html>
    <head>
      <title>HRLadder Version History</title>
    </head>
    <body>
      <br/>
      <font face="arial" color="#2233aa" size="5">HRLadder Version History</font>
      <p/>
      <xsl:apply-templates select="entry"/>

    </body>
  </html>

</xsl:template>


<xsl:template match="/ver_log/entry">
  <font face="arial" size="4">
  <hr/>version <xsl:value-of select="version"/> build<xsl:value-of select="build"/>
  (<xsl:value-of select="date"/>)<br/>
  <xsl:apply-templates select="issue"/>
  <p/>
  </font>
</xsl:template>
  
<xsl:template match="/ver_log/entry/issue">
  <font face="arial" size="2">
    <ul>
      <li>
        <xsl:value-of select="./@desc"/>
        <br/>
        <xsl:if test="@mod_help">
          Refer to: <xsl:value-of select="./@mod_help"/>
        </xsl:if>

      </li>
    </ul>
  </font>

</xsl:template>

</xsl:stylesheet>

