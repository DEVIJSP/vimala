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
    
    
     <table style="width:100%;height:100%" >
       <tr>
         <td align="center">
              <table>
             <tr>
               <td colspan="2" align="center">
                 <h3 align="center">STAFF INFORMATION</h3>
               </td>
             </tr>
            
               <tr>
                 <td align="left" class="style3">
                    StaffName
                 </td>
                 <td align="left" class="style2">
                     <input type="text" name="txtStaffName">
                 </td>
             </tr> <tr>
                 <td align="left" class="style3">
                   UserName
                 </td>
                 <td align="left" class="style2">
                <input type="text" name="txtUname">
                 </td>
             </tr>
              <tr>
                 <td align="left" class="style3">
                     Password
                 </td>
                 <td align="left" class="style2">
                     <input type="password" name="txtPassword">
                 </td>
                
             </tr>
              <tr>
                 <td align="left" class="style6">
                            ConfirmPassword
                 </td>
                 <td align="left" class="style7">
                     <input type="password" name="txtconfirmPassword">
                 </td>
             </tr>
              <tr>
                 <td align="left" >
                     EmailId
                 </td>
                 <td align="left" class="style9">
                     <input type="text" name="txtEmailId">
                 
                 </td>
             </tr>
              <tr>
                 <td align="left" class="style3">
                     Qualification
                 </td>
                 <td align="left" class="style2">
                     <input type="text" name="txtQualification">
                 </td>
             </tr>
              <tr>
                 <td align="left" class="style3">
                  Department
                 </td>
                 <td align="left" class="style2">
                     <select name="ddlDepartment">
                         <option value="1">Computer Application</option>
                     </select>
                    
                 </td>
             </tr>
              <tr>
                 <td align="left" class="style3">
                  Grade
                 </td>
                 <td align="left" class="style2">
                    
                     <select name="ddlGrade">
                         <option value="1">Associate Professor and Head</option>
                         <option value="2">Associate Professor</option>
                         <option value="3">Assitant Professor</option>
                         <option value="4">Assitant Professor</option>
                     </select>
                 </td>
             </tr>
             <tr>
                 <td align="left" class="style3">
                    ContactNumber
                 </td>
                 <td align="left" class="style2">
                     <input type="text" name="txtContactNumber">
                 </td>
             </tr>
             
           
             <tr>
                 <td align="center" colspan="2">
                     <input type="submit" name="btnSubmit" value="Submit">
                    
                     
                 </td>
            </tr>
              <tr>
                 <td align="center" colspan="2">
                     <%
                            String btn=request.getParameter("btnSubmit");
                            if(btn!=null)
                            {
                                String q="select sid from staffDetails where uname='"+request.getParameter("txtUname")+"'";
                                rs=st.executeQuery(q);
                                if(rs.next())
                                {
                                    out.print("<font color='red'>Staff Details already exist!!</font>");
                                }
                                else
                                {
                                    q="insert into staffDetails(sname,uname,pwd,email,Qualification,department,grade,contact,status)values('" + request.getParameter("txtStaffName") +
                   "','" + request.getParameter("txtUname") +
                   "', '" + request.getParameter("txtPassword") +
                   "' ,'" + request.getParameter("txtEmailId") +
                   "','" + request.getParameter("txtQualification") +
                   "','" +request.getParameter("ddlDepartment") +
                   "','" + request.getParameter("ddlGrade") +
                   "','" + request.getParameter("txtContactNumber") +
                   "',1)";
                                    int a=st.executeUpdate(q);
                                    if(a>0)
                                    {
                                        out.print("<font color='green'>Staff information added success!!</font>");
                                    }
                                    else
                                    {
                                        out.print("<font color='red'>Staff information added failure!!</font>");
                                    }
                                }
                            }
                     %>
                 </td>
            </tr>
              <tr>
                 <td align="center" colspan="2">
                     <h5>
                         <li style="list-style:none"><a href="StaffInfo.jsp">Staff Information</a></li>
                     </h5>
                    
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
