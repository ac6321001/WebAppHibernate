<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <%! int squarea(int n){          ////.......(declaration tag)
	 return n*n;
 } 
 %>
 <h1>
  
 <%!       
    out.print(squarea(5));                   
  %>                           ////.......(scriplet)
  
  
  <%=squarea(9)%>              ////...........(expression tag)
 </h1>

</body>
</html>