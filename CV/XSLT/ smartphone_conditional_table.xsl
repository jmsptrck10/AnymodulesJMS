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
				<h2>
					Total Smartphones: <xsl:value-of select="count(p:item)"/>
				</h2>
				<h2>
					Average Price: $<xsl:value-of select="format-number(average(p:item/p:price), '0.00')"/>
				</h2>
				<h2>
					Minimum Price: $<xsl:value-of select="min(p:item/p:price)"/>
				</h2>
				<h2>
					Maximum Price: $<xsl:value-of select="max(p:item/p:price)"/>
				</h2>
			</body>
		</html>
	</xsl:template>

</xsl:stylesheet>
