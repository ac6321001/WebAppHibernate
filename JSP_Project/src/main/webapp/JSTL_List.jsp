<%@page import="dao.Dao"%>
<%@page import="modal.User"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="p" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>

</head>
<body>

	<%
		List<User> list=Dao.listofUser();
		request.setAttribute("list", list);
		
	%>
			<p:out value="${'List Of User'}"/>
			
			<table class="table">
			<thead>
    <tr>
      <th scope="col">Id</th>
      <th scope="col">First</th>
      <th scope="col">Last</th>
      <th scope="col">Email</th>
      <th scope="col">Password</th>
       <th scope="col">update</th>
        <th scope="col">delete</th>
    </tr>
  </thead>
  <tbody>
			<p:forEach items="${list}" var="u">
				  <tr>
      <th scope="row"></th>
      <td>${u.getId()}</td>
      <td>${u.getLname()}</td>
      <td>${u.getEmail()}</td>
      <td>${u.getPassword()}</td>
         <td><a href="update.jsp?id="${u.getId()}>update</a></td>
            <td><a href="delete.jsp?id="${u.getId()}>delete</a></td>
    </tr>
			</p:forEach>
			  
  </tbody>
</table>
</body>
</html>