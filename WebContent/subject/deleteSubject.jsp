<%@page import="com.javatpoint.dao.SubjectDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Subject"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
SubjectDao.delete(u);
response.sendRedirect("viewSubject.jsp");
%>