<%-- 
    Document   : Cancel_order1
    Created on : Feb 6, 2024, 9:04:01 AM
    Author     : 91880
--%>

<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link href="css/new2.css" rel="stylesheet" type="text/css"/>
        <script language="javascript">
        function editRecord(cancel_id)
        {
            var f = document.form;
            f.method="post";
            f.action='Cancel_order.jsp?id=' +cancel_id;
            f.submit();
        }
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
    <body> 
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
              <li><a href="Cust_homepage.jsp" ><b>Home</b></a></li>	         
              <li><a href="History.jsp" ><b>History</b></a></li>
              <li><a href="Homepage.jsp"><b>Logout</b></a></li>          
            </ul>
            </nav>
        </div>        
            <p style="color:white;"> Username=<%=unm%> </p>
            <div class="title6">         
            <br>
        <h1>History</h1>   
        </div>
         <br><br><br><br><br>
        <div align="center">  
         <form method="post" name="form"> 
            <table  style="background-color: white;" border="1" width="1200" height="200" align="center">         
            <tbody style="color:black;">                                                    
                  <tr align="center" bgcolor="pink">
               <td>Order ID</td><td>Order Date</td> <td>Customer Name</td><td>Mobile No</td><td>Medicine Name</td><td>Quantity</td><td>Amount</td>
            </tr>
            
                    <%
                        int orderid=0;
                        String orderdate=null;
                        String custnm=null;
                        String custmob=null;
                        String mednm=null;
                        int qty=0;
                        String amt=null;
                        
                        Statement st = con.createStatement();
                            String str="select id,order_date,customer_name,mobile_no,medicine_name,quantity,Amount from order_medicines where username='"+unm+"'";
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
                    %>
            <tr align="center">              
                <td> <%=orderid%> </td>
                <td> <%=orderdate%> </td>
                <td> <%=custnm%> </td>
                <td> <%=custmob%> </td>
                <td> <%=mednm%> </td>
                <td> <%=qty%> </td>
                <td> <%=amt%> </td>
                <td align="center"><input type="button"name="Cancel Order" value="Cancel Order"style="background-color: cornflowerblue;font-weight: bold;color: white;font-size: larger;"onclick="editRecord(<%=rs.getInt(1)%>)"/></td>
            </tr>
            <%}
                  String oid=String.valueOf(orderid);
                    session.setAttribute("orderid1",oid);
            %>
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
