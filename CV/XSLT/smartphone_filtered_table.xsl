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
				<table style="width:600px">
					<tr style="color:white; background:orange">
						<th>Brand</th>
						<th>Model</th>
						<th>Storage</th>
						<th>Color</th>
						<th>Price</th>
					</tr>
					<xsl:for-each select="p:item">
						<xsl:if test="p:storage &gt; 64">
							<tr style="color:red; background:yellow; text-align:center">
								<td>
									<xsl:value-of select="p:make" />
								</td>
								<td>
									<xsl:value-of select="p:model" />
								</td>
								<td>
									<xsl:value-of select="p:storage" /> GB
								</td>
								<td>
									<xsl:value-of select="p:color" />
								</td>
								<td>
									$<xsl:value-of select="p:price" />
								</td>
							</tr>
						</xsl:if>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
