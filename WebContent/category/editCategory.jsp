<%@page import="com.javatpoint.dao.CategoryDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Category"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=CategoryDao.update(u);
response.sendRedirect("viewCategory.jsp");
%>