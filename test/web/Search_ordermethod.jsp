<%-- 
    Document   : Search_ordermethod
    Created on : Feb 22, 2024, 8:33:36 AM
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
       <section class="sub-header">
            <div class="main">
            <div class="container">
                
            <nav>
             <ul>
                 <li><a href="Admin_homepage.jsp"><b>Home</b><br></a></li>
                 <li><a href="Add_medicine.jsp"><b>Add Medicines </b></a></li>
                 <li><a href="Search_ordermethod.jsp"><b>Search Pay Method </b></a></li>
                 <li><a href="Search_Cancel.jsp"><b>Search Cancel Order </b></a></li>
                 <li><a href="Homepage.jsp"><b>Logout</b> </a></li>
             </ul>
            </nav>
            </div>
                
                
            <div class="title6">
                <h1>Search Pay Method</h1>   
            </div>
            <br><br><br><br><br>
                
            <div align="center">
            <form>
               
            <table style="background-color: white"  border="2" align="center" width="1200px" height="250px">
            <tbody style="color:black;">
                 
                
            <tr>
            <td align="center" colspan="2"><b>Select Date </b></td>
            <td align="center" colspan="2"><input type="date" name="txtdate1" value=""></td>  
            <td align="center" colspan="2"><b>Select Date To</b></td>
            <td align="center" colspan="2"><input type="date" name="txtdate2" value=""></td>  
            <td align="center" colspan="2"><b>Select Payment Mode</b></td>
                <td align="center" colspan="2">
                <select name="drppayment" >
                   
                    <option>Online</option>
                    <option>CashOnDelivery</option>
                </select>
                </td>
                </tr>  
                                                     
            <tr>
            <td align="center" colspan="13"><input type="submit" value="Search" name="Search" ></td>
            </tr>
              
            <tr align="center" bgcolor="pink">
               <td >Bill ID</td><td>Bill Date</td> <td >Order ID</td><td>Order Date</td><td>Customer Name</td><td>Mobile No</td><td>Medicine Name</td><td>Medicine Company</td><td>Medicine Power</td><td>Quantity</td><td>Rate</td><td>Total Price</td><td>Method</td>
            </tr>
           
            <%
                        int billid=0;             
                        String billdate=null;
                        int orderid=0;
                        String orderdate=null;
                        String custnm=null;
                        String mob=null;
                        String mednm=null;
                        String medcomp=null;
                        String medpow=null;
                        String qty=null;
                        int rate=0;
                        int totalprice=0;
                        String paymethod=null;  
                        String date1=request.getParameter("txtdate1");
                        String date2=request.getParameter("txtdate2");
                        String pay=request.getParameter("drppayment");
                        Statement st = con.createStatement();
                       if(date1!=null && date1!="" && date2!=null && date2!="" && pay!=null && pay!="")
                        {
                           if(pay.equals("CashOnDelivery"))
                            {
                                out.println("pay="+pay);
                        String str="select  * from receipt_cod where  pay_method='"+pay+"'";
                        ResultSet rs=st.executeQuery(str);
                    out.println("sdfgh="+date1);
                        out.println("dfghjkghjk="+pay);
                        while(rs.next())
                        {   
                                
                            billid=rs.getInt(1); 
                            billdate=rs.getString(2);
                            orderid=rs.getInt(3); 
                            orderdate=rs.getString(4);
                            custnm=rs.getString(5);
                            mob=rs.getString(6);
                            mednm=rs.getString(7);
                            medcomp=rs.getString(8);
                            medpow=rs.getString(9);
                            qty=rs.getString(10); 
                            rate=rs.getInt(11); 
                            totalprice=rs.getInt(12);  
                            paymethod=rs.getString(13);
                             
                        
                            %> <%}%> 
            <tr align="center">    
                <td><%=billid%></td>
                <td> <%=billdate%> </td>
                <td> <%=orderid%> </td>
                <td> <%=orderdate%> </td>
                <td> <%=custnm%> </td>
                <td> <%=mob%> </td>
                <td> <%=mednm%> </td>
                <td> <%=medcomp%> </td>
                <td> <%=medpow%> </td>
                <td> <%=qty%> </td>
                 <td> <%=rate%> </td>
                  <td> <%=totalprice%> </td>
                   <td> <%=paymethod%> </td>
               
            </tr>       
            <%//}
                        }
                        
                        
                       else
                        {
                         String str="select  * from cust_receipt where  pay_method='"+pay+"'";
                        ResultSet rs=st.executeQuery(str);
                     
                        while(rs.next())
                        {   
                              
                            billid=rs.getInt(1); 
                            billdate=rs.getString(2);
                            orderid=rs.getInt(3); 
                            orderdate=rs.getString(4);
                            custnm=rs.getString(5);
                            mob=rs.getString(6);
                            mednm=rs.getString(7);
                            medcomp=rs.getString(8);
                            medpow=rs.getString(9);
                            qty=rs.getString(10); 
                            rate=rs.getInt(11); 
                            totalprice=rs.getInt(12);  
                            paymethod=rs.getString(13);
                               
                        
                           
            
            %>
             <tr align="center">    
                <td><%=billid%></td>
                <td> <%=billdate%> </td>
                <td> <%=orderid%> </td>
                <td> <%=orderdate%> </td>
                <td> <%=custnm%> </td>
                <td> <%=mob%> </td>
                <td> <%=mednm%> </td>
                <td> <%=medcomp%> </td>
                <td> <%=medpow%> </td>
                <td> <%=qty%> </td>
                 <td> <%=rate%> </td>
                  <td> <%=totalprice%> </td>
                   <td> <%=paymethod%> </td>
               
            </tr>       
            <%}
                     }
                        }%> 
          </tbody>
            </table>    
                 <%
                   /*String orderid=String.valueOf(a);
                    session.setAttribute("orderid1",orderid);
                    session.setAttribute("nm",custnm);
                    String mob1=String.valueOf(mob);
                    session.setAttribute("custmob1",mob);
                    session.setAttribute("add",add);                                
                    session.setAttribute("mednm1",mednm);
                    session.setAttribute("medcomp1",medcomp);                  
                    session.setAttribute("medpow1",medpow);
                    //String qty1=String.valueOf(qty);
                    session.setAttribute("qty1",qty);
                    String rate1=String.valueOf(medamt);                 
                    session.setAttribute("medamt3",medamt);
                    session.setAttribute("date1", date);*/
                %>
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


