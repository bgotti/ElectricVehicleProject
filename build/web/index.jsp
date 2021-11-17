<%-- 
    Document   : index
    Created on : 1-Nov-2021, 5:45:54 PM
    Author     : Brian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="style.css"/> 
        <title>Terra Page - Electric Vehicle</title>
    </head>
    <body>

  <div class="navbar">
    <h1 class="header"><a href="index.jsp">Terra</a></h1>
    <div class="hamburger">
        <div class="line"></div>
        <div class="line"></div>
        <div class="line"></div>
    </div>



    <ul class="menu">
      <li><a href="#why">Why Terra</a></li>
      <li><a href="#about">About Us</a></li>
      <li><a href="login.jsp">Login</a></li>
      <li><a href="purchase.jsp">Buy Now</a></li>
   
    </ul>
  </div>

  <div class="hero">
    <h1>Drive Terra Now</h1>
    <p>Ideal for car enthusiast and clean environment.</p>
    <button onclick="window.location.href='purchase.jsp'">Buy Now</button>
    <img src="https://static.euronews.com/articles/stories/05/87/51/42/1440x810_cmsv2_46e8f67e-b41c-598a-9b6d-e1d7712a26d8-5875142.jpg" alt="car">
  </div>

  <div class="heading">
      <h1 id="why">Why Terra ?</h1>
  </div>

  <div class="benefits">

    <div class="card">
      <h3>Durable battery.</h3><br>
      <p>No need to change battery every 2 or 3 years.</p>
    </div>
     <div class="card">
      <h3>Save money on gas.</h3><br>
      <p>Sick and tired of spending thousand of dollars every year in gas.</p>
    </div>
     <div class="card">
      <h3>New electric vehicle.</h3><br>
      <p>You suddenly care more about the environment and pollution now.</p>
    </div>

  </div>

  <div class="testimonial">
    <h3>"Amazing vehicle! This is the best purchase I have made."</h3>
    <p>Susan Smith</p>

  </div>

   <div class="socialproof" id="about">
      <h1>Terra car has made history.</h1>
      <div class="sc_copy">
        <p>Sold over <span class="bold">10 millions</span> units worldwide.</p>
        <p>Generated hundreds of billions in sales.</p>
        <p>Available in more than <span class="bold">50 countries</span>.</p>
      </div>

  </div>

  <div class="calltoaction">
    <h1>Your day has come to own your very own Terra car.</h1>
    <p>Get your brand car within 7 days.</p>
    <p> Delivered to your house or come to pick it up.</p>
    <button onclick="window.location.href='purchase.jsp'">Buy Now</button>
    <hr>
  </div>
        
        <script type="text/javascript" src="script.js">
        </script>    
   </body>
</html>
