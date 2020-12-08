<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"  
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <html>
      <body>
	  <h2>Cars to rent with CO2 Emissions over 110 gr/km</h2>
	    <ul> <xsl:for-each select="car_to_rent/car">
		    <xsl:if test="main_characteristics/CO2_emissions>110">
			   <li><xsl:value-of select="manufacturer_brand/text()"/></li>
			</xsl:if>
		 </xsl:for-each> 
		</ul>
	  </body>
   </html>
</xsl:template>
</xsl:stylesheet>