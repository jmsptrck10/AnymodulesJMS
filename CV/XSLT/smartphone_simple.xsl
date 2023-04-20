<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:p="http://www.example.com/xsd">
	<xsl:output method="html" encoding="UTF-8" indent="yes"/>
	<xsl:template match="p:smartphoneCatalog">
		<html>
			<head>
				<title>XSL Output</title>
			</head>
			<body>
				<xsl:apply-templates select="p:item"/>
			</body>
		</html>
	</xsl:template>
	<xsl:template match="p:item">
		<ul style="list-style-type:square;color:blue">
			<li>
				<xsl:value-of select="p:make"/>
			</li>
			<li>
				<xsl:value-of select="p:model"/>
			</li>
			<li>
				<xsl:value-of select="p:storage"/> GB
			</li>
			<li>
				<xsl:value-of select="p:color"/>
			</li>
			<li>
				$<xsl:value-of select="p:price"/>
			</li>
		</ul>
	</xsl:template>
</xsl:stylesheet>
