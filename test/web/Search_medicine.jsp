<%-- 
    Document   : Search_medicine
    Created on : Oct 30, 2023, 11:35:14 AM
    Author     : 91880
--%>
<%@include file="Connection.jsp" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

    <head>
        <link href="css/new2.css" rel="stylesheet" type="text/css"/>
        <script language="javascript">
        function editRecord(id)
        {
            var f = document.form;                                                                                                                                                           
            f.method="post";
            f.action='Cust_order1.jsp?Id=' +id;
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
                <li><a href="Search_medicine.jsp" ><b>Search Medicine</b></a></li>
                <li><a href="Homepage.jsp"><b>Logout</b></a></li>          
            </ul>
            </nav>
        </div>        
            <p style="color:white;"> Username=<%=unm%> </p>
            <div class="title6">         
            <br>
        <h1>Search Medicine</h1>   
        </div>
         <br><br><br><br><br>
        <div align="center">  
         <form method="post" name="form"> 
            <table  style="background-color: white;" border="1" width="1200" height="200" align="center">         
            <tbody style="color:black;">                                                    
                    <tr>
                        <td align="center" colspan="6" height="50"><b>Category</b></td>
                        <td align="center" colspan="6">
                        <select name="drpcat" >
                            <option>Syrup</option>
                            <option>Capsule</option>
                            <option>Tablet</option>
                            <option>Cream</option>
                            <option>Shampoo</option>
                        </select>
                        </td>
                    </tr>
                        <tr>
                        <td align="center" colspan="12" height="50px"><input type="Submit" value="Search" name="txtsearch">
                        </td>    
                        </tr>
                 <tr align="center" bgcolor="pink">
                <td>Medicine ID</td><td>Category</td><td>Medicine Name</td><td>Medicine Power</td><td>Medicine Company</td><td>Medicine Image</td><td>MGF</td><td>EXP</td><td>GST</td><td>Price</td><td>Unit</td>
            </tr>
            
                    <%
                        int id=0;
                        String cat=null;
                        String mednm=null;
                        String medpow=null;
                        String medcomp=null;
                        String medmgf=null;
                        String medexp=null;
                        String img=null;
                        int medgst=0;
                        
                        int medprice=0;
                        String medunit=null; 
                        String cat1=request.getParameter("drpcat");
                        Statement st = con.createStatement();
                            String str="select  * from add_medicine where category='"+cat1+"'";
                            ResultSet rs=st.executeQuery(str);
                            while(rs.next())
                            {
                                id=rs.getInt(1); 
                                cat=rs.getString(2);
                                mednm=rs.getString(3);
                                medpow=rs.getString(4);
                                medcomp=rs.getString(5);
                                medmgf=rs.getString(6);
                                medexp=rs.getString(7);
                                medgst=rs.getInt(8);
                                medprice=rs.getInt(9);
                                medunit=rs.getString(10);  
                                img="img/"+rs.getString(11);
                                
                    %>
            <tr align="center">              
                <td> <%=id%> </td>
                <td> <%=cat%> </td>
                <td> <%=mednm%> </td>
                <td> <%=medpow%> </td>
                <td> <%=medcomp%> </td>
                <td> <img src="<%=img%>" height="100" width="100"/></td> 
                <td> <%=medmgf%> </td>
                <td> <%=medexp%> </td>
                <td> <%=medgst%> </td>
                <td> <%=medprice%> </td>
                <td> <%=medunit%> </td>   
                 
                <td align="center"><input type="button"name="ByNow" value="ByNow"style="background-color: cornflowerblue;font-weight: bold;color: white;font-size: larger;"onclick="editRecord(<%=rs.getInt(1)%>)"/></td>
            </tr>
            <%}
                            session.setAttribute("unm1", unm);
                           // String id1=String.valueOf(id);
                            // session.setAttribute("id1", id);
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


