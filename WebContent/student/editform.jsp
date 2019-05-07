<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.Student"%>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.dao.StudentDao"%>
<%
String id=request.getParameter("id");
Student u=StudentDao.getRecordById(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editStudent.jsp" method="post">
<input type="hidden" name="id" value="<%=u.getId() %>"/>
<table>
<tr><td>Nom:</td><td><input type="text" name="firstName" value="<%= u.getFirstName()%>"/></td></tr>
<tr><td>Prenom:</td><td><input type="text" name="lastName" value="<%= u.getLastName()%>"/></td></tr>
<tr><td>UserName:</td><td><input type="text" name="userName" value="<%= u.getUserName()%>"/></td></tr>

<tr><td colspan="2"><input type="submit" value="Editer "/></td></tr>
</table>
</form>

</body>
</html>