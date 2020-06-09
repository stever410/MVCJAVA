<%-- 
    Document   : admin
    Created on : Jun 8, 2020, 2:23:10 PM
    Author     : ngota
--%>

<%@page import="java.util.List"%>
<%@page import="ducnt.dtos.RegistrationDTO"%>
<%@page import="ducnt.dtos.RegistrationDTO"%>
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
            <h1 class="col-sm-4">Hello admin</h1>
            <form class="form-inline" action="MainController" method="POST">
                <div class="form-group col-sm-4">
                    <label class="col-sm-4">Enter full name:</label>
                    <input type="text" class="form-control col-sm-8" name="txtSearch" value="">
                </div> 
                <button type="submit" class="btn btn-primary col-sm-1" value="Search" name="action">Search</button>
            </form>
            <%
                List<RegistrationDTO> result = (List<RegistrationDTO>) request.getAttribute("INFO");
                if (result != null) {
                    if (result.size() > 0) {
            %>
            <h2 class="col-sm-4">Search result: </h2>
            <table class="table table-hover table-responsive" border="1">
                <thead>
                    <tr>
                        <th>No</th>
                        <th>Username</th>
                        <th>Fullname</th>
                        <th>Role</th>
                        <th>Delete</th>
                        <th>Update</th>
                    </tr>
                </thead>
                <tbody>
                    <%
                        int count = 0;
                        for (RegistrationDTO dto : result) {
                    %>
                    <tr>
                        <td><%= ++count%></td>
                        <td><%= dto.getUsername()%></td>
                        <td><%= dto.getFullname()%></td>
                        <td><%= dto.getRole()%></td>
                        <td>Delete</td>
                        <td>Update</td>
                    </tr>
                    <%
                        }
                    %>
                </tbody>
            </table>
            <%
            } else {
            %>
            <font color="red">
            No record found.
            </font>
            <%
                    }
                }
            %>
        </div>
    </body>
</html>
