<%-- 
    Document   : Cust_order
    Created on : Oct 30, 2023, 11:06:43 AM
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
        padding: 15px 30px;
        text-decoration: none;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 12px;
      }
    </style>
    <body style="overflow-y: hidden;">
        <%
        
         String id1=request.getParameter("Id");
         String unm=(String)session.getAttribute("nm");   
         String custadd=null;
         String custmob=null;
         String medcat=null;
         String mednm1=null;
         String medcomp1=null;
         String medmgf1=null;
         String medexp1=null;
         String medpow1=null;
         int a1=0;
        %>
       <section class="sub-header">
            <div class="main">
            <div class="container">
            <nav>
                <ul>
                    <li><a href="Cust_homepage.jsp">Home<br></a></li>
                    <li><a href="Cust_order.jsp">Order Medicines </a></li>
                    <li><a href="Cust_homepage.jsp">Logout </a></li>
                </ul>
            </nav>
            </div>         
            <div class="title6">
                <h1>Order Medicines</h1> 
            </div>
                 <br><br>  
            <div align="center">
                <form > 
                <%
                    int a=0;
                    
                    Statement st=con.createStatement();
                    String str="select count(*) from order_medicines";
                    ResultSet rs=st.executeQuery(str);
                    if(rs.next())
                    {
                        a=rs.getInt(1);
                        a++; 
                    }
                %>
                <table  border="1" align="center" width="500px" height="400px" style="background-color: white;">
                <tbody style="color:black;">           
                <tr>
                <td align="center"><b>Order Id</b></td>
                <td align="center"><%=a%></td>
                </tr>                      
            <% 
                String str1="select  * from customer_registration where username='"+unm+"'";
                ResultSet rs1=st.executeQuery(str1);
                       while(rs1.next())
                        {
                            unm=rs1.getString(3);
                            custadd=rs1.getString(5);
                            custmob=rs1.getString(4);
                       }
            %>
                <tr>
                <td align="center"><b>Customer Name</b></td>
                <td align="center"><%=unm%></td>
                 </tr>              
                <tr>
                <td align="center"><b>Mobile No</b></td>
                <td align="center"><%=custmob%></td>
                </tr>                
                <tr>
                <td align="center"><b>Address</b></td>
                <td align="center"><%=custadd%></td>
                </tr>
                <tr>
                <td align="center"><b>Medicine ID</b></td>
                 <td align="center"><%=id1%></td>
                </tr>
                <% 
                    String cat=null;
                    String mednm=null;
                    String medpow=null;
                    String medcomp=null;
                    String medmgf=null;
                    String medexp=null;
                    String medamt=null;   
                    
                    String cat1=request.getParameter("drpcat");
                    String str2="select  * from add_medicine where id="+id1+"";
                    ResultSet rs2=st.executeQuery(str2);
                    while(rs2.next())
                    {
                        cat=rs2.getString(2);
                        mednm=rs2.getString(3);
                        medpow=rs2.getString(4);
                        medcomp=rs2.getString(5);     
                        medmgf=rs2.getString(6);
                        medexp=rs2.getString(7);
                        medamt=rs2.getString(12);
                    }
                %>
                <tr>
                <td align="center"><b>Medicine Category</b></td>
                <td align="center"><%=cat1%></td>
                </tr>               
                <tr>
                <td align="center"><b>Medicine Name</b></td>
                <td align="center"><%=mednm%></td>
                </tr>                
                <tr>
                <td align="center"><b>Medicine Company</b></td>
                <td align="center"><%=medcomp%></td>
                </tr>  
                <tr>
                <td align="center"><b>MAN</b></td>
                <td align="center"><%=medmgf%></td>
                </tr>
                <tr>
                <td align="center"><b>EXP</b></td>
                <td align="center"><%=medexp%></td>
                </tr>
                <tr>
                <td align="center"><b>Power</b></td>
                <td align="center"><%=medpow%></td>
                </tr>                                                           
                <tr>
                <td align="center" colspan="2" height="50px" ><a href="Cust_order1.jsp">Order</a></td>
                </tr>
            </tbody>          
            </table>
                <%
                    String a2=String.valueOf(a);
                    session.setAttribute("a",a2);       //order id                          
                    session.setAttribute("nm",unm);
                    String mob1=String.valueOf(custmob);
                    session.setAttribute("mob",mob1);
                    session.setAttribute("add",custadd);
                    String id2=String.valueOf(id1);
                    session.setAttribute("Id",id2);         //med id
                    session.setAttribute("medcat",cat1);
                    session.setAttribute("mednm1",mednm);
                    session.setAttribute("medcomp1",medcomp);
                    session.setAttribute("medmgf1",medmgf);
                    session.setAttribute("medexp1",medexp);
                    session.setAttribute("medpow1",medpow);
                    session.setAttribute("medamt1",medamt);
                
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

