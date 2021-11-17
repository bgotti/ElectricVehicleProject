<%-- 
    Document   : login
    Created on : 1-Nov-2021, 5:45:54 PM
    Author     : Brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Font Awesome -->
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.1/css/all.min.css"
          rel="stylesheet"
        />
        <!-- Google Fonts -->
        <link
          href="https://fonts.googleapis.com/css?family=Roboto:300,400,500,700&display=swap"
          rel="stylesheet"
        />
        <!-- MDB -->
        <link
          href="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.css"
          rel="stylesheet"
        />
        <title>Login</title>
    </head>
    <body>
    <!-- Nav -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <div class="container-fluid">
        <a class="navbar-brand" href="login.jsp">Terra Login</a>
        <button
          class="navbar-toggler"
          type="button"
          data-mdb-toggle="collapse"
          data-mdb-target="#navbarNav"
          aria-controls="navbarNav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarNav">
          <ul class="navbar-nav">
            <li class="nav-item">
              <a class="nav-link" href="index.jsp">Home</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.jsp#why">Why Terra</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="index.jsp#about">About Us</a>
            </li>

          </ul>
        </div>
      </div>
    </nav>
    <!-- Nav -->
    
         <form action="LoginController" method="post">
          <section class="vh-100" style="background-color: #508bfc;">
          <div class="container py-5 h-100">
            <div class="row d-flex justify-content-center align-items-center h-100">
              <div class="col-12 col-md-8 col-lg-6 col-xl-5">
                <div class="card shadow-2-strong" style="border-radius: 1rem;">
                  <div class="card-body p-5 text-center">

                    <h3 class="mb-5">Sign in</h3>

                    <div class="form-outline mb-4">
                      <input id="typeEmailX-2" class="form-control form-control-lg" type="text" name="username"/>
                      <label class="form-label" for="typeEmailX-2">Username</label>
                    </div>

                    <div class="form-outline mb-4">
                      <input type="password" id="typePasswordX-2" class="form-control form-control-lg" name="password"/>
                      <label class="form-label" for="typePasswordX-2">Password</label>
                    </div>
               
                    <input class="btn btn-primary btn-lg btn-block" type="submit" value="Login">
                     </form>

                    <hr class="my-4">
                     <div align = "center">
                        <p style="color: red">${param["message"]}</p>
                    </div>


                  </div>
                </div>
              </div>
            </div>
          </div>
                  
        </section>
        <script
  type="text/javascript"
  src="https://cdnjs.cloudflare.com/ajax/libs/mdb-ui-kit/3.6.0/mdb.min.js"
></script>
    </body>
</html>
