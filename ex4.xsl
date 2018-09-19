<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
        <title>Book List</title>
<style>
body
{
font-family : "cursive";
font-size : 20px;
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
  <table border="1 solid black">
    <tr bgcolor= "pink">
      <th>Book-ID</th>
      <th>Title</th>
      <th>Author</th>
      <th>Publication</th>
      <th>Price</th>
    </tr>
    <xsl:for-each select="class/Book">
    <tr>
 <xsl:choose>
      <xsl:when test="Publication ='Magnum'">
<xsl:attribute name="style">background-color: blue</xsl:attribute>

      <td><xsl:value-of select="Book_ID"/></td>
      <td><xsl:value-of select="Title"/></td>
      <td><xsl:value-of select="Author"/></td>
      <td><xsl:value-of select="Publication"/></td>
   <td>   <xsl:value-of select="Price"/></td>
      </xsl:when>
      <xsl:otherwise>
      <td><xsl:value-of select="Book_ID"/></td>
         <td><xsl:value-of select="Title"/></td>
         <td><xsl:value-of select="Author"/></td>
         <td><xsl:value-of select="Publication"/></td>
      <td><xsl:value-of select="Price"/></td>
      </xsl:otherwise>
      </xsl:choose>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
