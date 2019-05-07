<%@page import="com.javatpoint.dao.CategoryDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Category"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=CategoryDao.save(u);
if(i>0){
response.sendRedirect("addCategory-success.jsp");
}else{
response.sendRedirect("addCategory-error.jsp");
}
%>