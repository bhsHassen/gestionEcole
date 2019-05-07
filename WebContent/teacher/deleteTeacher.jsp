<%@page import="com.javatpoint.dao.TeacherDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Teacher"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
TeacherDao.delete(u);
response.sendRedirect("viewTeacher.jsp");
%>