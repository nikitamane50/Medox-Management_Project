<%-- 
    Document   : Receipt
    Created on : Jan 11, 2024, 8:51:21 AM
    Author     : 91880
--%>

<%@include file="Connection.jsp"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.Date"%>
<%@page import = "java.text.SimpleDateFormat"%>
<%@page import = "java.util.Calendar"%>
<%@page import = "java.text.DateFormat"%>
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
         String orderid2=(String)session.getAttribute("orderid1");
         String cnm=(String)session.getAttribute("nm");   
         String cadd=(String)session.getAttribute("add");
         String custmob=(String)session.getAttribute("custmob1");                 
         String mednm2=(String)session.getAttribute("mednm1");
         String medcomp2=(String)session.getAttribute("medcomp1");        
         String medpow2=(String)session.getAttribute("medpow1");      
         String qty=(String)session.getAttribute("qty1");
         String medamt2=(String)session.getAttribute("medamt3");
         String date2=(String)session.getAttribute("date1");
         
         String custadd1=null;
         String custmob1=null;
       
        
      //   date2=request.getParameter("txtdate"); //bill date
         //qty1=request.getParameter("txtqty");
        %>
       <section class="sub-header">
            <div class="main">
            <div class="container">
            <nav>
            <ul>
                <li><a href="Admin_homepage.jsp"><b>Home</b></a></li>
                <li><a href="Add_medicine.jsp"><b>Add Medicines</b> </a></li>
                <li><a href="Search_order.jsp"><b>Search Order </b></a></li>
                <li><a href="Admin_receipt.jsp"><b>Receipt </b></a></li>
                <li><a href="Admin_homepage.jsp"><b>Logout </b></a></li>
            </ul>
            </nav>
            </div>
            <div class="title6">
                <h1>Receipt</h1>   
            </div>
            <br>
            <div align="center">
            <form>
                <%
                    int a2=0; 
                    int b=0;    //bill id
                 
                    String unm2=null;
                    String custmob2=null;
                    String mednm3=null;
                    String medcomp3=null;
                    String medpow3=null;
                    String medamt3=null;
                    String pay=null;
                    
                    String a1=request.getParameter("id1");
                    
                    Statement st=con.createStatement();
                    String str="select count(*) from admin_receipt";
                    ResultSet rs=st.executeQuery(str);
                    if(rs.next())
                    {
                        b=rs.getInt(1);
                        b++; 
                    }              
                %>
                <table style="background-color: white"   border="2" align="center" width="500px" height="400px">
                <tbody style="color:black;">
                    
                    <tr>
                    <td align="center"><b>Bill Id</b></td>
                    <td align="center"><%=b%></td>
                    </tr>  
                    <%
                        Date currentDate = new Date();
                        DateFormat dateFormat = new SimpleDateFormat("dd/MM/yyyy");
                        System.out.println(dateFormat.format(currentDate));
                    %>
                    <tr>
                    <td align="center"><b>Bill Date</b></td>
                    <td align="center"><%=dateFormat.format(currentDate)%></td>
                    </tr>
                    
                    <tr>
                    <td align="center"><b>Order Id</b></td>
                    <td align="center"><%=orderid2%></td>
                    </tr> 
                                        
                    <%
                    /*String str2="select  * from order_medicines where id="+orderid2+"";
                    ResultSet rs2=st.executeQuery(str2);
                    while(rs2.next())
                    {
                        String date=rs2.getString(2);
                       String cnm=rs2.getString(3);
                      String  custmob=rs2.getString(4);
                      String  add=rs2.getString(5);
                      String  mednm=rs2.getString(7);     
                     String   medcomp=rs2.getString(8);
                     String   medpow=rs2.getString(9);
                     String   amt=rs2.getString(10);
                       
                        
                    }*/
                    
                %>
                     
                     <tr>
                <td align="center"><b>Order Date</b></td>
                <td align="center"><%=date2%></td>
                 </tr> 
                    <tr>
                     <td align="center"><b>Customer Name</b></td>
                    <td align="center"><%=cnm%></td>
                    </tr>              
                    <tr>
                    <td align="center"><b>Mobile No</b></td>
                    <td align="center"><%=custmob%></td>
                    </tr>
                     <tr>
                     <td align="center"><b>Customer Address</b></td>
                    <td align="center"><%=cadd%></td>
                    </tr> 
                    <tr>
                    <td align="center"><b>Medicine Name</b></td>
                    <td align="center"><%=mednm2%></td>
                    </tr>                
                    <tr>
                    <td align="center"><b>Medicine Company</b></td>
                    <td align="center"><%=medcomp2%></td>
                    </tr>  
                    <tr>
                    <td align="center"><b>Power</b></td>
                    <td align="center"><%=medpow2%></td>
                    </tr>
                    <%
                    int qty1=Integer.parseInt(qty);
                    
                    %>
                    <tr>
                    <td align="center"><b>Quantity</b></td>
                    <td align="center"><%=qty1%></td>
                    </tr>  
                    
                    <%
                        String type=null;
                        int rate=0;                      
                       Statement st1 = con.createStatement();
                        String str2="select  * from add_medicine where medicine_name='"+mednm2+"' and medicine_company='"+medcomp2+"' and medicine_power='"+medpow2+"'";
                        ResultSet rs2=st1.executeQuery(str2);
                        while(rs2.next())
                        {
                            rate=rs2.getInt(9); 
                            type=rs2.getString(10);
                        }
                        int rate1=0; 
                        if(type.equals("Strip"))
                        {
                            rate1=rate/10;
                        }
                        else if(type.equals("Bottle"))
                        {
                            rate1=rate/1;
                        }
                    %>  
                    
                    <tr>
                    <td align="center"><b>Rate</b></td>
                    <td align="center"><%=rate1%></td>
                    </tr> 
                    <%
                    int amt=0;
                    amt=qty1*rate1;  
                    %>
                    <tr>
                    <td align="center"><b>Total Price</b></td>
                    <td align="center"><%=amt%></td>
                    </tr>  
                    <%
                    
                    Statement st3=con.createStatement();
                    if(cnm.equals(cnm))
                    {
                  String str3="select * from cust_receipt where cust_name='"+cnm+"'";
               ResultSet rs3=st3.executeQuery(str3);
               while(rs3.next())
               {
                   pay=rs3.getString(13);
               }
                    }
                  
                    else
                          
                    
                    {
                        String str3="select * from receipt_cod where cust_name='"+cnm+"'";
               ResultSet rs3=st3.executeQuery(str3);
               while(rs3.next())
               {
                   pay=rs3.getString(13);
               }  
                    }
                 
                    %>
                    <tr>
                    <td align="center"><b>Pay Method</b></td>
                    <td align="center"><%=pay%></td>
                    </tr>  
                  
                   </tbody>               
                </table>
              <%
                   String cat=request.getParameter("drp");
                 //String cat="Online";
                 Statement st5=con.createStatement();
                 if(cat!="" && cat!=null)
                 {
                 String str5="insert into admin_receipt(bill_id,bill_date,order_id,order_date,cust_name,cust_mob,cust_add,medicine_name,medicine_comp,medicine_power,quantity,total_price,pay_method)values("+b+",'"+currentDate+"',"+orderid2+",'"+date2+"','"+cnm+"','"+custmob+"','"+cadd+"','"+mednm2+"','"+medcomp2+"','"+medpow2+"',"+qty1+","+amt+",'"+pay+"')";      
                 int i=st5.executeUpdate(str5);
                 out.println("<script>alert('Payment Successfull...')</script>");
                 }
                 %>  
            </form>	
            </div>
        </div>          
        </section>              
            <!--footer start-->
            <br><br>
     <div class="footer" style="color: black;">
    <marquee> <p class="design">Designed By: Rasika Deshmukh & Nikita Mane SGMCK 2023-24</marquee>
</div> 
</body>
</html>



