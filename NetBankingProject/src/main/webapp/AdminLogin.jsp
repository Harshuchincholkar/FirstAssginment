<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<link rel="stylesheet" href="bootstrap.min.css">
</head>
<body style="margin-top: 49px;">

    <div class="container" >
        <h2 class="display-4">Admin Login</h2>
        <hr>
        <form action="AdminCheck" method="post">
            <table>
                <tr>
                    <td>UserID</td>
                    <td><input type="text" name="uid" autocomplete="off" required class="form-control"></td>
                </tr>
                <tr>
                    <td>Password</td>
                    <td><input type="password" name="psw" autocomplete="off" required class="form-control"></td>
                </tr>
                <tr>
                <td></td>
                    <td><input type="submit" value="Submit" class="btn btn-outline-primary"></td>
                    
                </tr>
            </table>
        </form>
<img class="bg-img" src="admin.jpg">
    </div>


</body>
</html>