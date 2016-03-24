<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
  xmlns:i="http://www.w3.org/2001/XMLSchema-instance" 
  xmlns:ir="http://www.iringtools.org/mapping">

   <xsl:output method="xml" omit-xml-declaration="yes" indent="no"/>

   <xsl:template match="@*|node()">
      <xsl:copy>
         <xsl:apply-templates select="@*|node()"/>
      </xsl:copy>
   </xsl:template>

   <xsl:template match="ir:graphMaps">
      <xsl:copy>
         <xsl:apply-templates select="ir:graphMap">
            <xsl:sort select="ir:name" data-type="string" order="ascending"/>
         </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   
   <xsl:template match="ir:identifiers">
      <xsl:copy>
         <xsl:apply-templates select="ir:identifier">
            <xsl:sort select="ir:identifier" data-type="string" order="ascending"/>
         </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>

   <xsl:template match="ir:classTemplateMaps">
      <xsl:copy>
         <xsl:apply-templates select="ir:classTemplateMap">
            <xsl:sort select="ir:classMap/ir:name" data-type="string" order="ascending"/>
         </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   
   <xsl:template match="ir:templateMaps">
      <xsl:copy>
         <xsl:apply-templates select="ir:templateMap">
            <xsl:sort select="ir:name" data-type="string" order="ascending"/>
         </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>
   
   <xsl:template match="ir:valueMaps">
      <xsl:copy>
         <xsl:apply-templates select="ir:valueMap">
            <xsl:sort select="ir:internalValue" data-type="string" order="ascending"/>
         </xsl:apply-templates>
      </xsl:copy>
   </xsl:template>

</xsl:stylesheet>
