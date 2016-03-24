<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:i="http://www.w3.org/2001/XMLSchema-instance" 
  xmlns:ir="http://www.iringtools.org/library">

   <xsl:output method="xml" omit-xml-declaration="yes" indent="no"/>

   <xsl:template match="@*|node()">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
   </xsl:template>

   <xsl:template match="ir:databaseDictionary/ir:dataObjects">
      <xsl:copy>
         <xsl:apply-templates select="ir:dataObject">
            <xsl:sort select="ir:objectName" data-type="string" order="ascending"/>
         </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   
   <xsl:template match="ir:dataProperties">
      <xsl:copy>
         <xsl:apply-templates select="ir:dataProperty">
            <xsl:sort select="ir:propertyName" data-type="string" order="ascending"/>
         </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   
   <xsl:template match="ir:extensionProperties">
      <xsl:copy>
         <xsl:apply-templates select="ir:extensionProperty">
            <xsl:sort select="ir:propertyName" data-type="string" order="ascending"/>
         </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   
   <xsl:template match="ir:keyProperties">
      <xsl:copy>
         <xsl:apply-templates select="ir:keyProperty">
            <xsl:sort select="ir:keyPropertyName" data-type="string" order="ascending"/>
         </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>

</xsl:stylesheet>
