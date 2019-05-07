<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Edit Form</title>
</head>
<body>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.Category"%>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.dao.CategoryDao"%>
<%
String id=request.getParameter("id");
Category u=CategoryDao.getRecordById(Integer.parseInt(id));
%>

<h1>Edit Form</h1>
<form action="editCategory.jsp" method="post">
<input type="hidden" name="id" value="<%=u.getId() %>"/>
<table>
<tr><td>libellé:</td><td><input type="text" name="label" value="<%= u.getLabel()%>"/></td></tr>
<tr><td>description:</td><td><input type="text" name="description" value="<%= u.getDescription()%>"/></td></tr>

<tr><td colspan="2"><input type="submit" value="Editer "/></td></tr>
</table>
</form>

</body>
</html>