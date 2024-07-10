<%-- 
    Document   : Home
    Created on : 22 Jun, 2024, 4:05:50 PM
    Author     : admin
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <title>ADVANCED STUDENT PLACEMENT DETAILS</title> 
        <meta name="keywords" content="" />
        <meta name="description" content="" />

        <link href="Sheet.css" rel="stylesheet" type="text/css" />
            <asp:ContentPlaceHolder ID="head" runat="server">
            </asp:ContentPlaceHolder>
            <style type="text/css">
                .style1
                {
                    width: 765px;
                }
            </style>
    </head>
    <body>
        <form name="frm" method="post">
<div id="tooplate_header_wrapper">

    <div id="tooplate_header">
    
        <div id="site_title">
        
        	<h1><a href="#"><span></span></a></h1>
        
        </div> <!-- end of site_title -->
        
        <div id="header_phone_no">

			
        
        </div>
        
        <div class="cleaner_h10"></div>
        
        <div id="tooplate_menu" style="position:absolute;">
        	
            <%@include file="adminHeader.jsp" %>
            <%@include file="connect.jsp" %>
        
    </div>	  
</div> 

            <%@include file="projectTitle.jsp" %>

<div id="tooplate_main">
    
    
     <table border="2" style="height: 100%; width: 100%">
                     
                    <tr>
                        <td align="center">
                            <br/> <br/>
                            <h4>VIEW STAFF DETAILS</h4>
                            <center>
                            <%
                                    String q="select s.sid,s.sname,s.email,s.Qualification,d.Dept_Name,s.grade,s.contact from staffDetails s,Department d where s.department=d.Dept_Id";
                                    rs=st.executeQuery(q);
                                        out.print("<table border='0' style='border-radius:10px'><tr style='background:pink; color:red'><td>ID</td><td>STAFF NAME</td><td>EMAIL</td><td>QUALIFICATION</td><td>DEPARTMENT</td><td>GRADE</td><td>CONTACT</td></tr>");
                                        while(rs.next())
                                        {
                                            out.print("<tr style='background:yellow; color:blue'><td>"+rs.getString("sid")+
                                                    "</td><td>"+rs.getString("sname")+
                                                    "</td><td>"+rs.getString("email")+
                                                    "</td><td>"+rs.getString("Qualification")+
                                                    "</td><td>"+rs.getString("Dept_Name")+
                                                    "</td><td>"+rs.getString("grade")+
                                                    "</td><td>"+rs.getString("contact")+"</td></tr>");
                                        }
                                        out.print("</table>");
                            %>
                           
                           </center> 
                           <br/> <br/> <br/> 
                        </td>
                    </tr>
                </table>
       
    
 </div>
    
        
        
		
</div>

    <div class="cleaner"></div>  

<div id="tooplate_footer_wrapper">

     <div id="tooplate_footer">
    
        Copyright © 2024 <a href="#">VIMALADEVI MCA</a>  <a href="http://www.tooplate.com"></a>
    
    </div> 

</div> 
    </form>
    </body>
</html>
