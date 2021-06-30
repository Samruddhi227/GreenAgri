<?php
session_start();
?>
<!DOCTYPE html>
<html>
    <head>
        <link rel="shortcut icon" href="img\intro-bg_1.jpg" />
        <title>GreenAgri Store</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- latest compiled and minified CSS -->
        <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" type="text/css">
        <!-- jquery library -->
        <script type="text/javascript" src="bootstrap/js/jquery-3.2.1.min.js"></script>
        <!-- Latest compiled and minified javascript -->
        <script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
        <!-- External CSS -->
        <link rel="stylesheet" href="css/style.css" type="text/css">
    </head>
    <body>
        <div>
           <?php
            require 'header.php';
           ?>
           <div id="bannerImage">
               <div class="container">
                   <center>
                   <div id="bannerContent">
                       <h1>We sell .</h1>
                       <p>  All Agri Products .</p>
                       <a href="products.php" class="btn btn-danger">Shop Now</a>
                   </div>
                   </center>
               </div>
           </div>
           <div class="container">
               <div class="row">
                   <div class="col-xs-4">
                       <div  class="thumbnail">
                           <a href="products.php">
                                <img src="img/chemical.jpg" alt="Chemical">
                           </a>
                           <center>
                                <div class="caption">
                                        <p id="autoResize">Chemical Fertilizers</p>
                                        <p> the best for crop.</p>
                                </div>
                           </center>
                       </div>
                   </div>
                   <div class="col-xs-4">
                       <div class="thumbnail">
                           <a href="products.php">
                               <img src="img\organic.jpg" alt="Organic Fertilizers">
                           </a>
                           <center>
                                <div class="caption">
                                    <p id="autoResize">Organic Fertilizers</p>
                                    <p> best Product.</p>
                                </div>
                           </center>
                       </div>
                   </div>
                   <div class="col-xs-4">
                       <div class="thumbnail">
                           <a href="products.php">
                               <img src="img\insecticides.jpg" alt="Insecticides">
                           </a>
                           <center>
                               <div class="caption">
                                   <p id="autoResize">Insecticides</p>
                                   <p>Our exquisite.</p>
                               </div>
                           </center>
                       </div>
                   </div>
               </div>
           </div>
            <br><br> <br><br><br><br>
           <footer class="footer"> 
               <div class="container">
               <center>
               This website is developed by Kolase Samruddhi P.
               </center>
               </div>
           </footer>
        </div>
    </body>
</html>