<%@page import="com.javatpoint.dao.StudentDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Student"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=StudentDao.save(u);
if(i>0){
response.sendRedirect("addStudent-success.jsp");
}else{
response.sendRedirect("addStudent-error.jsp");
}
%>