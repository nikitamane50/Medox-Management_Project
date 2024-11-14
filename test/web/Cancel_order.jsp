<%--
    Document   : Cancel_ordr
    Created on : Oct 30, 2023, 11:04:13 AM
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
                String unm=(String)session.getAttribute("unm1");
            %>
            
            <div class="username" style="background-color: gold;" > &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                   <img src="img/userlogo1.png"  style="alignment-adjust: central; width:60px;height:60px;" background-color="deepskyblue">
                  <p align="right" style="color:black;" > <b> <%=unm%></b> </p>
               </div> 
        
        <%
       String orderid2=(String)session.getAttribute("orderid1"); 
     
           
        %>
        <section class="sub-header">
            <div class="main">
            <div class="container">
               
            <nav>
                <ul>
                    <li><a href="Cust_homepage.jsp"><b>Home</b><br></a></li>
                    <li><a href="Cancel_order.jsp"><b>Cancle Order </b></a></li>
                    <li><a href="History.jsp"><b>History </b></a></li>
                    <li><a href="Homepage.jsp"><b>Logout </b></a></li>
                </ul>
            </nav>
            </div>
             </div>   
                
            <div class="title6">
                <h1>Cancle Order</h1>   <br>
            </div>
                   <br><br>
            <div align="center">
                <form>
                    <table  border="1" align="center" width="500px" height="300px" style="background-color: white;">
                <tbody style="color:black;">
                <%
                    int c1=0;
                    
                    Statement st2=con.createStatement();
                    String str2="select count(*) from cancel_order";
                    ResultSet rs2=st2.executeQuery(str2);
                    if(rs2.next())
                    {
                        c1=rs2.getInt(1);
                        c1++; 
                    }
                %>  
                <tr>
                <td align="center"><b>Cancel Id</b></td>
                <td align="center"><%=c1%></td>
                </tr>
                
                <tr>
                <td align="center"><b>Cancel Date</b></td>
                <td align="center"><input type="date" name="txtdate" value=""></td>
                </tr>                
                <tr>
                <td align="center"><b>Order Id</b></td>
                <td align="center"><%=orderid2%></td>
                </tr>
                <%
                    String canceldate=null;
                    int orderid=0;
                    String orderdate=null;
                    String custnm=null;
                    String custmob=null;
                    String mednm=null;
                    int qty=0;
                    String amt=null;
                    
                    Statement st=con.createStatement();
                    String str="select id,order_date,customer_name,mobile_no,medicine_name,quantity,Amount from order_medicines where id='"+orderid2+"'";
                    ResultSet rs=st.executeQuery(str);
                    while(rs.next())
                    {
                       
                        orderid=rs.getInt(1);
                        orderdate=rs.getString(2);
                        custnm=rs.getString(3);
                        custmob=rs.getString(4);
                        mednm=rs.getString(5);
                        qty=rs.getInt(6);
                        amt=rs.getString(7);
                   }
                %>
                
                <tr>
                <td align="center"><b>Order Date</b></td>
                <td align="center"><%=orderdate%></td>
                </tr>
                
                <tr>
                <td align="center"><b>Customer Name</b></td>
                <td align="center"><%=custnm%></td>
                </tr>
                
                <tr>
                <td align="center"><b>Customer Mob No</b></td>
                <td align="center"><%=custmob%></td>
                </tr>
                 <tr>
                <td align="center"><b>Medicine Name</b></td>
                <td align="center"><%=mednm%></td>
                </tr>
                <tr>
                <td align="center"><b>Quantity</b></td>
                <td align="center"><%=qty%></td>
                </tr>
                <tr>
                <td align="center"><b>Amount</b></td>
                <td align="center"><%=amt%></td>
                </tr>
                <tr>
                <td align="center" colspan="2"><input type="submit" value="Cancel" name="Cancel" ></td>
                </tr>
                
                </tbody>
                <%
                canceldate=request.getParameter("txtdate");
                Statement st3=con.createStatement();
                 if(canceldate!="" && canceldate!=null)
                 {
                 String str3="insert into cancel_order(cancel_id,cancel_date,order_id,order_date,customer_name,mobile_no,medicine_name,quantity,amount)values("+c1+",'"+canceldate+"',"+orderid2+",'"+orderdate+"','"+custnm+"',"+custmob+",'"+mednm+"',"+qty+",'"+amt+"')";      
                 int i=st3.executeUpdate(str3);
                 out.println("<script>alert('Order Cancel Successfully...')</script>");
                 
                 Statement st4=con.createStatement();
                 String str4="delete from order_medicines where username='"+unm+"' and order_date='"+orderdate+"'";
                 int i1=st4.executeUpdate(str4);
                 }
                %> 
                </table>
        </form>	
        </div>
    </section>
        
        <br><br><br><br><br><br>
            <!--footer start-->

        <div class="footer" style="color: black;">
                <marquee> <p class="design">Designed By:Rasika Deshmukh & Nikita Mane SGMCK 2023-24</marquee>
        </div> 
    
</body>
</html>

