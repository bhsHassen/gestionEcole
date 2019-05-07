<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Categorys</title>
</head>
<body>

<%@page import="com.javatpoint.dao.CategoryDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1> Liste des Categories</h1>

<%
List<Category> list=CategoryDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>libellé</th><th>description</th>

<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getLabel()}</td><td>${u.getDescription()}</td>
	<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
	<td><a href="deleteCategory.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="addCategoryform.jsp">Ajouter une categorie</a>
<a href="../index.jsp">Home</a>
</body>
</html>