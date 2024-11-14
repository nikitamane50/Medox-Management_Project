<%-- 
    Document   : forget_password
    Created on : Nov 4, 2023, 12:29:54 PM
    Author     : 91880
--%>

<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link href="css/new2.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body style="overflow-y: hidden">
       

        <section class="sub-header">
            <div class="main">
            <div class="container">
            <nav>
                
                <ul>
              
                    <li><a href="forget_password.jsp"><b>/Forget Password</b></a></li>
                    <li><a href="Homepage.jsp"><b>/Logout</b></a></li>
            
                </ul>
            </nav>
                </div>                             
            <div class="title6">
                <h1>Forget Password</h1>   <br>
            </div>
           </div>
            
        </section>
        <div class="login">
        <div class="loginbox">
            <img src="img/loginlogo.jpg" class="avatar">
            <h1>Reset Password</h1>
            <form>
               
                <p>Username</p>
                <input type="text"  placeholder="Enter Username" name="txname">
                <p>Password</p>
                <input type="password" placeholder="Enter password" name="txpass">
                <br> <br> <br>
                <input type="Submit" name="Update" value="Update">
              <%
                String unm=request.getParameter("txname");
                String pass=request.getParameter("txpass");
                Statement st = con.createStatement();
                if(pass !=null && pass !="")
                {
                String str="update  customer_registration set password='"+pass+"' where username='"+unm+"'";
               int aa=st.executeUpdate(str);
                    out.println("<script>alert('Forget Password Updated......')</script>");
                   // response.sendRedirect("Cust_homepage.jsp");
                }
              %>
               <%
                String aunm=request.getParameter("txname");
                String apass=request.getParameter("txpass");
                Statement st1 = con.createStatement();
                if(apass !=null && apass !="")
                {
                String str="update  admin_login set password='"+apass+"' where admin_name='"+aunm+"'";
               int aa=st1.executeUpdate(str);
                    out.println("<script>alert('Forget Password Updated......')</script>");
                   // response.sendRedirect("Cust_homepage.jsp");
                }
              %>
            </form>
            </div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
        </div>
           
    </body>
</html>