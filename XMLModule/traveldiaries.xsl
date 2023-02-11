<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
  <html>
  <body>
    <h2>Travel Diaries</h2>
    <table border="10">
      <tr bgcolor="#9acd32">
        
        <th>Date</th>
        <th>Title</th>
        <th>Location</th>
        <th>Description</th>
        
      </tr>
      <xsl:for-each select="traveldiaries/diary">
       <xsl:sort select="date"/>
      <tr>
        <td><xsl:value-of select="date" /></td>
        <td><xsl:value-of select="title" /></td>
        <td><xsl:value-of select="location" /></td>
        <td><xsl:value-of select="description" /></td>
      </tr>
      </xsl:for-each>
    </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
