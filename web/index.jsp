<%-- 
    Document   : index
    Created on : Jun 7, 2020, 7:03:47 PM
    Author     : ngota
--%>
<a href="../../../Code In Class/DemoMVC2/web/index.jsp"></a>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <link rel="stylesheet" href="style.css">
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
        <title>JSP Page</title>
    </head>
    <body>
        <div class="contain-fluid">
            <h1 class="col-sm-4">Login Form</h1>
            <form action="MainController" method="POST">
                <div class="form-group col-sm-4">
                    <label>Email address</label>
                    <input type="text" class="form-control" name="txtUsername" value="">
                </div>
                <div class="form-group col-sm-4">
                    <label>Password</label>
                    <input type="password" class="form-control" name="txtPassword" value="">
                </div>
                <div class="form-group col-sm-4">
                    <button type="submit" class="btn btn-primary" value="Login" name="action">Submit</button>
                    <button type="submit" class="btn btn btn-link" value="Register" name="action">Register</button>
                </div>
            </form>
        </div>
    </body>
</html>
