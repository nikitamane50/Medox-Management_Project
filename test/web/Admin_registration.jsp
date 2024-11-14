<%-- 
    Document   : Cust_registration
    Created on : Oct 30, 2023, 11:08:40 AM
    Author     : 91880
--%>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link href="css/new2.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <%
            int no=0;
            String nm=null;
            String add=null;
            String mob=null;
            String email=null;
            String aunm=null;
            String apass=null;
        %>
        <section class="sub-header">
            <div class="main">
            <div class="container">
            <nav>
                <ul>
                    <li><a href="Admin_homepage.jsp"><b>Home</b>/a></li>
                    <li><a href="Admin_registration.jsp"><b> Registration</b></a></li>
                </ul>
            </nav>
            </div>
                
            <div class="title6">
                <h1>Admin Registration</h1>   
            </div>
            </div>
        </section>
        
        <div class="registration">
        <div class="registrationbox">
            <img src="img/loginlogo.jpg" class="avatar">
            <h1>Register Here</h1>
            <form align="left">
        <%
            int a1=0;
            Statement st=con.createStatement();
            String str="select count(*) admin_registration";
            ResultSet rs=st.executeQuery(str);
            if(rs.next())
            {
                a1=rs.getInt(1);
                a1++; 
            }
        %>
                <p>Id</p>
                <input type="text"  placeholder="Display Id" name="txtid" value="<%=a1%>" readonly="true">
                
                <label class="required"><p>Admin Name</p></label>
                <input type="text"  placeholder="Enter Customer Name" name="txname" required>
                
                <label class="required"><p>Address</p></label>
                <input type="text" placeholder="Enter Address" name="txadd" required>
                
                <label class="required"><p>Mobile No</p></label>
                <input type="text" placeholder="Enter Mobile No" name="txmobno" required maxlength="10">
                
               <label class="required"><p>Email ID</p></label>
                <input type="text" placeholder="Enter Email ID" name="txeid" required >
                
                <label class="required"><p>Username</p></label>
                <input type="text"  placeholder="Enter Username" name="txtaunm" required>
                
                <label class="required"><p>Password</p></label>
                <input type="password" placeholder="Enter password" name="txtapass" required >
                
                <br>     <br>     
                <input type="Submit" name="Register" value="Register Now">   
        <%
            nm=request.getParameter("txname");
            add=request.getParameter("txadd");
            mob=request.getParameter("txmobno");
            email=request.getParameter("txeid");
            aunm=request.getParameter("txtaunm");
            apass=request.getParameter("txtapass");
            
            Statement st1=con.createStatement();
            if(nm!=null && nm!="" && add!=null && add!="" && mob!=null && mob!="" && email!=null && email!="" && aunm!=null && aunm!="" && apass!=null && apass!="")
            {
              String str1="insert into admin_registration(ID,admin_name,address,mobile_no,email_id,username,password)values("+a1+",'"+nm+"','"+add+"','"+mob+"','"+email+"','"+aunm+"','"+apass+"')";
              int i=st1.executeUpdate(str1);
             out.println("<script>alert('Your Registration SucessFully......')</script>");
             response.sendRedirect("Admin_login.jsp");
            } 
        %>
            </form>
        </div>
        </div>
        <div>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br><br><br><br><br><br><br>
            <br><br><br><br><br><br><br><br>
        </div>
</body>
</html>
 
