<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
   <html>
      <body>
	    
		 <xsl:element name="cars_to_rent">
		    <xsl:apply-templates/>
		 </xsl:element>
	  </body>
   </html>
</xsl:template> 
<xsl:template match="car">
   <p>
      <xsl:apply-templates select="manufacturer_brand/model"/>
	  <xsl:apply-templates select="equipment/basic_equipment"/>
   </p>
</xsl:template>
<xsl:template match="manufacturer_brand/model">
   Model: 
   <span><xsl:value-of select="."/></span>
   <br/>
</xsl:template>
<xsl:template match="equipment/basic_equipment">
   Basic Equipment:
    <span><xsl:value-of select="."/></span>
   <br/>
</xsl:template>
</xsl:stylesheet>