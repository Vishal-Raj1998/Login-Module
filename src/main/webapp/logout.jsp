<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		response.setHeader("Cache-Control", "no-cache,no-store,must-revalidate") ;
		session=request.getSession();
		session.removeAttribute("uname");
		session.invalidate();
		response.sendRedirect("login.jsp");
	%>
</body>
</html>