<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="car_to_rent">
  <html>
     <xsl:apply-templates/>
  <body>
  Data
 <!--! <table border="1">
     <tr>
         <th>Μάρκα Κατασκεύης</th>
         <th>Mοντέλο</th>
         <th>Χρώμα</th>
         <th>Μικρή Περιγραφή Μοντέλου</th>
     </tr>
	 <xsl:template match="car">
	 <tr>
	     <td><xsl:apply-templates select="manufacturer_brand"/></td>
	 </tr>
     </xsl:template>
  </table> 
  <xsl:apply-templates/>  -->
  </body>
  </html>
</xsl:template>
<xsl:template match="car">
	 <xsl:for-each select="manufacturer_brand">
	    <p> 
		   <xsl:value-of select="."/>
		</p>

	 </xsl:for-each>

</xsl:template>
</xsl:stylesheet>

