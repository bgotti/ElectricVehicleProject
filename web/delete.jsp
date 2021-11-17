<%-- 
    Document   : main
    Created on : 29-Oct-2021, 7:54:50 PM
    Author     : Brian
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
    <head>
         <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Delete Customer</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        
        <%--Nav / Header--%>
        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div>
                    <a href="main.jsp" class="navbar-brand"> Customer Management Application</a>
                </div>

                <ul class="navbar-nav">
                    <li><a href="main.jsp" class="nav-link" style="color:white">Customer List</a></li>
                    <li><a href="add.jsp" class="nav-link" style="color:white">New</a></li>
                    <li><a href="edit.jsp" class="nav-link" style="color:white">Edit</a></li>
                    <li><a href="delete.jsp" class="nav-link">Delete</a></li>
                    <li><a href="index.jsp" class="nav-link" style="color:white">Log out</a></li>
                </ul>
            </nav>
        </header>
         <br>
        <%--Nav / Header--%>
        
       
            <div class="row">
                
                <div class="container">
                <h3 class="text-center">Delete Customers</h3>
                <hr>
                <form action="Controller" method="POST">
                      <input type="submit" name="action" value="Display" class="btn btn-success">
                      <input type="submit" name="action" value="New" class="btn btn-success">
                </form>
                
                <br>
                <table class="table table-bordered">
                    <thead>
                        <tr>
                            <th>Customer Id</th>
                            <th>Name</th>
                            <th>Address</th>
                  
                            <th>Email</th>
                            <th>Actions</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="customer" items="${customers}">   
                        <tr>
                               <td>${customer.getId()}</td>
                               <td>${customer.getName()}</td>
                               <td>${customer.getAddress()}</td>
                       
                               <td>${customer.getEmail()}</td>
                               <td>
                                    <form action="Controller" method="POST">
                                      
                                         <input type="hidden" name="id" value="${customer.getId()}">
                                         <input type="submit" name="action" value="Edit" class="btn btn-warning float-left">
                                         <input type="submit" name="action" value="Delete" class="btn btn-danger float-right">
                                         
                                    </form>
                               </td>
                        </tr>
                        </c:forEach>   
                    </tbody>
                </table>
                </div>
          
            </div>    
       
         
        
    </body>
</html>
