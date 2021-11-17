<%-- 
    Document   : complete
    Created on : 2-Nov-2021, 2:33:09 AM
    Author     : Brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Thank You - Completed Purchase</title>
         <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" integrity="sha384-ggOyR0iXCbMQv3Xipma34MD+dH/1fQ784/j6cY/iJTQUOhcWr7x9JvoRxT2MZw1T" crossorigin="anonymous">
    </head>
    <body>
        
          <%--Nav / Header--%>
            <nav class="navbar navbar-expand-sm bg-dark navbar-dark">
                <div>
                    <a href="index.jsp" class="navbar-brand"> Terra</a>
                </div>

                <ul class="navbar-nav">
                    <li><a href="index.jsp" class="nav-link" style="color:white">Home Page</a></li>
                      <li class="nav-link" style="color:white"><a href="index.jsp#why" style="color:white">Why Terra</a></li>
                       <li class="nav-link" style="color:white"><a href="index.jsp#about" style="color:white">About Us</a></li>
           
                </ul>
            </nav>

        <%--Nav / Header--%>
  
        <div class="jumbotron text-center">
        <h1 class="display-3">Thank You!</h1>
        <p class="lead"><strong>Please check your email</strong> to follow up with your order.</p>
        <hr>
        <p class="lead">
          <a class="btn btn-primary btn-sm" href="index.jsp" role="button">Continue to Home Page</a>
        </p>
      </div>
    </body>
</html>
