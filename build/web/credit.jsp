<%-- 
    Document   : Homepage
    Created on : Mar 2, 2015, 5:48:35 PM
    Author     : Uniq-F3 
--%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<!--
Design by http://www.bluewebtemplates.com
Released for free under a Creative Commons Attribution 3.0 License
-->
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
        <script type="text/javascript">
            function valid()
            {
                document.getElementById("thou").value;
                document.getElementById("five").value;
                document.getElementById("hun").value;
                document.getElementById("").value;
                document.getElementById("").value;
                document.getElementById("").value;
            }
            function calculate()
            {
                var thousand = document.getElementById("thou").value;
                document.getElementById("ans").value = parseInt(thousand) * 2000;
            }
            function calculate1()
            {
                var five = document.getElementById("five").value;
                document.getElementById("ans1").value = parseInt(five) * 500;
            }
            function calculate2()
            {
                var hun = document.getElementById("hun").value;
                document.getElementById("ans2").value = parseInt(hun) * 100;

                var a = document.getElementById("ans").value;
                var b = document.getElementById("ans1").value;
                var c = document.getElementById("ans2").value;
                var result = parseInt(a) + parseInt(b) + parseInt(c);
                if (!isNaN(result)) {
                    document.getElementById("ans3").value = result;
                }

            }
            function total() {
                var a = document.getElementById("ans").value;
                var b = document.getElementById("ans1").value;
                var c = document.getElementById("ans2").value;
                var result = parseInt(a) + parseInt(b) + parseInt(c);
                if (!isNaN(result)) {
                    document.getElementById("ans3").value = result;
                }
            }
        </script>
        <style>

             body{
            
      background: rgb(240,165,198);
background: radial-gradient(circle, rgba(240,165,198,0.9360994397759104) 0%, rgba(131,159,81,1) 0%, rgba(184,182,221,1) 0%, rgba(172,184,225,1) 73%, rgba(166,185,227,1) 80%, rgba(162,186,229,1) 85%, rgba(158,186,230,1) 89%, rgba(148,187,233,1) 100%);
      background-position:top;
      
        background-size:cover;
    color:white;
        } 
    


        </style>
    </head>
    <body>
        <div class="main">

            <div class="header">
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
                            <</div>
                        <!--        <img src="images/bitcoin1.jpg" width="345" height="193" alt="image" class="hbgimg" />-->
                    </div>
                    <div class="clr"></div>
                </div>


                <div class="content">
                    <div class="content_resize">
                        <div class="mainbar">
                            <!--        <div class="article">-->
                            <h1 align="center">CREDIT</h1>
                            <%
                                String s = null;
                                String uname = request.getParameter("uname");
                                String actno = request.getParameter("actno");
                                // out.println("uname="+uname+" "+"acountno="+actno);
                                String actname = actno + uname;
                                String query = "SHOW FULL TABLES IN bank where Tables_in_bank='" + actname + "'";
                                //out.println(query);
                                Statement st = DbConnection.getConnection();
                                ResultSet rs = st.executeQuery(query);
                                if (rs.next()) {
                                    s = rs.getString(1);
                                    System.out.println(s);
                                    session.setAttribute("tablename", s);
                                }
                            %>

                            <form action="addcreditamount.jsp" onsubmit="total()" method="post">
                                <table align="center" border="10" width="500px">
                                    <tr><td>UserName</td><td><input type="text" name="uname" id="uname" value="<%=uname%>" readonly=""/></td>
                                        <td>Account_Number</td><td><input type="text" name="accno" id="accno" value="<%=actno%>" readonly=""/></td></tr>

                                </table>
                                <br></br>
                                <table align="center" border="1" width="500px">
                                    <tr>
                                        <th>Amount</th>
                                        <th>Total_Count</th>
                                        <th>Total_Amount</th>
                                    </tr>
                                    <tr><td>2000</td><td><input type="text" name="thou" id="thou"  value="0" onChange="calculate()"/></td><td><input type="text" name="amt" id="ans" value="0"/></td><td><i>Enter 0 If no Thousand's</i></td></tr>
                                    <tr><td>500</td><td><input type="text" name="five" id="five" value="0" onChange="calculate1()"/></td><td><input type="text" name="amt1" id="ans1" value="0"/></td><td><i>Enter 0 If no Five Hundred's</i></td></tr>
                                    <tr><td>100</td><td><input type="text" name="hun" id="hun"  value="0" onChange="calculate2()"/></td><td><input type="text" name="amt2" id="ans2" value="0"/></td><td><i>Enter 0 If no Hundred's</i></td></tr>
                                    <tr><td></td><td></td><td><input type="text" name="amt3" id="ans3" value="0"/></td></tr>

                                </table>
                                <p align="center"><input type="submit" value="Add_Amount"/></p>
                            </form>
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
        </div>
    </body>
</html>


