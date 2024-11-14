<%--
    Document   : Admin_Stock
    Created on : Feb 14, 2024, 9:34:41 AM
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
    <body> 
            
<section class="sub-header">
        <div class="main">
        <div class="container">
            <nav>
            <ul>
                <li><a href="Admin_homepage.jsp" ><b>Home</b></a></li>	         
                <li><a href="Admin_Stock.jsp" ><b> Medicine Stock</b></a></li>
                <li><a href="Homepage.jsp"><b>Logout</b></a></li>          
            </ul>
            </nav>
        </div>        
        
            <div class="title6">         
            <br>
        <h1>Medicine Stock</h1>   
        </div>
         <br><br><br><br><br>
        <div align="center">  
         <form> 
            <table  style="background-color: white;" border="1" width="1200" height="200" align="center">         
            <tbody style="color:black;">                                                    
                    <tr>
                        <td align="center"  height="50"><b>Category</b></td>
                        <td align="center" >
                        <select name="drpcat" >
                             <option>Select</option>
                            <option>Syrup</option>
                            <option>Capsule</option>
                            <option>Tablet</option>
                            <option>Cream</option>
                            <option>Shampoo</option>
                        </select>
                        </td>
                        <td align="center"><b>Medicine Name</b></td>
                        <%
                            String mednm2=null;
                            Statement st1 = con.createStatement();
                            String str1="select * from add_medicine";
                            ResultSet rs1=st1.executeQuery(str1);
                            
                        %>
                        <td align="center">
                          
                        <select name="drpmednm" >
                            <option>Select</option>
                       <%while(rs1.next())
                            {
                                %>
                                
                                <option><%=rs1.getString(3)%></option>
                                <%
                            }
                            %></select>
                        </td>
                        <td align="center"><b>Medicine Company</b></td>
                <td align="center">
                <select name="drpcomp" >
                    <option>Select</option>
                    <option>Cipla</option>
                    <option>Sun Pharma</option>
                    <option>Mankind</option>
                    <option>Dr.Reddys</option>
                    <option>Alkem</option> 
                    <option>Intas</option>
                    <option>Beiersdorf</option>
                    <option>Hindustan Unilever</option>
                </select>
                </td>
                 <td align="center"><b>Medicine Power</b></td>
                <td align="center">
                <select name="drppow" >
                    <option>Select</option>
                   <option>------</option>
                    <option>0.25mg</option> 
                    <option>0.5mg</option>
                    <option>1mg</option>
                    <option>1.25mg</option>
                    <option>2mg</option>
                    <option>5mg</option>
                    <option>10mg</option>
                    <option>50mg</option>
                    <option>100mg</option>
                    <option>125mg</option>
                    <option>200mg</option>
                    <option>228mg</option>
                     <option>200ml</option>
                    <option>650ml</option>
                    <option>400ml</option>
                    <option>185ml</option>
                    <option>180ml</option>
                </select>
                </td>
                </tr>
                        <tr>
                        <td align="center" colspan="8" height="50px"><input type="Submit" value="Search Stock" name="txtsearch">
                        </td>    
                        </tr>
                 <tr align="center" bgcolor="pink" colspan="8">
                <td>Category</td><td>Medicine Name</td><td>Medicine Power</td><td>Medicine Company</td><td>Price</td><td colspan="2" >Unit</td><td>Stock</td>
            </tr>
            
                    <%
                        int medprice=0;
                        String medunit=null;
                        int quantity=0;
                        String cat1=request.getParameter("drpcat");
                        String mednm1=request.getParameter("drpmednm");
                        String medcomp1=request.getParameter("drpcomp");
                        String medpow1=request.getParameter("drppow");
                        Statement st = con.createStatement();
                            String str="select * from add_medicine where category='"+cat1+"' and medicine_name='"+mednm1+"' and medicine_company='"+medcomp1+"' and medicine_power='"+medpow1+"'";
                            ResultSet rs=st.executeQuery(str);
                            while(rs.next())
                            {
                                cat1=rs.getString(2);
                                mednm1=rs.getString(3);
                                medpow1=rs.getString(4);
                                medcomp1=rs.getString(5);
                                medprice=rs.getInt(9);
                                medunit=rs.getString(10);  
                           
                     %>
            <tr align="center">              
                
                <td> <%=cat1%> </td>
                <td> <%=mednm1%> </td>
                <td> <%=medpow1%> </td>
                <td> <%=medcomp1%> </td>
                <td> <%=medprice%> </td>
                <td colspan="2" > <%=medunit%> </td> 
                 <%} 
                 Statement st2 = con.createStatement();
                 String str2="select sum(qty) from add_medicine where category='"+cat1+"' and medicine_name='"+mednm1+"' and medicine_company='"+medcomp1+"' and medicine_power='"+medpow1+"'";
                 ResultSet rs2=st.executeQuery(str2);
                 while(rs2.next())
                 {
                    quantity=rs2.getInt(1);
                    
                %>
             <%} %>
            <%
                 int qty1=0;
                 int stock=0;
                Statement st3 = con.createStatement();
                String str3="select sum(quantity) from order_medicines where medicine_category='"+cat1+"' and medicine_name='"+mednm1+"' and medicine_company='"+medcomp1+"' and medicine_power='"+medpow1+"'";
                ResultSet rs3=st3.executeQuery(str3);
                 while(rs3.next())
                 {
                     qty1=rs3.getInt(1);
                     
                 }
                 
                 stock=quantity-qty1;
                 
                
            %>
             <td> <%=stock%> </td>   
             </tr>
            
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