<%-- 
    Document   : Cust_Login
    Created on : Oct 30, 2023, 10:37:31 AM
    Author     : 91880
--%>
<%@include file="Connection.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       
        <link href="css/new2.css" rel="stylesheet" type="text/css"/>
        
    </head>
    <body style="overflow-y: hidden">
        
        <%
            String unm=request.getParameter("txname");
            String pass=request.getParameter("txpass");
            
        %>

        <section class="sub-header">
            <div class="main">
            <div class="container">
            <nav>        
                <ul>      
                    <li><a href="Cust_Login.jsp"><b>Customer Login</b></a></li>
                    <li><a href="Homepage.jsp"><b>Logout</b></a></li>
            
                </ul>
            </nav>
               </div>
    <div class="title6">
                <h1> Customer Login</h1>   <br>
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
                <input type="password" placeholder="Enter password" name="txpass">
                <input type="Submit" name="Login" value="Login" >
                
                <a href="forget_password.jsp">Forget Password ?</a><br>
                <a href="Cust_registration.jsp">Don't have an account ?</a>
                <%
                    Statement st=con.createStatement();
                    //if(unm!=null && unm!="" && pass!=null && pass!="")
                    if(unm!=null && pass!=null)

                    {
                        String str="select * from customer_registration where username='"+unm+"' and password='"+pass+"'";
                        ResultSet rs =st.executeQuery(str);
                        if(rs.next())
                        {
                            out.println("<script>alert('Login Sucessfull......')</script>");
                            session.setAttribute("nm", unm);
                            response.sendRedirect("Cust_homepage.jsp");
                        }
                         else
                        { 
                          out.println("<script>alert('Login Failed...Please Enter Valid Username and Password')</script>"); 
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
          