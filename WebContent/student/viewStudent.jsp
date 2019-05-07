<!DOCTYPE html>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>View Students</title>
</head>
<body>

<%@page import="com.javatpoint.dao.StudentDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<h1> Liste des étudiants</h1>

<%
List<Student> list=StudentDao.getAllRecords();
request.setAttribute("list",list);
%>

<table border="1" width="90%">
<tr><th>Id</th><th>Nom</th><th>Prenom</th><th>userName</th><th>Edit</th><th>Delete</th></tr>
<c:forEach items="${list}" var="u">
	<tr><td>${u.getId()}</td><td>${u.getFirstName()}</td><td>${u.getLastName()}</td>
	<td>${u.getUserName()}</td><td><a href="editform.jsp?id=${u.getId()}">Edit</a></td>
	<td><a href="deleteStudent.jsp?id=${u.getId()}">Delete</a></td></tr>
</c:forEach>
</table>
<br/><a href="addStudentform.jsp">Ajouter un étudiant</a>
<a href="../index.jsp">Home</a>
</body>
</html>