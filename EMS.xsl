<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/">
		
		<html>
		<body>
		<h1 align="center">EMPLOYEE MANAGEMENT SYSTEM</h1>
		<table bgcolor="white" border="1" width="100%" cellpadding="20px" align="center">
		<tr>
		<th>ID</th>
		<th>NAME</th>
		<th>AGE</th>
		<th>SALARY</th>
		<th>EMAIL ID</th>
		<th>PHONE NO</th>
		<th>DESIGNATION</th>
		<th>PROMOTION</th>
		</tr>
		<xsl:for-each select="Company/Employee">
		<tr bgcolor="white">
		<td><xsl:value-of select="@ID"></xsl:value-of></td>
		<td><xsl:value-of select="empname"></xsl:value-of></td>
		<td><xsl:value-of select="empage"></xsl:value-of></td>
		<td><xsl:value-of select="empsalary"></xsl:value-of></td>
		<td><xsl:value-of select="empemail"></xsl:value-of></td>
		<td><xsl:value-of select="empphone"></xsl:value-of></td>
		<td><xsl:value-of select="empdesignation"></xsl:value-of></td>
		<td>
		<xsl:choose>
		<xsl:when test="empage &gt; 50">Associate Project Manager</xsl:when>
		<xsl:when test="empage &gt; 40">Team Leader</xsl:when>
		<xsl:otherwise>Developer</xsl:otherwise>
		</xsl:choose>
		</td>
		</tr>
		</xsl:for-each>
		</table>
		</body>
		</html>
	</xsl:template>
</xsl:stylesheet>