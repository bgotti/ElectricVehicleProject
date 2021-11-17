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
        <title>Purchase System</title>
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        
        <%--Nav / Header--%>
        <header>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div>
                    <a href="purchase.jsp" class="navbar-brand"> Purchase Application</a>
                </div>

                <ul class="navbar-nav">
                    <li><a href="index.jsp" class="nav-link" style="color:white">Home Page</a></li>
                      <li class="nav-link" style="color:white"><a href="index.jsp#why" style="color:white">Why Terra</a></li>
                       <li class="nav-link" style="color:white"><a href="index.jsp#about" style="color:white">About Us</a></li>
           
                </ul>
            </nav>
        </header>
        <br>        
        <%--Nav / Header--%>
        
        <div class="row">    
        <div class="container">
       
            <h3 class="text-center">Purchase Order</h3>
            <hr><br>
             
            <h3 class="text-left">Retail Price: $50,000</h3><br>
               
            <form action="Controller" method="POST">
            <div class="form-group">
                
           
                <label>Customer ID: </label><br>
                <input class="form-control" type="number" name="txtid" required><br>
                <label>Full Name: </label><br>
                <input class="form-control" type="text" name="txtname" required><br>
                <label>Address: </label><br>
                <input class="form-control" type="text" name="txtaddress" required><br>
            
                 <label>Email: </label><br>
                <input class="form-control" type="email" name="txtemail" required><br>
                
                <label>Credit Card Number: </label><br>
                <input class="form-control" type="number" name="txtnumber" pattern="[0-9\s]{13,16}" autocomplete="cc-number" size="18" maxlength="16" placeholder="xxxx xxxx xxxx xxxx" required><br>
                 <label>Expiry Date: </label><br>
                <input class="form-control" type="number" name="txtexpiry" size="6" minlength="5" maxlength="5" placeholder="MM/YY" required><br>
                <label>CVV: </label><br>
                <input class="form-control" type="number" name="txtcvv" size="1" minlength="3" maxlength="3" placeholder="000" required><br>
                <br>
                <input class="btn btn-primary btn-block" type="submit" name="action" value="Buy"> 
             </div>

            </form>
                          
            </div>

        </div>
        
    </body>
</html>
