<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 40px;">
    <div class="container">
        <h2 class="display-4">Saving choice in cookies</h2>
        <hr>
<%
String cho=request.getParameter("genre");
Cookie c1=new Cookie("prefgenre",cho);
c1.setMaxAge(60);
response.addCookie(c1);
%>
     Your choice is stored in cookie.   
    </div>
</body>
</html>