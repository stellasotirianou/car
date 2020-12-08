<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"  
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <html>
   <body>
      <table border="4" border-style="dashed" bordercolor="indianred" cellpadding="5">
	     <tr bgcolor="indianred"> 
		    <th>Όνομα Δωματίου</th>
			<th>Αριθμός μονών κρεβατιών</th>
			<th>Αριθμός διπλών κρεβατιών</th>
			<th>Αριθμός υπέρδιπλων κρεβατιών</th>
            <th>Αριθμός καναπέδων-κρεβατιών</th>
		 </tr>
		 <xsl:for-each select="HOTEL/rooms/room">
		  <tr bgcolor="mistyrose">
            <td><xsl:value-of select="room_name"/></td>
			<td>
			   <xsl:choose>
			      <xsl:when test="bednum/single">
			         <xsl:value-of select="bednum/single"/>
				  </xsl:when>
				  <xsl:otherwise>
				     0
				  </xsl:otherwise>
			   </xsl:choose>
			</td>
			<td>
			   <xsl:choose>
			      <xsl:when test="bednum/double">
			         <xsl:value-of select="bednum/double"/>
				  </xsl:when>
				  <xsl:otherwise>
				     0
				  </xsl:otherwise>
			   </xsl:choose>
			</td>
			<td>
			   <xsl:choose>
			      <xsl:when test="bednum/kingsize">
			         <xsl:value-of select="bednum/kingsize"/>
				  </xsl:when>
				  <xsl:otherwise>
				     0
				  </xsl:otherwise>
			   </xsl:choose>
			</td>
			<td>
			   <xsl:choose>
			      <xsl:when test="bednum/sofa">
			         <xsl:value-of select="bednum/sofa"/>
				  </xsl:when>
				  <xsl:otherwise>
				     0
				  </xsl:otherwise>
			   </xsl:choose>
			</td>
          </tr>
		 </xsl:for-each>
	  </table> 
   </body>
   </html>
</xsl:template>
</xsl:stylesheet>
