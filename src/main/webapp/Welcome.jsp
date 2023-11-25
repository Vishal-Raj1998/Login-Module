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
		//response.setHeader("pragma","no-cache");//1.0
		//response.setHeader("Expires","0");//proxies
		if(session.getAttribute("uname")==null){
		//	session.removeAttribute("uname");
			response.sendRedirect("login.jsp");
		}
		%>
	
	
click here
	<form action="logout.jsp">
		<input type="submit" value="logout">
	</form>
</body>
</html>