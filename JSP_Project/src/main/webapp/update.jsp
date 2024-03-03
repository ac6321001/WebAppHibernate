<%@page import="modal.User"%>
<%@page import="dao.Dao"%>
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
		String id=request.getParameter("id");
		 User us=Dao.UserById(Integer.parseInt(id));
		 
	%>
	<form style="text-center" class="w-50 m-auto" action="finalupdate.jsp">
		<input type="hidden" name="id" value="<%=us.getId() %>">
		<input type="text" value="<%=us.getFname() %>" name="fname" placeholder="fname"><br>
		<input type="text" value="<%=us.getLname() %>" name="lname" placeholder="lname"><br>
		<input type="email" value="<%=us.getEmail() %>" name="email" placeholder="email"><br>
		<input type="password" value="<%=us.getPassword()%>" name="pass" placeholder="password"><br>
		<input type="submit" value="Update">
	</form>
	
	
</body>
</html>