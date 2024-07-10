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
        	
            <div id="home_menu"><a href="#"></a></div>
                
            <ul>
                <li><a href="adminlogin.jsp">ADMIN</a>
                    
                 </li>
                <li><a href="user.jsp">STAFF</a></li>
                 
                
            </ul>    	
        
        </div> 
        
    </div>	  
</div> 

<%@include file="projectTitle.jsp" %>
<%@include file="connect.jsp" %>

<div id="tooplate_main">
    
    
     <table style="width:100%;height:100%" >
       <tr>
         <td align="center">
                 <center>
    <h3 align="center">Staff Login</h3>
  <table border="2">
    <tr>
      <td>
          UserName
      </td>
      <td>
          <input type="text" name="txtUname" Width="124px">
          
      </td>
    </tr>
    <tr>
      <td>
          Password
      </td>
      <td >
          <input type="password" name="txtPassword" Width="124px">
          
      </td>
    </tr>
     <tr>
      <td colspan="2" align="center">
          <input type="submit" name="btnLogin" value="Login">
         
      </td>
      
    </tr>
    <tr>
        
        
        
        
      <td colspan="2" align="center">
                            <%
                                String btn=request.getParameter("btnLogin");
                                if(btn!=null)
                                {
                                    String name=request.getParameter("txtUname");
                                    String password=request.getParameter("txtPassword");
                                    
                                    String q = "select department from staffDetails where uname='" + name + "' and pwd='" + password + "' and status=1";
                                    rs=st.executeQuery(q);
                                    if(rs.next())
                                    {
                                        session.setAttribute(name,"user");
                                        session.setAttribute(rs.getString("department"),"dept");
                                        response.sendRedirect("userwelcome.jsp");
                                    }
                                    else
                                    {
                                        out.print("Invalid entry");
                                    }
                                }
                            %>
         
      </td>
      
    </tr>
 </table>
</center>
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
