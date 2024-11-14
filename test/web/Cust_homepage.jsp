<%-- 
    Document   : Cust_homepage
    Created on : Oct 30, 2023, 11:40:34 AM
    Author     : 91880
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <link rel="stylesheet" type="text/css" href="css/demo.css">
</head>

<body>
    <%  
                String unm=(String)session.getAttribute("unm1");
            %>
            
            <div class="username" style="background-color: gold;" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <img src="img/userlogo1.png"  style="alignment-adjust: central; width:60px;height:60px;" background-color="deepskyblue">
                    <p align="right" style="color:black;" ><%=unm%> </p>
               </div> 
          
                
<header>
     <div class="main">
        <div class="container">
            
          <nav style="display:flex">
       
            <ul>
                 <li><a href="Cust_homepage.jsp"><b>Home</b><br></a></li>
                 <li><a href="Search_medicine.jsp"><b>Search Medicines</b></a></li>
                 <li><a href="History.jsp"><b>History</b></a></li>
                 <li><a href="Homepage.jsp"><b>Logout </b></a></li>
                 
            </ul>
        </nav>
               
        </div>
              <div class="title">
             <h3 align="center">Healthy Bodies, Healthy Minds, Healthy Life.</h3>
            <h1 align="center">Medox Management system</h1>
            
        </div>
        </div>
</header>
        
    <br><br>
    
    <!--about us-->
    <br><br><br><div class="title4"><h1 align="center">Why to Visit Our Website...</h1></div>
    <div class="about">
        
    <div class="about-section">
        <div class="inner-container">
            <h1>Benefit of our Website</h1>
            <p class="text">“Medicine is not only a science; it is also an art. It does not consist of compounding pills and plasters; 
                it deals with the very processes of life, which must be understood before they may be guided.”</p>
                

        </div>
    </div>
    </div>
    <br><br><br>
    <div class="news">
       <marquee><h2>Best services available for the best customers </h2></marquee>
    </div>
<!--</about-->

<div class="Gallery">
        <div class="title2">
            <br>
            <h1 align="center">Our Products</h1><br><br>
        </div>
   
    <div class="box"><img src="img/product1.jpg"> <a class="destination-overlay text-white text-decoration-none" href="Search_medicine.jsp">
                             <h2 class="text-white" align="center">BournVita</h2>
                             
    </a></div>
    
    <div class="box"><img src="img/product2.jpg">  <a class="destination-overlay text-white text-decoration-none" href="Search_medicine.jsp">
                            <h2 class="text-white" align="center">Vicks</h2>
    </a></div>
    
    <div class="box"><img src="img/product3.jpg"> <a class="destination-overlay text-white text-decoration-none" href="Search_medicine.jsp">
                            <h2 class="text-white" align="center">Shampoo</h2>
    </a></div>
    
    <div class="box"><img src="img/product4.jpg"> <a class="destination-overlay text-white text-decoration-none" href="Search_medicine.jsp">
                              <h2 class="text-white" align="center">Dettol</h2>
    </a></div>
    
    <div class="box"><img src="img/product5.jpg"> <a class="destination-overlay text-white text-decoration-none" href="Search_medicine.jsp">
                            <h2 class="text-white" align="center">Dog Products</h2>
    </a></div>
    
    <div class="box"><img src="img/product6.jpg"> <a class="destination-overlay text-white text-decoration-none" href="Cust_Login.jsp">
                            <h2 class="text-white" align="center">Baby Wipes</h2>
    </a></div>
 </div>

<br><br><br><br><br><br><br>

<div class="Yojana">
    <div class="title3"><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>
              <h1 align="center">Medicines Category</h1>
          </div>
              

<div class="gallery-sec">
    
    <div class="gallery-wrap">
        
        <div class="gallery-img">
              
            <div class="photo">
                <div class="img-sec">
                    <img src="img/category1.jpg" alt=""/>
                </div>
                
                <div class="caption"><a href="Search_medicine.jsp">
                    <h1>Tablets</h1>
                </a></div> 
            </div>
            <%
                 String t1="Tablets";
                 session.setAttribute("t", t1);    
            %>
            
            <div class="photo">
                <div class="img-sec">
                    <img src="img/category2.jpg" alt=""/>
                </div>
                <div class="caption"><a href="Search_medicine.jsp">
                     <h1>Capsules</h1>
               </a> </div> 
            </div>
            <%
                  t1="Capsules";
                 session.setAttribute("t", t1);    
            %>
            <div class="photo">
                <div class="img-sec">
                    <img src="img/category3.jpg" alt=""/>
                </div>
                <div class="caption"><a href="Search_medicine.jsp">
                    <h1>Syrup</h1>
                </a></div> 
            </div>
            <%
                 String t3="Syringe";
                 session.setAttribute("t", t3);    
            %>
            <div class="photo">
                <div class="img-sec">
                    <img src="img/category4.jpg" alt=""/>
                </div>
                <div class="caption"><a href="Search_medicine.jsp">
                    <h1>Syringe</h1>
                </a></div> 
            </div>
            <%
                 String t4="Syringe";
                 session.setAttribute("t", t4);    
            %>
            <div class="photo">
                <div class="img-sec">
                    <img src="img/category5.jpg" alt=""/>
                </div>
                <div class="caption"><a href="Search_medicine.jsp">
                    <h1>Cream</h1>
                </a></div> 
            </div>
            <%
                 String t5="Cream";
                 session.setAttribute("t", t5);    
            %>
            <div class="photo">
                <div class="img-sec">
                    <img src="img/category6.jpg" alt=""/>
                </div>
                <div class="caption"><a href="Search_medicine.jsp">
                    <h1> Body Lotion </h1>
                </a></div> 
            </div>
            <%
                 String t6="Body Lotion";
                 session.setAttribute("t", t6);    
            %>
        </div>
    </div>
</div>
 
</div>
<br>
<!--footer start-->
<div class="footer" style="color: black;">
    <marquee> <p class="design">Designed By:Rasika Deshmukh & Nikita Mane SGMCK 2023-24</marquee>
</div>
</body>
</html>

