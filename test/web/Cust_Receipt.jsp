<%-- 
    Document   : Cust_Receipt
    Created on : Jan 29, 2024, 9:18:35 AM
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
    <body >
        <%  
                String unm=(String)session.getAttribute("nm");
            %>
        <%
         String orderid2=(String)session.getAttribute("orderid1");
         String cnm=(String)session.getAttribute("nm");   
         String custmob=(String)session.getAttribute("custmob1");                 
         String mednm2=(String)session.getAttribute("mednm1");
         String medcomp2=(String)session.getAttribute("medcomp1");        
         String medpow2=(String)session.getAttribute("medpow1");      
         String qty=(String)session.getAttribute("qty1");
         String date2=(String)session.getAttribute("date1");
         
         String custadd1=null;
         String custmob1=null;
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
                <li><a href="Cust_homepage.jsp"><b>Home</b></a></li>
                <li><a href="Cust_Receipt.jsp"><b>Receipt</b> </a></li>
                <li><a href="Homepage.jsp"><b>Logout</b> </a></li>
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
                    String custadd=null;
                    String mednm3=null;
                    String medcomp3=null;
                    String medpow3=null;
                    String medamt3=null;
                    
                    String a1=request.getParameter("id1");
                    
                    Statement st=con.createStatement();
                    String str="select count(*) from cust_receipt";
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
                        String aunm=null;
                        Statement st2=con.createStatement();
                        String str3="select * from admin_login";
                        ResultSet rs3=st2.executeQuery(str3);
                            while(rs3.next())
                            {
                                aunm=rs3.getString(1);
                            }
                    %>
                    
                 <tr>
                <td align="center"><b>Payment method</b></td>
                <td align="center"><select name="drp">
                    <option>Online</option>
                    
                </select></td>
                </tr>  
                
                <%
                        String img=null;
                        String img1=null;
                      
                        Statement st3=con.createStatement();
                        String str4="select * from admin_login where admin_name='"+aunm+"'";
                        ResultSet rs4=st3.executeQuery(str4);
                            while(rs4.next())
                            {
                                img=rs4.getString(3);
                            }
                    %>
                <tr align="center">
                    <td colspan="2">
                        <img src="<%=img%>" width="400" height="400"/>
                     </td>
                </tr>
                <tr align="center">
                    <td colspan="2">
                       <input type="submit" value="Submit" /> 
                    </td>
                    
                </tr>
                   </tbody>               
                </table>
                 <%
                 
                   String cat=request.getParameter("drp");
                 //String cat="Online";
                 Statement st5=con.createStatement();
                 if(cat!="" && cat!=null)
                 {
                 String str5="insert into cust_receipt(bill_id,bill_date,order_id,order_date,cust_name,cust_mob,med_name,med_comp,med_pow,quantity,rate,total_price,pay_method,image)values("+b+",'"+currentDate+"',"+orderid2+",'"+date2+"','"+cnm+"','"+custmob+"','"+mednm2+"','"+medcomp2+"','"+medpow2+"',"+qty1+","+rate1+","+amt+",'"+cat+"','"+img+"')";      
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