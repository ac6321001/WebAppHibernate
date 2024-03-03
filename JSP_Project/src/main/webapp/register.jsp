<%@page import="dao.Dao"%>
<%@page import="modal.User"%>
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
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("email");
		String pass=request.getParameter("pass");
		
		User us=new User();
		us.setFname(fname);
		us.setLname(lname);
		us.setEmail(email);
		us.setPassword(pass);
		
		int st=Dao.save(fname, lname, email, pass);
		
		if(st>0){
			out.print("Record Saved..");
		}
	%>
	
</body>
</html>