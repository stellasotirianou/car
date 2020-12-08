<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"  
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <html>
      <body>
	  <h2>Rooms that have wifi</h2>
	    <ul> <xsl:for-each select="HOTEL/rooms/room">
		    <xsl:if test="room_name/@wifi='yes' ">
			   <li><xsl:value-of select="room_name"/></li>
			</xsl:if>
		 </xsl:for-each> 
		</ul>
	  </body>
   </html>
</xsl:template>
</xsl:stylesheet>