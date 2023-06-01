<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>cars</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 40px;">
<div class="container">
    <h2 class="display-4">List of Models</h2>
    <%
    String cnm=request.getParameter("comp");
    String typ=request.getParameter("type");
    %>
Company : <%=cnm%> | Type : <%=typ %>
<hr>
<table class="table table-bordered table-hover">
    <tr>
        <th>Model Name</th>
        <th>Price</th>
    </tr>

    <%
    Connection con;
    PreparedStatement pst;
    ResultSet rs;
    
    try
    {
    	Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://b1oehy5f91utjrdvigyq-mysql.services.clever-cloud.com:3306/b1oehy5f91utjrdvigyq?user=uhyfgotpc52j30ch&password=FO0oJToG78PfEZQXc0CJ");
		pst=con.prepareStatement("select * from products where company=?");
		pst.setString(1,cnm);
		rs=pst.executeQuery();
		
		while(rs.next())
		{
			%>
			<tr>
			<td><%=rs.getString("prodnm") %>
			<td><%=rs.getDouble("price") %>
			</tr>
			<%
		}
		con.close();
		
    }
    catch(Exception e)
    {
    	out.print(e);
    }
    
    %>

</table>
</div>
</body>
</html>