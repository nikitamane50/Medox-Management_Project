<%-- 
    Document   : registration_report
    Created on : Feb 26, 2024, 11:16:22 AM
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
                <li><a href="registration_report.jsp" ><b> Registrations</b></a></li>
                <li><a href="Homepage.jsp"><b>Logout</b></a></li>          
            </ul>
            </nav>
        </div>        
        
            <div class="title6">         
            <br>
        <h1>See Registrations  </h1>   
        </div>
         <br><br><br><br><br>
        <div align="center">  
         <form> 
            <table  style="background-color: white;" border="1" width="1200" height="200" align="center">         
            <tbody style="color:black;">                                                    
                    
                 <tr align="center" bgcolor="pink" colspan="8">
                <td>Id</td><td>Customer Name</td><td>Address</td><td>Mobile No</td><td>Email ID</td><td>Username</td><td>Password</td>
            </tr>
            
                    <%
                        int id=0;
                        String custnm=null;
                        String add=null;
                        String mob=null;
                        String email=null;
                        String unm=null;
                        String pass=null;
                        
                        
                        Statement st = con.createStatement();
                            String str="select * from customer_registration";
                            ResultSet rs=st.executeQuery(str);
                            while(rs.next())
                            {
                                id=rs.getInt(1);
                                custnm=rs.getString(2);
                                add=rs.getString(3);
                                mob=rs.getString(4);
                                email=rs.getString(5);
                                unm=rs.getString(6);
                                pass=rs.getString(7);  
                           
                     %>
            <tr align="center">              
                
                <td> <%=id%> </td>
                <td> <%=custnm%> </td>
                <td> <%=add%> </td>
                <td> <%=mob%> </td>
                <td> <%=email%> </td>
                <td> <%=unm%> </td>
                <td> <%=pass%> </td>
                
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