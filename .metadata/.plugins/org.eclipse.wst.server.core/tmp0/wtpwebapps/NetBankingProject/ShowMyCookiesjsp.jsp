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
        <h2 class="display-4">Your cookies...</h2>
        <hr>
        
        <%
        Cookie c[]=request.getCookies();
        if(c!=null)
        {
        	for(int i=0;i<c.length;i++)
        	{
        		out.println("<br>Name :"+c[i].getName());
        		out.println(" | value :"+c[i].getValue());
        		
        		
        		if(c[i].getValue().equals("action"))
        		{
        			%>
        			<br>
        			<iframe width="560" height="315" src="https://www.youtube.com/embed/2m1drlOZSDw" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        			
        			<%
        		}
        		if(c[i].getValue().equals("horror"))
        		{
        			%>
        			<br>
        			<iframe width="560" height="315" src="https://www.youtube.com/embed/P2KRKxAb2ek" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share" allowfullscreen></iframe>
        			
        			<%
        		}
        		
        		
        		
        		
        	}
        }
        %>
        
</div>
</body>
</html>