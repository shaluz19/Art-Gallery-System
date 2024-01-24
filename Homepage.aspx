<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Homepage.aspx.cs" Inherits="Homepage" %>

<!DOCTYPE html>
<html>
<head>
<title>HOMEPAGE</title>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
<link href="Themes/layout/styles/layout.css" rel="stylesheet" type="text/css" media="all">
</head>
<body id="top">

<div class="wrapper row0">
  <div id="topbar" class="hoc clear"> 
  
    <div class="fl_left">
      <ul class="nospace">
        <li><i class="fas fa-mobile-alt rgtspace-5"></i> +91 8867344385/ 1234569870</li>
        <li><i class="far fa-envelope rgtspace-5"></i> 21MCAA200@kristujayanti.com</li>
      </ul>
    </div>
</div>
  <div class="wrapper row1">
  <section id="ctdetails" class="hoc clear"> 
   
    <ul class="nospace clear">
      <li class="one_quarter first">
        <div class="block clear"><a href="#"><i class="fas fa-phone"></i></a> <span><strong>Give us a call:</strong> +91  8971250322</span></div>
      </li>
      <li class="one_quarter">
        <div class="block clear"><a href="mailto:21MCAA30@kristujayanti.com"><i class="fas fa-envelope"></i></a> <span><strong>Send us a mail:</strong> project@kristujayanti.com</span></div>
      </li>
      <li class="one_quarter">
        <div class="block clear"><a href="#"><i class="fas fa-clock"></i></a> <span><strong> Mon. - Sat.:</strong> 10.00am - 10.00pm</span></div>
      </li>
      <li class="one_quarter">
        <div class="block clear"><a href="#"><i class="fas fa-map-marker-alt"></i></a> <span><strong>Come visit us:</strong> Directions to <a href="#">our location</a></span></div>
      </li>
    </ul>
  </section>
</div>
   
    
    <header id="header" class="hoc clear">
    <div id="logo" class="fl_left"> 
      <!-- ################################################################################################ -->
      <h1><a href="Themes/index.html">ARTELLERY</a></h1>
      <!-- ################################################################################################ -->
    </div>
    <nav id="mainav" class="fl_right"> 
      <!-- ################################################################################################ -->
      <ul class="clear">
        <li class="active"><a href="Themes/index.html">Home</a></li>
        <li class="active"><a class="drop" href="UserHome.aspx">Gallery</a>
          <ul>
            <li class="active"><a href="gallery.html">NATURE ARTS</a></li>
            <li><a href="full-width.html">PORTRAIT ARTS</a></li>
            <li><a href="sidebar-left.html">RELIGIOUS IDOLS</a></li>
            <li><a href="sidebar-right.html">SIMPLE ARTS</a></li>
            <li><a href="basic-grid.html">CUSTOMIZED PAINTINGS</a></li>
           
          </ul>
        </li>
        
        <li><a href="Registration.aspx">REGISTRATION</a></li>
        <li><a href="About.aspx">ABOUT US</a></li>
        <li><a href="Signin.aspx">USER LOGIN</a></li>
      </ul>
      <!-- ################################################################################################ -->
    </nav>
  </header>
    </div>
      
   <div class="wrapper row3">
  <main class="hoc container clear"> 
    <!-- main body -->
    <!-- ################################################################################################ -->
      
    <section id="introblocks">
      <ul class="nospace group grid-3" >
        <li class="one_third">
          <figure><a class="imgover" href="#"><img src="pics/nature.jpg" alt=""></a>
            <figcaption><a href="#">NATURE ART PAINTING</a></figcaption>
          </figure>
        </li>
        <li class="one_third">
          <figure><a class="imgover" href="#"><img src="pics/krishna.jpg" alt=""></a>
            <figcaption><a href="#">RELIGIOUS IDOL PAINTING</a></figcaption>
          </figure>
        </li>
        <li class="one_third">
          <figure><a class="imgover" href="#"><img src="pics/nature.jpg" alt=""></a>
            <figcaption><a href="#">PORTRAIT PAINTING</a></figcaption>
          </figure>
        </li>

          <marquee direction="left" scrollamount="10"> 
              <p="" style="color:black">EVENT DETAILS WILL BE UPDATED SOON !! <p></p></marquee>
          <br/>
      </ul>
    </section>



      <br/>
      <section id="Section1">
      <ul class="nospace group grid-3" >
       <li class="one_third">
          <figure><a class="imgover" href="#"><img src="pics/nature.jpg" alt=""></a>
          </figure>
       </li>
       <li class="one_third">       
          <figure><a class="imgover" href="#"><img src="pics/nature.jpg" alt=""></a>
          </figure>      
       </li>
           <li class="one_third  ">       
        <b> <p style="color:#b34312; font-family:'Century Schoolbook';">MOST SOLD ARTS!!<br/> HAPPY CUSTOMERS!!<br/>ONE OF THE BEST AND FINE ARTS IN BANGALORE!!</p></b>   
       </li>

      </ul>
      </section>
        
  

    <!-- ################################################################################################ -->
    <!-- / main body -->
    <div class="clear"></div>
  </main>
</div>


    <div class="wrapper row5 footercolor" >
    <div id="copyright" class="hoc clear"> 
   <center> <p class="text-center"><a href="adminlogin.aspx">ADMIN LOGIN</a></p></center>
   <center> <p class="text-center">Copyright &copy; 2022 - All Rights Reserved to KJC - <a href="#">Department of Computer Science PG</a></p>  </center> 
    </div>
    </div>
<!-- End Bottom Background Image Wrapper -->
<a id="backtotop" href="#top"><i class="fas fa-chevron-up"></i></a>
<!-- JAVASCRIPTS -->
<script src="Themes/layout/scripts/jquery.min.js"></script>
<script src="Themes/layout/scripts/jquery.backtotop.js"></script>
<script src="Themes/layout/scripts/jquery.mobilemenu.js"></script>
</body>
</html>
