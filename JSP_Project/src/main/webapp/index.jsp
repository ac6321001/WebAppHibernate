<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<!-- <jsp:include  page="NavFile.jsp" />  -->

<%@include file="NavFile.jsp" %>
	<h1>Register Page</h1>
	<h3><%=new Date()%></h3>
	<form style="text-center" class="w-50 m-auto" action="register.jsp">
		<input type="text" name="fname" placeholder="fname"><br>
		<input type="text" name="lname" placeholder="lname"><br>
		<input type="email" name="email" placeholder="email"><br>
		<input type="password" name="pass" placeholder="password"><br>
		<input type="submit" value="Register Here">
	</form>
	
	<%="Welcome to JSP" %>
	
</body>
</html>