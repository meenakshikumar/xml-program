<?xml version="1.0"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
    <head>
        <title>Book List</title>
<style>
body
{
font-family : "Cursive";
font-size : 18px;
}
table,th,td
{
border: 2px solid black;
}
td,th
{
    padding: 8px;
}
th
{
 padding-top: 12px;
    padding-bottom: 12px;
}
</style>
</head>
<body>
	<table>
		<tr bgcolor = "green">
		<th>Book_ID</th>
		<th>Title</th>
		<th>Author</th>
		<th>Publication</th>
		<th>Price</th>
		</tr>

<xsl:for-each select="class/Book">
<tr>
<td>
<xsl:value-of select = "@Book_ID"/>
</td>
<td><xsl:value-of select = "Title"/></td>
<td><xsl:value-of select = "Author"/></td>
<td><xsl:value-of select = "Publication"/></td>
<td><xsl:value-of select = "Price"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
