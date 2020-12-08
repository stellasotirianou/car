<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="car_to_rent">
  <html>
     <head>
	    <title>Cars to rent</title>
	 </head>
	 <body>
	    <h1>Cars to rent</h1>
	    <table border="1">
		   <td>Μάρκα Κατασκεύης</td>
           <td>Mοντέλο</td>
           <td>Χρώμα</td>
           <td>Μικρή Περιγραφή Μοντέλου</td>
		   <xsl:apply-templates/>
		</table>
	 </body>
  </html>
</xsl:template>

<xsl:template match="car">
   <tr>
      <td><xsl:value-of select="manufacturer-brand"/></td>
	  <td><xsl:apply-templates select="manufacturer-brand/model"/></td>
   </tr>
</xsl:template>
<xsl:template match="manufacturer-brand/model">
   <xsl:value-of select="."/>
</xsl:template>
</xsl:stylesheet>
