<%-- 
    Document   : add
    Created on : 29-Oct-2021, 9:46:22 PM
    Author     : Brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Add Customer</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        
        <%--Nav / Header--%>
        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div>
                    <a href="main.jsp" class="navbar-brand"> Customer Management Application </a>
                </div>

                <ul class="navbar-nav">
                    <li><a href="main.jsp" class="nav-link" style="color:white">Customer List</a></li>
                    <li><a href="add.jsp" class="nav-link">New</a></li>
                     <li><a href="edit.jsp" class="nav-link" style="color:white">Edit</a></li>
                     <li><a href="delete.jsp" class="nav-link" style="color:white">Delete</a></li>
                     <li><a href="index.jsp" class="nav-link" style="color:white">Log Out</a></li>
                </ul>
            </nav>
        </header>
        <br>        
        <%--Nav / Header--%>
        
        <div class="row">    
        <div class="container">
       
            <h3 class="text-center">Add Customer</h3>
            <hr>
             
                     
            <form action="Controller" method="POST">
            <div class="form-group">      
                <label>Customer ID: </label><br>
                <input class="form-control" type="number" name="txtid" required><br>
                <label>Name: </label><br>
                <input class="form-control" type="text" name="txtname" required><br>
                <label>Address: </label><br>
                <input class="form-control" type="text" name="txtaddress" required><br>
            
                 <label>Email </label><br>
                <input class="form-control" type="email" name="txtemail" required><br><br>
                <input class="btn btn-primary btn-block" type="submit" name="action" value="Save"> 
             </div>

            </form>
                
                
            </div>

        </div>
        
    </body>
</html>
