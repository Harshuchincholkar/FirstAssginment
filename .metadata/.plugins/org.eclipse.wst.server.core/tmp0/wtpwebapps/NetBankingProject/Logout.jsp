<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 40px;">
<div class="container">
<h1 class="display-4">Logged out!</h1>
<hr>
You are successfully logged out.
<br>
<%
session.invalidate();
%>
<a href="index.jsp">Home</a>

</div>
</body>
</html>