<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>customer</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 40px;">
<%
String uid=session.getAttribute("userid").toString();
%>

    <div class="container">
        <h2 style="color:darkgreen" class="display-4">Account Holder Home</h2>
        Logged in as : <%=uid %> | 
        Account Number : <%=session.getAttribute("accno") %> | 
        Session ID : <%=session.getId() %>
        <br>
        Logged in at : <b><%=session.getAttribute("logtime")%></b>
        <br>
        <img src="images/<%=uid%>.jpg" width="150" class="rounded">
        <hr>
        <a href="FindBalance.jsp">Find Balance</a>
        <br>
        <a href="TakeChoice.html">Take user choice for cookies</a>
        <br>
        <a href="ShowMyCookies.jsp">Show my cookies</a>
        <br>
        <a href="Logout.jsp">Logout</a>

    </div>
</body>
</html>