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
	String ids=request.getParameter("id");
	int id=Integer.parseInt(ids);
	int st=Dao.deleteStud(id);
	
	if(st>0){
		out.print("Record "+id+" Deleted..");
		request.getRequestDispatcher("ListUser.jsp").include(request, response);
	}
	%>
</body>
</html>