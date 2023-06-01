<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 40px;">
	<div class="container">
	
	<%
	if(session.getAttribute("userid")!=null && session.getAttribute("usertype").equals("manager"))
	{
	%>
		<h1 class="display-4">Account Report</h1>
		<a href="Manager.jsp">Home</a>
		<hr>
		<table class="table table-bordered table-hover">
			<tr style="background-color: rgb(224, 178, 201);">
				<th>Number</th>
				<th>Name</th>
				<th>Type</th>
				<th>Balance</th>
			</tr>
			<%
			Connection con;
			Statement st;
			ResultSet rs;
			
			try
			{
				Class.forName("com.mysql.cj.jdbc.Driver");
				con=DriverManager.getConnection("jdbc:mysql://b1oehy5f91utjrdvigyq-mysql.services.clever-cloud.com:3306/b1oehy5f91utjrdvigyq?user=uhyfgotpc52j30ch&password=FO0oJToG78PfEZQXc0CJ");
				st=con.createStatement();
				rs=st.executeQuery("select * from accounts");
				while(rs.next())
				{
					%>
					<tr>
						<td><%=rs.getInt("accno")%></td>
						<td><%=rs.getString("accnm")%></td>
						<td><%=rs.getString("acctype")%></td>
						<td><%=rs.getDouble("balace")%></td>
					</tr>
					<%
				}
				con.close();
			}
			catch(Exception e)
			{
				out.println(e);
			}
			
			%>
			
			</table>
<%
	}
	else
	{
		%>
		<h2>Invalid session...</h2>
		<br>
		please login to see the information
		<br>
		<a href="AdminLogin.jsp">Admin Home</a>
		<%
		}
		%>
				
	 
		
	</div>

</body>
</html>