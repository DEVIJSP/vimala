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
                
            <%@include file="staffHeader.jsp" %>  	
        
        </div> 
        
    </div>	  
</div> 

<%@include file="projectTitle.jsp" %>


<div id="tooplate_main">
    
    
     <table style="width:100%;height:100%" >
       <tr>
         <td align="center">
             <h3 align="center">
    Company Information</h3>
<table border="2">
    <tr>
        <td align="left">
            CompanyName
            
        </td>
        <td align="left">
            <input type="text" name="txtCompanyName" Width="124px">
            
        </td>
    </tr>
    <tr>
        <td align="left">
            Skills
        </td>
        <td align="left">
            <input type="text" name="txtSkills" Width="124px">
            
        </td>
    </tr>
    <tr>
        <td align="left">
            Procudure
            
        </td>
        <td align="left">
            
            <textarea id="txtProcudure" name="txtProcudure" rows="4" cols="25" runat="server"></textarea>
        </td>
    </tr>
    <tr>
        <td align="left">
            Email
            
        </td>
        <td align="left">
            <input type="text" name="txtEmail" Width="124px">
          
        </td>
    </tr>
    <tr>
        <td align="left">
            Website
        </td>
        <td align="left">
            <input type="text" name="txtWebsite" Width="124px">
           
        </td>
    </tr>
    <tr>
        <td align="left">
            Contact
        </td>
        <td align="left">
            <input type="text" name="txtContact" Width="124px">
            
        </td>
    </tr>
    <tr>
        <td align="left">
            Eligibility Marks Percentage(%) from 
            
        </td>
        <td align="left">
            <input type="text" name="txtEligibility" Width="124px">
            
        </td>
    </tr>
    <tr>
        <td>
            Batch
        </td>
        <td>
            <select name="ddlBatch">
            </select>
            
        </td>
    </tr>
    <tr>
        <td align="left">
            Interview Date
            
        </td>
        <td align="left">
             <input type="date" name="cldrInterviewDate" Width="124px">
            
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            <input type="submit" name="btnSubmit" value="Submit">
            
        </td>
    </tr>
    <tr>
        <td colspan="2" align="center">
            
        </td>
    </tr>
    <tr id="trEligibility" runat="server">
        <td align="center" colspan="2">
            <a href="EligibleReport.jsp">View Eligible Student</a>
           
        </td>
    </tr>
</table>
             
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
