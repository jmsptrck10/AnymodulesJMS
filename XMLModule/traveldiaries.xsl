<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
xmlns:td="http://example.com/traveldiaries">
	<xsl:output method="html" encoding="UTF-8" indent="yes" />
	<xsl:template match="/">
		<html>
			<head>
				<link rel="stylesheet" type="text/css" href="styles.css" />
			</head>
			<body>
				<div class="header">
					<h1>Travel Diaries</h1>
				</div>
				<hr />
				<table>
					<tr>
						<th>Date</th>
						<th>Title</th>
						<th>Location</th>
						<th>Description</th>
					</tr>
					<xsl:for-each select="//td:diary">
						<xsl:sort select="td:date"/>
						<tr>
							<td>
								<xsl:value-of select="td:date" />
							</td>
							<td>
								<xsl:value-of select="td:title" />
							</td>
							<td>
								<xsl:value-of select="td:location" />
							</td>
							<td>
								<xsl:value-of select="td:description" />
							</td>
						</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
