
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="DbConnection.DbConnection"%>
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title>Digital_coin</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<!--<link href="styl.css" rel="stylesheet" type="text/css" />-->
<!-- CuFon: Enables smooth pretty custom font rendering. 100% SEO friendly. To disable, remove this section -->
<link href="css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" type="text/css" href="css/coin-slider.css" />
<script type="text/javascript" src="js/cufon-yui.js"></script>
<script type="text/javascript" src="js/arial.js"></script>
<script type="text/javascript" src="js/cuf_run.js"></script>
<!-- CuFon ends -->
<style>
   body{
            
         background-color: #3EECAC;
background-image: linear-gradient(19deg, #3EECAC 0%, #EE74E1 100%);
   
      background-position:top;
      background-repeat:no-repeat; 
        background-size:cover;
    color:white;
        }   
    
    
</style>
</head>
<body>
<div class="main">

  <div class="header">
    <div class="header_resize">
      <div class="logo">
        <h1><a href="index.jsp">Secure<span>Banking</span> <small>Trust us</small></a></h1>
      </div>
    <div class="searchform">
        <form id="formsearch" name="formsearch" method="post" action="#">
          <span>
          <input name="editbox_search" class="editbox_search" id="editbox_search" maxlength="80" value="Search our site:" type="text" />
          </span>
          <input name="button_search" src="images/search.gif" class="button_search" type="image" />
        </form>
      </div>
      <div class="clr"></div>
      <div class="menu_nav">
          <ul>
            <li class="active"><a href="index.jsp">Home</a></li>
            <li><a href="viewdetails.jsp">View User Details</a></li>
            <li><a href="pendingtransaction.jsp">Transactions Details</a></li>
            <li><a href="index.jsp">Logout</a></li>
            <li><a href="#">Contacts</a></li>
          </ul>
        </div>
<!--        <img src="images/bitcoin1.jpg" width="345" height="193" alt="image" class="hbgimg" />-->
      </div>
      <div class="clr"></div>
    </div>
    

    
    
  </div>

  <div class="content">
    <div class="content_resize">
      <div class="mainbar">
        <div class="article">
            <h2><img src="images/bb.jpg" width="900" height="300" style="margin-left: -250px;" /></h2>
        </div>
        <div class="article">
          <h2>  <%
           out.println("Amount Added Sucessfully");
            %></h2>
        </div>
        <div class="clr"></div>
      </div>
      <div class="clr"></div>
      
    </div>
    
  </div>

 <div class="footer">
    <div class="footer_resize">
      <p class="lf" style="color: blue">Copyright &copy; Secure Banking. All Rights Reserved</p>
      <p class="rf" style="color: blue"></p>
      <div style="clear:both;"></div>
    </div>
  </div>

</body>
</html>


