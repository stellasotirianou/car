<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
     version="1.0">

  <xsl:output method="text"/>

  <xsl:template match="car_to_rent">
    <xsl:apply-templates>
      <xsl:sort select="car/manufacturer_brand" data-type="text"/>
    </xsl:apply-templates>
  </xsl:template>

  <xsl:template match="economic_info_leasing">
    Retail Price:  <xsl:apply-templates select="retail_price"/>
    detail econ info: <xsl:apply-templates select="detail_econ_info"/>
    <xsl:text>
  </xsl:text>

  </xsl:template> 

</xsl:stylesheet>



<!-- <?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"  
     xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="car_to_rent/car/economic_info_leasing">
   <html>

       <h2>Economic Info Leasing</h2>
       <xsl:apply-templates/>

   </html>
</xsl:template>
<xsl:template match="car_to_rent/car/economic_info_leasing">
    <p>
       <xsl:value-of select="."/>
    </p>
     <!-- <p>>
        <xsl:apply-templates select="economic_info_leasing/monthly_leasing"/>
        <xsl:apply-templates select="economic_info_leasing/retail_price"/>
     </p>
     <xsl:sort select="manufacturer_brand">
        <xsl:template match="economic_info_leasing/monthly_leasing">
          <span>
             <xsl:value-of select="."/>
          </span>
        <xsl:template match="economic_info_leasing/retail_price">
           <span>
              <xsl:value-of select="."/>
           </span>   
    </xsl:template>
   </xsl:apply-templates> -->

</xsl:template>

</xsl:stylesheet> -->
