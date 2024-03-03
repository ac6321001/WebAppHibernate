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
	String fname=request.getParameter("fname");
	String lname=request.getParameter("lname");
	String email=request.getParameter("email");
	String pass=request.getParameter("pass");
	
	User us=new User();
	us.setId(Integer.parseInt(id));
	us.setFname(fname);
	us.setLname(lname);
	us.setEmail(email);
	us.setPassword(pass);
	
	int st=Dao.updateUser(us);
	
	if(st>0){
		out.print("Record Updated..");
		out.print("<a href='ListUser.jsp'>List of User</a>");
	}

	%>
</body>
</html>