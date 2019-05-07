<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>creation Form</title>
</head>
<body>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.Subject"%>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.bean.Category"%>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.dao.SubjectDao"%>
<%@page import="com.javatpoint.dao.UserDao,com.javatpoint.dao.CategoryDao"%>
<%@page import="java.util.List"%>
<%

//Subject u=SubjectDao.getRecordById(Integer.parseInt(id));
List<Category>countries= CategoryDao.getAllRecords();
%>

<h1>Edit Form</h1>
<form action="addSubject.jsp" method="post">

<table>
<tr><td>libellé:</td><td><input type="text" name="label" value=""/></td></tr>
<tr><td>description:</td><td><input type="text" name="description" value=""/></td></tr>
<tr><td>
<select name="Categorie"> 
 <c:forEach items="${counties}" var="counties"> 
      <option value="${counties.getId}">${counties.getLabel}></option> 
 </c:forEach> 
</select>
</td></tr>

<tr><td colspan="2"><input type="submit" value="Editer "/></td></tr>
</table>
</form>

</body>
</html>