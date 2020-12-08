<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
  <html>
     <head>
	    <title>Cars to rent</title>
	 </head>
	 <body>
	    <h1>Cars to rent</h1>
	    <table border="2" cellpadding="4" >
		  <tr>
		     <td bgcolor="#99e6ff">Μάρκα Κατασκεύης</td>
             <td bgcolor="#99e6ff">Mοντέλο</td>
             <td bgcolor="#99e6ff">Μηνιαίο Μίσθωμα Χωρίς ΦΠΑ</td>
		  </tr>
		  <xsl:for-each select="car_to_rent/car">
		     <xsl:sort select="economic_info_leasing/monthly_leasing[@without_tax='true']/text()" order="descending"/>
		     <tr>
			    <td> <xsl:value-of select="manufacturer_brand/text()"/> </td>
			    <td> <xsl:value-of select="manufacturer_brand/model"/> </td>
			    <td> <xsl:value-of select="economic_info_leasing/monthly_leasing[@without_tax='true']/text()"/> </td>
		     </tr>
			
			 
		  </xsl:for-each>
		</table>
	 </body>
  </html>
</xsl:template>
</xsl:stylesheet> 