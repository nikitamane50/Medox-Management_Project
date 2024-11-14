<%-- 
    Document   : Feedback_report
    Created on : Mar 1, 2024, 10:24:52 AM
    Author     : 91880
--%>

<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link href="css/new2.css" rel="stylesheet" type="text/css"/>
      
    </head>
    <style>
      
      input[type=submit] {
        background-color: blue;
        border-color: black;
        border-width: medium;
        color: #fff;
        padding: 15px 30px;
        text-decoration: none;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 12px;
      }
    </style>
    <body> 
            
<section class="sub-header">
        <div class="main">
        <div class="container">
            <nav>
            <ul>
                <li><a href="Admin_homepage.jsp" ><b>Home</b></a></li>	         
                <li><a href="Feedback_report.jsp" ><b> Feedback</b></a></li>
                <li><a href="Homepage.jsp"><b>Logout</b></a></li>          
            </ul>
            </nav>
        </div>        
        
            <div class="title6">         
            <br>
        <h1>View Feedback </h1>   
        </div>
         <br><br><br><br><br>
        <div align="center">  
         <form> 
            <table  style="background-color: white;" border="1" width="1200" height="200" align="center">         
            <tbody style="color:black;">                                                    
                    
                 <tr align="center" bgcolor="pink" colspan="8">
               <td>Customer Name</td><td>Mobile No</td><td>Email ID</td><td>Feedback</td>
            </tr>
            
                    <%
                       
                        String custnm=null;
                        String mob=null;
                        String email=null;
                        String feedback=null;
                         
                        Statement st = con.createStatement();
                            String str="select * from feedback";
                            ResultSet rs=st.executeQuery(str);
                            while(rs.next())
                            {
                             
                                custnm=rs.getString(1);
                                 mob=rs.getString(2);
                                email=rs.getString(3);
                                feedback=rs.getString(4);
                               
                           
                     %>
            <tr align="center">              
                <td> <%=custnm%> </td>
                <td> <%=mob%> </td>
                <td> <%=email%> </td>
                <td> <%=feedback%> </td>
                <%} %>
        </tr>
            
            </tbody>            
            </table>
         </form>
            </div>
           <br><br>
        </div>
       </section>
         <br><br><br><br><br><br><br><br><br><br><br>
            <!--footer start-->  
        <div class="footer" style="color: black;">
                <marquee> <p class="design">Designed By:Rasika Deshmukh & Nikita Mane SGMCK 2023-24</marquee>
        </div> 
</body>
</html>
