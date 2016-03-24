xsltproc\xmllint %1 --noblanks --recover --c14n > xsltproc\temp1.xml
xsltproc\xsltproc sortDictionary.xsl xsltproc\temp1.xml > xsltproc\temp2.xml
xsltproc\xmllint xsltproc\temp2.xml --format > %2