<%@page import="com.javatpoint.dao.SubjectDao"%>
<jsp:useBean id="u" class="com.javatpoint.bean.Subject"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>

<%
int i=SubjectDao.save(u);
if(i>0){
response.sendRedirect("addSubject-success.jsp");
}else{
response.sendRedirect("addSubject-error.jsp");
}
%>