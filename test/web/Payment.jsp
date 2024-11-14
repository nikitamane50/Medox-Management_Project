<%-- 
    Document   : Payment
    Created on : Oct 30, 2023, 11:32:30 AM
    Author     : 91880
--%>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import= "java.util.Date" %>
<%@page import = "java.text.SimpleDateFormat" %>
<%@page import = "java.util.Calendar" %>
<%@page import = "java.text.DateFormat" %>
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
                <li><a href="Admin_homepage.jsp">Home<br></a></li>
                <li><a href="Add_medicine.jsp">Add Medicines </a></li>
                <li><a href="Search_order.jsp">Search Order </a></li>
                <li><a href="Payment.jsp">Receipt </a></li>
                <li><a href="Admin_homepage.jsp">Logout </a></li>
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
                    int a1=0; 
                    int b=0;
                    int qty=0;
                    String unm=null;
                    String custmob=null;
                    String mednm2=null;
                    String medcomp2=null;
                    String medpow2=null;
                    
                    String b1=request.getParameter("id1");
                    Statement st=con.createStatement();
                    String str="select count(*) from payment";
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
                    <td align="center"><%=b1%></td>
                    </tr> 
                     <%
                        String str1="select  * from order_medicines where id1='"+b1+"'";
                        ResultSet rs1=st.executeQuery(str1);
                        while(rs1.next())
                        {
                            unm=rs1.getString(3); 
                            custmob=rs1.getString(4); 
                            mednm2=rs1.getString(7); 
                            medcomp2=rs1.getString(8);
                            medpow2=rs1.getString(9);
                            qty=rs1.getInt(10);                       
                    %>
                     <%}%>
                    <tr>
                    <td align="center"><b>Customer Name</b></td>
                    <td align="center"><%=unm%></td>
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
                    <tr>
                    <td align="center"><b>Quantity</b></td>
                    <td align="center"><%=qty%></td>
                    </tr>  
                    <%
                        String type=null;
                        int rate=0;                      
                        Statement st1 = con.createStatement();
                        String str2="select  * from add_medicine where medicine_name='"+mednm2+"' and medicine_company='"+medcomp2+"' and medicine_power='"+medpow2+"'";
                        ResultSet rs2=st1.executeQuery(str2);
                        while(rs2.next())
                        {
                            rate=rs2.getInt(10); 
                            type=rs2.getString(11);
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
                    amt=qty*rate1;             
                    %>
                    <tr>
                    <td align="center"><b>Total Price</b></td>
                    <td align="center"><%=amt%></td>
                    </tr>  
                    <%
                        String paymethod="COD";
                    %>
                    <tr>
                    <td align="center"><b>Payment Method</b>
                    <td align="center"><%=paymethod%></td>                      
                    </tr>           
                </tbody>               
                </table>
            
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


