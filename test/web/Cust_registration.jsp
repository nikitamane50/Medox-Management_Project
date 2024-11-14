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
       <script type="text/javascript">
function validate()
{ 
    if( document.mobilenumbervalidation.txmobno.value == "" ||
    isNaN( document.mobilenumbervalidation.txmobno.value) ||
    document.mobilenumbervalidation.txmobno.value.length != 10 )
    {
    alert( "Please provide a 10 digit no" );
    document.mobilenumbervalidation.txmobno.focus() ;

    return false;
    }

    var email = document.mobilenumbervalidation.txeid.value;
    atpos = email.indexOf("@");
    dotpos = email.lastIndexOf(".");
    if (email =="" || atpos < 1 || ( dotpos - atpos < 2 )) 
    {
    alert("Please enter correct email ID");
    document.mobilenumbervalidation.txeid.focus() ;
    return false;
    }

    return( true );
}
</script> 


    </head>
    <body>
        <%
            int no=0;
            String nm=null;
            String add=null;
            String mob=null;
            String email=null;
            String unm=null;
            String pass=null;
            String date=null;
        %>
        <section class="sub-header">
            <div class="main">
            <div class="container">
            <nav>
                <ul>
                    <li><a href="Cust_homepage.jsp"><b>Home</b></a></li>
                    <li><a href="Cust_registration.jsp"><b> Registration</b></a></li>
                    
                </ul>
            </nav>
            </div>
                
                
            <div class="title6">
                <h1>Customer Registration</h1>   
            </div>
            </div>
        </section>
        
        <div class="registration">
        <div class="registrationbox">
            <img src="img/loginlogo.jpg" class="avatar">
            <h1>Register Here</h1>
             <form  align="Left" method="get" action="" name="mobilenumbervalidation" onsubmit="return(validate());"> 
                  
                    
                <%
                    int a=0;
                    Statement st=con.createStatement();
                    String str="select count(*) from customer_registration";
                    ResultSet rs=st.executeQuery(str);
                    if(rs.next())
                    {
                           a=rs.getInt(1);
                           a++; 
                    }
                %>
                <p>Id</p>
                <input type="text"  placeholder="Display Id" name="txtid" value="<%=a%>" readonly="true">
                
                <label class="required"><p>Customer Name</p></label>
                <input type="text"  placeholder="Enter Customer Name" name="txname" required>
                
                <label class="required"><p>Address</p></label>
                <input type="text" placeholder="Enter Address" name="txadd" required>
                
                <label class="required"><p>Mobile No</p></label>
                <input type="text" placeholder="Enter Mobile No" name="txmobno" required maxlength="10">
                
               <label class="required"><p>Email ID</p></label>
                <input type="text" placeholder="Enter Email ID" name="txeid" required >
                
                <label class="required"><p>Username</p></label>
                <input type="text"  placeholder="Enter Username" name="txtunm" required>
                
                <label class="required"><p>Password</p></label>
                <input type="password" placeholder="Enter password" name="txtpass" required >
                
                <br>     <br>     
                <input type="Submit" name="Register" value="Register Now">   
        <%
            nm=request.getParameter("txname");
            add=request.getParameter("txadd");
            mob=request.getParameter("txmobno");
            email=request.getParameter("txeid");
            unm=request.getParameter("txtunm");
            pass=request.getParameter("txtpass");
            
            Statement st1=con.createStatement();
            if(nm!=null && nm!="" && add!=null && add!="" && mob!=null && mob!="" && email!=null && email!="" && unm!=null && unm!="" && pass!=null && pass!="" )
            {
              String str1="insert into customer_registration(id,customer_name,address,mob_no,email_id,username,password)values("+a+",'"+nm+"','"+add+"','"+mob+"','"+email+"','"+unm+"','"+pass+"')";
              int i=st1.executeUpdate(str1);
              out.println("<script>alert('Your Registration SucessFully......')</script>");
              response.sendRedirect("Cust_Login.jsp");
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
 
