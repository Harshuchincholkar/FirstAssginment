<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>balance info</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 40px;">
    <div class="container">
        <h2 class="display-4">Account Information</h2>
        <hr>
<%
String uid=session.getAttribute("userid").toString();
//out.println("User :"+uid);
Connection con;
PreparedStatement pst1;
ResultSet rs1;
int ano=0;
double bal=0.0;

try
{
	Class.forName("com.mysql.cj.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://b1oehy5f91utjrdvigyq-mysql.services.clever-cloud.com:3306/b1oehy5f91utjrdvigyq?user=uhyfgotpc52j30ch&password=FO0oJToG78PfEZQXc0CJ");
	ano=(Integer) session.getAttribute("accno");
	pst1=con.prepareStatement("select * from accounts where accno=?");
	pst1.setInt(1,ano);
	rs1=pst1.executeQuery();
	rs1.next();
	bal=rs1.getDouble("balance");
	con.close();
}
catch(Exception e)
{
	out.println(e);
}
%>
<span style="color:blue;font-size:15px">
UserID : <%=uid %>
<br>
Account Number : <%=ano %>
<br>
Balance : <b><%=bal %></b>
</span>
<br><br>
<a href="Customer.jsp"><img src="net.jpeg" height="45"></a>

    </div>

</body>
</html>