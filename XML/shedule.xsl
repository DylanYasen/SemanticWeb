<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet
  version="1.0"
  xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
  <body>
    <h2>
      Schedule
      <xsl:value-of select="schedule/semester"/>
      -
      <xsl:value-of select="schedule/year"/>
    </h2>

    <xsl:for-each select="schedule/course">

      <h3>
        <xsl:value-of select="title"/>
      </h3>

      <table border="1">
        <tr bgcolor="#9acd32">
          <th>section</th>
          <th>instructor</th>
          <th>time</th>
          <th>room</th>
        </tr>

        <xsl:for-each select="section">
          <tr>
            <td>
              <xsl:value-of select="sectionNumber"/>
            </td>
            <td>
              <xsl:value-of select="instructor"/>
            </td>
            <td>
              <xsl:value-of select="days"/>
              :
              <xsl:value-of select="startTime"/>
              -
              <xsl:value-of select="endTime"/>
            </td>
            <td>
              <xsl:value-of select="room"/>
            </td>
          </tr>
        </xsl:for-each>

      </table>
    </xsl:for-each>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>
