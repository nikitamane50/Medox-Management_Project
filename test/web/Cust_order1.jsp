<%-- 
    Document   : Cust_order1
    Created on : Jan 5, 2024, 9:32:54 AM
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
        padding: 15px 30px;
        text-decoration: none;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 12px;
      }
    </style>
    <body style="overflow-y: hidden;">
      
        <%
        /* String a1=(String)session.getAttribute("a");       //order id
         String unm=(String)session.getAttribute("nm");   
         String custadd=(String)session.getAttribute("add");
         String custmob=(String)session.getAttribute("mob");
         String id1=(String)session.getAttribute("Id");             //med id
         String medcat2=(String)session.getAttribute("medcat");
         String mednm2=(String)session.getAttribute("mednm1");
         String medcomp2=(String)session.getAttribute("medcomp1");
         String medmgf2=(String)session.getAttribute("medmgf1");
         String medexp2=(String)session.getAttribute("medexp1");
         String medpow2=(String)session.getAttribute("medpow1"); 
         String medamt2=(String)session.getAttribute("medamt1"); */
         String id1=request.getParameter("Id");    //medicine id
         String unm=(String)session.getAttribute("unm1");  
         //String custadd=null;
         String custmob=null;
         String date=null;
         String qty=null;
        //String id2=(String)session.getAttribute("id1");
               
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
                    <li><a href="Cust_order.jsp"><b>Order Medicines </b></a></li>
                    <li><a href="Payment_choice.jsp"><b>Payment</b></a></li>
                    <li><a href="Homepage.jsp"><b>Logout </b></a></li>
                </ul>
            </nav>
            </div>    
                 <p style="color:white;"> Username=<%=unm%> </p>
               
            <div class="title6">
                <h1>Order Medicines</h1> 
            </div>
                 <br><br>  
            <div align="center">
                <form method="POST" name="form">            
                <table  border="1" align="center" width="500px" height="400px" style="background-color: white;">
                <tbody style="color:black;">  
                     <%
                    int a1=0;
                    
                    Statement st=con.createStatement();
                    String str="select count(*) from order_medicines";
                    ResultSet rs=st.executeQuery(str);
                    if(rs.next())
                    {
                        a1=rs.getInt(1);
                        a1++; 
                    }
                %>
                <tr>
                <td align="center"><b>Order Id</b></td>
                <td align="center"><%=a1%></td>
                </tr>  
                 <%
                    
                    /*Date currentDate = new Date();
                    DateFormat dateFormat = new SimpleDateFormat("MM/dd/yyyy");
                    System.out.println(dateFormat.format(currentDate));
                    Calendar c = Calendar.getInstance();*/
                %>
                <tr>
                <td align="center"><b>Order Date</b></td>
                <td align="center"><input type="date" name="txtdate" value=""></td>
                </tr>    
                <% 
                String mob=null;
                String cadd=null;
                String cnm=null;
                String str1="select  * from customer_registration where username='"+unm+"'";
                
                ResultSet rs1=st.executeQuery(str1);
                       while(rs1.next())
                        {
                            cnm=rs1.getString(2);
                            cadd=rs1.getString(3);
                            mob=rs1.getString(4);
                            
                       }
                       custmob=String.valueOf(mob);
            %>
                <tr>
                <td align="center"><b>Customer Name</b></td>
                <td align="center"><input type="text" name="txtcnm" value="<%=cnm%>" readonly="true" /></td>
                 </tr>       
                <tr>
                <td align="center"><b>Mobile No</b></td>
                <td align="center"><input type="text" name="txtmob" value="<%=custmob%>" readonly="true"/></td>
                </tr>          
                <tr>
                <td align="center"><b>Address</b></td>
                <td align="center"><input type="text" name="txtcustadd" value="<%=cadd%>" readonly="true"/></td>
                </tr>
                <tr>
                <td align="center"><b>Medicine ID</b></td>
                 <td align="center"><input type="text" name="txtmedid" value="<%=id1%>" readonly="true"/></td>
                </tr>        
                  <% 
                    String cat=null;
                    String mednm2=null;
                    String medpow2=null;
                    String medcomp2=null;
                    String medmgf2=null;
                    String medexp2=null;
                    String medamt2=null;
                    
                    String str2="select  * from add_medicine where id="+id1+"";
                    ResultSet rs2=st.executeQuery(str2);
                    while(rs2.next())
                    {
                        cat=rs2.getString(2);
                        mednm2=rs2.getString(3);
                        medpow2=rs2.getString(4);
                        medcomp2=rs2.getString(5);     
                        medmgf2=rs2.getString(6);
                        medexp2=rs2.getString(7);
                        medamt2=rs2.getString(9);
                    }
                    
                %>
                <tr>
                <td align="center"><b>Medicine Category</b></td>
                <td align="center"><input type="text" name="txtmedcat" value="<%=cat%>" readonly="true"/></td>
                </tr>               
                <tr>
                <td align="center"><b>Medicine Name</b></td>
                <td align="center"><input type="text" name="txtmednm" value="<%=mednm2%>" readonly="true"/></td>
                </tr>                
                <tr>
                <td align="center"><b>Medicine Company</b></td>
                <td align="center"><input type="text" name="txtmedcomp" value="<%=medcomp2%>" readonly="true"/></td>
                </tr>  
                <tr>
                <td align="center"><b>MAN</b></td>
                <td align="center"><input type="text" name="txtman" value="<%=medmgf2%>" readonly="true"/></td>
                </tr>
                <tr>
                <td align="center"><b>EXP</b></td>
                <td align="center"><input type="text" name="txtexp" value="<%=medexp2%>" readonly="true"/></td>
                </tr>
                <tr>
                <td align="center"><b>Power</b></td>
                <td align="center"><input type="text" name="txtmedpow" value="<%=medpow2%>" readonly="true" /></td>
                </tr>                    
                <tr>
                    <td align="center"><label class="required"><b>Quantity</b></label></td>
                    <td align="center"><input type="text" name="txtqty" value="" placeholder="Enter Quantity" title="please enter only number" required="">
                </tr>
                <tr>
                <td align="center"><b>Amount per unit</b></td>
                <td align="center"><input type="text" name="txtamt" value="<%=medamt2%>" readonly="true"/></td>
                </tr>
               <% //}%>
                <tr >
                    <td align="center" ><input type="submit" value="Confirm Order" name="Confirm Order" /></td>
                    <td align="center"><a href="Payment_choice.jsp">Payment</a></td>
                </tr>
               </tbody>          
            </table>
                    
                <%
                cnm=request.getParameter("txtcnm");
                custmob=request.getParameter("txtmob");
                cadd=request.getParameter("txtcustadd");
                id1=request.getParameter("txtmedid");
                cat=request.getParameter("txtmedcat");
                mednm2=request.getParameter("txtmednm"); 
                medcomp2=request.getParameter("txtmedcomp");
                medmgf2=request.getParameter("txtman");
                medexp2=request.getParameter("txtexp");
                medpow2=request.getParameter("txtmedpow");
                medamt2=request.getParameter("txtamt");
                date=request.getParameter("txtdate");
                qty=request.getParameter("txtqty");
                    Statement st2=con.createStatement();
                    if( qty!= null && qty!="" )
                    {
                        String str4="insert into order_medicines(id,order_date,customer_name,mobile_no,address,medicine_category,medicine_name,medicine_company,medicine_power,quantity,id1,Amount,username)values("+a1+",'"+date+"','"+cnm+"',"+custmob+",'"+cadd+"','"+cat+"','"+mednm2+"','"+medcomp2+"','"+medpow2+"',"+qty+","+id1+","+medamt2+",'"+unm+"')";
                        int i=st2.executeUpdate(str4);
                        out.println("<script>alert('Order Successfull...Go to Payment')</script>");
                        
                    }   
                    //response.sendRedirect("Receipt.jsp");
                /*Statement st5=con.createStatement();
                      String str5="select  * from add_medicine where id="+id1+"";
                    ResultSet rs3=st.executeQuery(str5);
                    while(rs3.next())
                    {
                        cat=rs3.getString(2);
                        mednm2=rs3.getString(3);
                        medpow2=rs3.getString(4);
                        medcomp2=rs3.getString(5);     
                        medmgf2=rs3.getString(6);
                        medexp2=rs3.getString(7);
                        medamt2=rs3.getString(10);
                    }*/
                    String date1=null;
                    String orderid=String.valueOf(a1);
                    session.setAttribute("orderid1",orderid);
                    session.setAttribute("nm",cnm);
                  // String mob1=String.valueOf(custmob);
                    session.setAttribute("custmob1",custmob);
                    session.setAttribute("add",cadd);                                
                    session.setAttribute("mednm1",mednm2);
                    session.setAttribute("medcomp1",medcomp2);                  
                    session.setAttribute("medpow1",medpow2);
                    //String qty1=String.valueOf(qty);
                    session.setAttribute("qty1",qty);
                    String rate1=String.valueOf(medamt2);                 
                    session.setAttribute("medamt3",medamt2);
                    session.setAttribute("date1", date);
                %>
        </form>	
        </div>
        </div>
     </section>
     <br>
            <!--footer start-->
<div class="footer" style="color: black;">
                <marquee> <p class="design">Designed By:Rasika Deshmukh & Nikita Mane SGMCK 2023-24</marquee>
        </div> 
    </body>
</html>


