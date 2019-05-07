<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Subjects</title>
</head>
<body>

<%@page import="com.javatpoint.dao.SubjectDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1> Liste des matieres</h1>

<%
List<Subject> list=SubjectDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>libellé</th><th>description</th>

<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getLabel()}</td><td>${u.getDescription()}</td>
	<td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
	<td><a href="deleteSubject.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="addSubjectform.jsp">Ajouter une matiere</a>
<a href="../index.jsp">Home</a>
</body>
</html>