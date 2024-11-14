<%-- 
    Document   : Payment_choice
    Created on : Feb 2, 2024, 8:51:27 AM
    Author     : 91880
--%>
<%@include file="Connection.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link href="css/new2.css" rel="stylesheet" type="text/css"/>
    </head>
    <body style="overflow-y: hidden;">
          <%  
                String unm=(String)session.getAttribute("nm");   
            %>
        <section class="sub-header">
            <div class="main">
            <div class="container">
                <div class="username"> 
                   <img src="img/userlogo1.png"  style="alignment-adjust: central; width:60px;height:60px;"/>
            <p style="color:white;" ><%=unm%> </p>
               </div> &nbsp;&nbsp;&nbsp;&nbsp;
            <nav>
                <ul>
                    <li><a href="Cust_homepage.jsp"><b>Home </b></a></li>
                    <li><a href="Payment_choice.jsp"><b>Choose Pay Method</b></a></li>
                    <li><a href="Homepage.jsp"><b>Logout</b></a></li>
                </ul>
            </nav>
            </div>
                
                
            <div class="title6">
                <h1>Choose Payment Method</h1><br><br><br>
            </div>
               <br>
            <div align="center">
                <form>
                    <table border="1" align="center" width="600px" height="150px" style="background-color: white;">
                  <tbody style="color:black;">
                      
                    <tr>
                        <td align="center" width="600px" style="font-family: monospace;font-size: xx-large; "><a href="Cust_Receipt.jsp">Online</a></td>
                        <td align="center"width="600px"  style="font-family: monospace;font-size: xx-large; "><a href="Cust_COD.jsp">Cash On Delivery </a></td>
                    
                    </tr>
                                                           
                  </tbody>
                  </table>
                </form>	
            </div>
        </section>
        <br><br><br><br><br><br><br><br><br><br><br><br><br>
        <!--footer start-->

        <div class="footer" style="color: black;">
                <marquee> <p class="design">Designed By:Rasika Deshmukh & Nikita Mane SGMCK 2023-24</marquee>
        </div>
      
        
</body>
</html>