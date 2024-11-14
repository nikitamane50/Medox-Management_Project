<%-- 
    Document   : l1
    Created on : Oct 28, 2023, 11:45:36 AM
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
       <%
       String aunm=request.getParameter("txname");
       String apass=request.getParameter("txpass");

       %>

        <section class="sub-header">
            <div class="main">
            <div class="container">
               
            <nav>
                <ul>
                    <li><a href="Admin_login.jsp"><b>Admin Login</b></a></li>
                    <li><a href="Homepage.jsp"><b>Logout</b></a></li>
                </ul>
            </nav>
            </div>    
            <div class="title6">
                <h1>Admin Login</h1>   <br>
            </div>
           </div>
            
        </section>
        <div class="login">
        <div class="loginbox">
            <img src="img/loginlogo.jpg" class="avatar">
            <h1>Login Here</h1>
            <form>
               
                <p>Username</p>
                <input type="text"  placeholder="Enter Username" name="txname">
                <p>Password</p>
                <input type="password" placeholder="Enter password" name="txpass" >
             
                <input type="Submit" name="Login" value="Login" >
                <a href="forget_password.jsp">Forget Password ?</a><br>
                <a href="Admin_registration.jsp">Don't have an account ?</a><br>
                <%
                    Statement st = con.createStatement();
                   if(aunm!=null && aunm!="" && apass!=null && apass!="")
                    {
                        String str="select  * from admin_login where admin_name='"+aunm+"' and password='"+apass+"'";
                        ResultSet rs=st.executeQuery(str);
                        
                        if(rs.next())
                        {
                            out.println("<script>alert('Login SuccesFull......')</script>");
                            response.sendRedirect("Admin_homepage.jsp");
                        } 
                         else 
                        {
                           out.println("<script>alert('Login Failed...Please Enter valid username password')</script>"); 
                        }   
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