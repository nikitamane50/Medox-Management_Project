<%-- 
    Document   : Feedback
    Created on : Oct 30, 2023, 10:55:51 AM
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
    <body style="overflow-y: hidden;">
        <section class="sub-header">
            <div class="main">
            <div class="container">
            <nav>
                <ul>
                    <li><a href="Homepage.jsp"><b>Home</b> </a></li>
                    <li><a href="Cust_Login.jsp"><b>Login</b></a></li>
                    <li><a href="About_Us.jsp"><b>About Us</b></a></li>
                    <li><a href="Contact_Us.jsp"><b>Contact Us</b></a></li>
                    <li><a href="Feedback.jsp"><b>Feedback</b></a></li>
                </ul>
            </nav>
            </div>
            </div>  
                
            <div class="title6">
                <h1>Feedback</h1> <br>
            </div>
               <br><br>
            <div align="center">
                <form  action="https://formsubmit.co/rasikadeshmukh2003@gmail.com" method="POST">
            <table border="2" align="center" width="500px" height="300px" style="background-color: white">
                <thead>
                    <tr align="center">
                        <th colspan="2"  height="50px" align="center" style="color:black;">Give your Feedback</th>
                    </tr>
                </thead>
            <tbody style="color:black;">
                
                <tr>
                <td align="center"><b>Name</b></td>
                <td align="center"><input type="text" id="name" name="txtunm" value="" placeholder="Enter Name" required="" ></td>
                </tr>
                
                <tr>
                <td align="center"><b>Mobile No</b></td>
                <td align="center"><input type="mobno" name="mobileno" value="" placeholder="Enter Mobile No" required maxlength="10"></td>
                </tr>
                <tr>
                <td align="center"><b>Email-Id</b></td>
                <td align="center"><input type="emailid" name="emailid" value="" placeholder="Enter Email Address" required=""></td>
                </tr>
                
                <tr>
                <td align="center"><b>Feedback</b></td>
                <td align="center"><textarea name="Feedback" rows="4" cols="28" placeholder="Write Here.." /></textarea></td>
                </tr>
                <input type="hidden" name="_captcha" value="false">
              <input type="hidden" name="_template" value="table">
                <tr>
                <td align="center" colspan="2" height="50px"><input type="submit" value="  Submit  " name="Feedback" ></td>
                </tr>
                <%
                String unm=request.getParameter("txtunm");   
                String custmob=request.getParameter("mobileno");  
                String feedback=request.getParameter("Feedback"); 
                String email=request.getParameter("emailid");
                Statement st2=con.createStatement();
                if(unm != null && unm !="" && custmob != null && custmob !="" && feedback != null && feedback !="" && email != null && email !="")
                {
                    String str3="insert into feedback(name,mobile_no,feedback,email)values('"+unm+"',"+custmob+",'"+feedback+"','"+email+"')";
                    int i=st2.executeUpdate(str3);
                    out.println("<script>alert('Feedback Submitted.....')</script>");
                   
                }
                %>
           </tbody>
           </table>
           </form>	
	</div>
    </section>
       
         
            <!--footer start-->
            <br><br><br><br><br>
        <div class="footer" style="color: black;">
                <marquee> <p class="design">Designed By:Rasika Deshmukh & Nikita Mane SGMCK 2023-24</marquee>
        </div>
        
</body>
</html>

