<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>NetBanking</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 50px;">
  <%
Calendar cal=Calendar.getInstance();
String dt=cal.getTime().toLocaleString();
%>


    <div class="container">
    
    
        <table style="border: 1px solid black;" class="table">
            <td><img src="networking.jpeg" width="550px" height="550"></td>
            <td>
            <br><br>
                <table>
                    <form method="post" action="Login" class="form-control">
                     <td>
                
          <td>
                <h1 class="display-4"><b>Net Banking Application</b></h1>
                <hr>
                <a href="ShowCars.jsp?comp=volkswagen&type=hatchback">Volkswagen</a> | 
<a href="ShowCars.jsp?comp=skoda&type=suv">Skoda</a> | 
<a href="ShowCars.jsp?comp=honda&type=sedan">Honda</a> | 
<a href="ShowCars.jsp?comp=tata&type=hatchback">Tata</a> | 
<a href="ShowCars.jsp?comp=hyundai&type=hatchback">Hyundai</a> | 
<a href="ShowCars.jsp?comp=maruti suzuki&type=sedan">Maruti Suzuki</a> 
       <hr>
                <br>
                    <tr>
                        <td>UserID</td>
                        <td><input type="text" name="uid" autocomplete="off" required class="form-control"></td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td><input type="password" name="psw" autocomplete="off" required class="form-control"></td>
                    </tr>
                     <br>
                    <br>
                    <tr>
      
                     <td></td>
            
                        <td><input type="submit" value="Submit" class="btn btn-outline-primary"></td>
                       
                    </tr>
                    </td>
                    </td>
                    </form>
                    
                
                </table>
                <br>
                <hr>
                
                <div class="text-center">
                <p>Not a Member?<a href="NewUser.html">Register Now.</a></p>
                
                <a href="TryHidden.html">Try Hidden form data</a>
                
                </div>
            </td>
        </table>

<span>
<br>
harshu&copy;2023
</span>
    </div>

</body>
</html>