<%-- 
    Document   : Add_medicine
    Created on : Oct 30, 2023, 10:58:21 AM
    Author     : 91880
--%>
<%@include file="Connection.jsp" %>
<%@page import= "java.io.*" %>
<%@page import= "java.util.Date" %>
<%@page import = "java.text.SimpleDateFormat" %>
<%@page import = "java.util.Calendar" %>
<%@page import = "java.text.DateFormat" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link href="css/new2.css" rel="stylesheet" type="text/css"/>
        <style type="text/css">
            label{
                width:150px;
                display: inline-block;
            }
            
        </style>
    </head>
    <style>
      
      input[type=submit] {
        background-color: blue;
        border-color: black;
        border-width: medium;
        color: #fff;
        padding: 12px 25px;
        text-decoration: none;
        margin: 4px 2px;
        cursor: pointer;
        border-radius: 12px;
      }
    </style>
    <body style="background-image: linear-gradient(rgba(0,0,0,0.4),rgba(0,0,0,0.4)),url(img/background4.jpg);background-repeat: no-repeat;" >
         <%
            int no=0;
            String cat=null;
            String mnm=null;
            String mpow=null;
            String mcomp=null;       
            String medmgf=null;
            String medexp=null;
            String gst=null;
            String price=null;
            String unit=null;
            String img=null;
            int month=0;
        %>
        <section class="sub-header">
        <div class="main">
        <div class="container">
          
        <nav>
            
            <ul>
                <li><a href="Admin_homepage.jsp"><b>Home</b><br></a></li>
                <li><a href="Add_medicine.jsp"><b>Add Medicines</b> </a></li>
                <li><a href="Admin_Stock.jsp"><b>Stock </b></a></li>
                <li><a href="Search_order.jsp"><b>Search Order</b> </a></li>
                <li><a href="Homepage.jsp"><b>Logout </b></a></li>
            </ul>
            
        </nav>
        </div>
                
        <div class="title6">
            <h1>Add Medicine</h1><br>
        </div>
              <br>     
        <div align="center">
            <form style="color: black;">
                
            <%
                    int a=0;
                    Statement st=con.createStatement();
                    String str="select count(*) from add_medicine";
                    ResultSet rs=st.executeQuery(str);
                    if(rs.next())
                    {
                        a=rs.getInt(1);
                        a++; 
                    }
            %>
                <table border="1" align="center" width="800px" height="650px" style="background-color: white">
                                                       
                <tbody> 
               
                
                <tr>
                    <td align="center"><b>Medicine ID</b></td>
                
                 <td align="center"><%=a%></td>
                </tr>
                
                <tr>
                <td align="center"><b>Category</b></td>
                <td align="center">
                <select name="drpcat" >
                   <option>Select</option>
                    <option>Syrup</option>
                    <option>Capsule</option>
                    <option>Tablet</option>
                    <option>Cream</option>
                    <option>Shampoo</option>
                </select>
                </td>
                </tr>  
                
                <tr>
                <td align="center"><b>Medicine Name</b></td>
                <td align="center"><input type="text" name="txtmnm" value="" placeholder="Enter Medicine Name" width="50px" height="25px" ></td>
                </tr>
                <br><br>
                <tr>
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
                </tr>
              
                <tr>
                <td align="center"><b>Mgf</b></td>
                <td align="center"><input type="date" name="txtmgf" value=""></td>
                </tr>
                
                <tr>
                <td align="center"><b>Exp</b></td>
                <td align="center"><input type="date" name="txtexp" value=""></td></td>
                
                </tr>
               
                <tr>
                <td align="center"><b>Medicine Path</b></td>
                <td align="center"><input type="file" name="fileupload" value="" /></td>
                </tr>
                
                <tr>
                <td align="center"><b>GST</b></td>
                <td align="center"><input type="text" name="txtmgst" value="" placeholder="Enter GST" ></td>
                </tr>
                <tr>
                <td align="center"><b>Price</b></td>
                <td align="center"><input type="text" name="txtmprc" value="" placeholder="Enter Price" ></td>
                </tr>
                <tr>
                <td align="center"><b>Unit</b></td>
                <td align="center">
                <select name="drpunt">
                    <option>Bottle</option>
                    <option>Strip</option>
                </select>
                </td>
                </tr>
                <tr>
                <td align="center"><b>Quantity</b></td>
                <td align="center"><input type="text" name="txtqty" value="" placeholder="Enter Quantity" ></td>
                </tr>
                <%
                    String quantity=null;
                    quantity=request.getParameter("txtqty");
                     int qty1=0;
                    unit=request.getParameter("drpunt");
                    if(quantity !="" && quantity !=null)
                    {
                    int qy=Integer.valueOf(quantity);
                   
                    if(unit.equals("Strip"))
                    {
                         qty1=qy*10;  
                       // out.println(qty1);
                    }
                    else if(unit.equals("Bottle"))
                        {
                            qty1=qy/1;
                        }
                }
                %>
                <tr>
                <td align="center" colspan="2" height="50px"><input type="submit" value="Add Medicine" name="txtadd"></td>
                </tr>
                
              </table>
            <%
                cat=request.getParameter("drpcat");
                mnm=request.getParameter("txtmnm");
                mpow=request.getParameter("drppow");
                mcomp=request.getParameter("drpcomp");     
                medmgf=request.getParameter("txtmgf");
                medexp=request.getParameter("txtexp");
                gst=request.getParameter("txtmgst");
                price=request.getParameter("txtmprc");
                img=request.getParameter("fileupload");

                Statement st1=con.createStatement();
                if(cat!= null && cat!="" && mnm!= null && mnm!="" && mpow!= null && mpow!="" && mcomp!= null && mcomp!="" && gst!= null && gst!="" && price!= null && price!="" && unit!= null && unit!="" && img!= null && img!="")
                {
                    String str1="insert into add_medicine(id,category,medicine_name,medicine_power,medicine_company,mgf,exp,gst,price,unit,img,quantity,qty) values("+a+",'"+cat+"','"+mnm+"','"+mpow+"','"+mcomp+"','"+medmgf+"','"+medexp+"',"+gst+","+price+",'"+unit+"','"+img+"',"+quantity+","+qty1+")";
                    int i=st1.executeUpdate(str1);
                    out.println("<script>alert('Medicine Added Successfully...')</script>");    
                }      
            %>
            </form>	
        </div>
        </div>
        </section>
      <br><br><br><br><br><br><br><br><br><br><br><br><br><br><br><br>            
    <!--footer start-->
    <div class="footer" style="color: black;">
            <marquee> <p class="design">Designed By:Rasika Deshmukh & Nikita Mane SGMCK 2023-24</marquee>
    </div> 
   </body>
</html>

