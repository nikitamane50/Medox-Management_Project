<%-- 
    Document   : Search_Cancel
    Created on : Feb 21, 2024, 8:56:26 AM
    Author     : 91880
--%>

<%@include file="Connection.jsp" %>
<%@page import= "java.util.Date" %>
<%@page import = "java.text.SimpleDateFormat" %>
<%@page import = "java.util.Calendar" %>
<%@page import = "java.text.DateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link href="css/new2.css" rel="stylesheet" type="text/css"/>
        <script language="javascript">
        
    </script>
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
                 <li><a href="Admin_homepage.jsp"><b>Home</b><br></a></li>
                 <li><a href="Add_medicine.jsp"><b>Add Medicines </b></a></li>
                 <li><a href="registration_report.jsp" ><b> Registrations</b></a></li>
                 <li><a href="Search_Cancel.jsp"><b>Search Cancel Order </b></a></li>
                 <li><a href="Feedback_report.jsp"><b>Search Feedback</b> </a></li>
                 <li><a href="Homepage.jsp"><b>Logout</b> </a></li>
             </ul>
            </nav>
            </div>
                
                
            <div class="title6">
                <h1>Search Cancel Order</h1>   
            </div>
            <br><br><br><br><br>
                
            <div align="center">
            <form method="post"name="form">
               
            <table style="background-color: white"  border="2" align="center" width="1200px" height="250px">
            <tbody style="color:black;">
                 
                
            <tr>
            <td align="center" colspan="3"><b>Select Date From</b></td>
            <td align="center" colspan="3"><input type="date" name="txtdate1" value=""></td>
            <td align="center" colspan="3"><b>Select Date To</b></td>
            <td align="center" colspan="3"><input type="date" name="txtdate2" value="" /></td>
            </tr>
                                                     
            <tr>
            <td align="center" colspan="13"><input type="submit" value="Search" name="Search" ></td>
            </tr>
              
            <tr align="center" bgcolor="pink">
                <td >Cancel Id</td><td>Cancel Date</td><td>Order Id</td><td>Order Date</td><td>Customer Name</td><td>Mobile No</td><td>Medicine Name</td><td>Quantity</td><td>Amount</td>
            </tr>
            </tr>
            <%
                        int cid=0;                  //cancel id
                        String cdate=null;       //cancel date
                        int oid=0;              //order id
                        String odate=null;       //order date
                       
                        String custnm=null;
                        String mob=null;
                        
                        String mednm=null;
                       
                        String qty=null;
                        String medamt=null;
                        
                        qty=String.valueOf(request.getParameter("txtqty"));
                         
                        String date1=request.getParameter("txtdate1");
                        String date2=request.getParameter("txtdate2");
                        
                        Statement st = con.createStatement();
                        if(date1!=null && date1!="" && date2!=null && date2!="")
                        {   
                        String str="select  * from cancel_order where cancel_date>='"+date1+"' and cancel_date<='"+date2+"'";
                        ResultSet rs=st.executeQuery(str);
                        while(rs.next())
                        {            
                            
                            cid=rs.getInt(1); 
                            cdate=rs.getString(2);
                            oid=rs.getInt(3);
                            odate=rs.getString(4);
                            custnm=rs.getString(5);
                            mob=rs.getString(6);
                            mednm=rs.getString(7);
                            qty=rs.getString(8);
                            medamt=rs.getString(9); 
                        
                           
                            
            %>         
            <tr align="center">    
                <td><%=cid%></td>
                <td> <%=cdate%> </td>
                <td> <%=oid%> </td>
                <td> <%=odate%> </td>
                <td> <%=custnm%> </td>
                <td> <%=mob%> </td>
                <td> <%=mednm%> </td>
                <td> <%=qty%> </td>
                <td> <%=medamt%> </td>
                
            </tr>       
            <%}
                    }%>
          </tbody>
            </table>    
                
            </form>	
            </div>
            </div> 
    </section>
        <br><br><br><br><br><br><br><br><br><br><br><br>
            <!--footer start-->       
     <div class="footer" style="color: black;">
        <marquee> <p class="design">Designed By:Rasika Deshmukh & Nikita Mane SGMCK 2023-24</marquee>
     </div> 
</body>
</html>

