<%@page import="com.javatpoint.dao.TeacherDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Teacher"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=TeacherDao.save(u);
if(i>0){
response.sendRedirect("addTeacher-success.jsp");
}else{
response.sendRedirect("addTeacher-error.jsp");
}
%>