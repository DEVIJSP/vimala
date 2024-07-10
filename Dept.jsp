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
        
    </div>	  
</div> 

            <%@include file="projectTitle.jsp" %>

<div id="tooplate_main">
    
    
     <table id="contenttable" style="width: 100%; height: 100%">
                        <tr>
                            <td align="center">
                                <table bgcolor="silver" border="0" class="tbl">
                      
                        
                        <tr>
                            <td align="left">
                               Department
                            </td>
                            <td align="left">
                            	<input type="text" name="txtDepartment">
                               
                            </td>
                            <td>
                                
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                            	<input type="submit" name="btnAdd" value="Add" />
                               
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <%@include file="connect.jsp" %>
                              <%
                                
                                String btn=request.getParameter("btnAdd");
                                if(btn!=null)
                                {
                                    String dname=request.getParameter("txtDepartment");
                                    String q="select Dept_Id from Department where Dept_Name='"+dname+"'";
                                    rs=st.executeQuery(q);
                                    if(rs.next())
                                    {
                                        out.print("<font color='red'>Department name already exist!!</font>");
                                    }
                                    else
                                    {
                                        q="insert into Department(Dept_Name,status)values('"+dname+"',0)";
                                        int a=st.executeUpdate(q);
                                        if(a>0)
                                        {
                                            out.print("<font color='green'>Department added success!!</font>");
                                        }
                                        else
                                        {
                                            out.print("<font color='red'>Department adding failure!!</font>");
                                        }
                                    }
                                }
                               
                              %>
                            </td>
                        </tr>
                        <tr>
                            <td colspan="3" align="center">
                                <%
                                    String hdn=request.getParameter("hdnFlag");
                                    if(hdn!=null)
                                    {
                                        //out.print(hdn);
                                        String qry="select Dept_Id,Dept_Name,status from Department";
                                        rs=st.executeQuery(qry);
                                        out.print("<table border='1'>"
                                                + "<tr style='background:purple; color:white'>"
                                                    + "<td>ID</td>"
                                                    + "<td>DEPARTMENT</td>"
                                                    + "<td>STATUS</td>"
                                                    + "<td>EDIT</td>"
                                                + "</tr>");
                                        while(rs.next())
                                        {
                                            if(Integer.parseInt(hdn)==Integer.parseInt(rs.getString("Dept_Id")))
                                            {
                                                         out.print("<tr>"
                                                            + "<td>"+rs.getString("Dept_Id")+"</td>"
                                                            + "<td><input type='text' name='txtDname' value='"+rs.getString("Dept_Name")+"'></td>"
                                                            + "<td>");
                                                          if(Integer.parseInt(rs.getString("status"))==0)
                                                            {
                                                                out.print("<input type='checkbox' name='chkboxStatus'>");
                                                            }
                                                            else
                                                            {
                                                                 out.print("<input type='checkbox' name='chkboxStatus' checked='checked'>");
                                                            }
                                                         
                                                         out.print("</td>"
                                                            + "<td><input type='submit' name='btnUpdate' id='"+rs.getString("Dept_Id")+"' value='Update' onclick='data(this.id)'><input type='submit' name='btnCancel' id='"+rs.getString("Dept_Id")+"' value='Cancel' onclick='data(this.id)'></td>"
                                                        + "</tr>");
                                            }
                                            else
                                            {
                                                    out.print("<tr>"
                                                                + "<td>"+rs.getString("Dept_Id")+"</td>"
                                                                + "<td>"+rs.getString("Dept_Name")+"</td>"
                                                                + "<td>");
                                                    if(Integer.parseInt(rs.getString("status"))==0)
                                                    {
                                                        out.print("<input type='checkbox' name='chkboxStatus' disabled='disabled'>");
                                                    }
                                                    else
                                                    {
                                                         out.print("<input type='checkbox' name='chkboxStatus' disabled='disabled' checked='checked'>");
                                                    }
                                                    out.print("</td>"
                                                            + "<td><input type='submit' name='btnEdit' id='"+rs.getString("Dept_Id")+"' value='Edit' onclick='data(this.id)'></td>"
                                                        + "</tr>");
                                            }
                                        }
                                        out.print("</table>");
                                    }
                                    else
                                    {
                                        String qry="select Dept_Id,Dept_Name,status from Department";
                                        rs=st.executeQuery(qry);
                                        out.print("<table border='1'>"
                                                + "<tr style='background:purple; color:white'>"
                                                    + "<td>ID</td>"
                                                    + "<td>DEPARTMENT</td>"
                                                    + "<td>STATUS</td>"
                                                    + "<td>EDIT</td>"
                                                + "</tr>");
                                        while(rs.next())
                                        {
                                            out.print("<tr>"
                                                    + "<td>"+rs.getString("Dept_Id")+"</td>"
                                                    + "<td>"+rs.getString("Dept_Name")+"</td>"
                                                    + "<td>");
                                            if(Integer.parseInt(rs.getString("status"))==0)
                                            {
                                                out.print("<input type='checkbox' name='chkboxStatus' disabled='disabled'>");
                                            }
                                            else
                                            {
                                                 out.print("<input type='checkbox' name='chkboxStatus' disabled='disabled' checked='checked'>");
                                            }
                                            out.print("</td>"
                                                    + "<td><input type='submit' name='btnEdit' id='"+rs.getString("Dept_Id")+"' value='Edit' onclick='data(this.id)'></td>"
                                                + "</tr>");
                                        }
                                        out.print("</table>");
                                    }
                                    
                                    String CancelBtn=request.getParameter("btnCancel");
                                    if(CancelBtn!=null)
                                    {
                                        response.sendRedirect("Department.jsp");
                                    }
                                    String UpdateBtn=request.getParameter("btnUpdate");
                                    if(UpdateBtn!=null)
                                    {
                                        String dept=request.getParameter("txtDname");
                                        String status=request.getParameter("chkboxStatus");
                                        int s=0;
                                        if(status!=null)
                                        {
                                            s=1;
                                        }
                                        String qry="update department set Dept_Name='"+dept+"',status="+s+" where Dept_Id="+hdn+"";
                                        int a=st.executeUpdate(qry);
                                        if(a>0)
                                        {
                                            response.sendRedirect("Department.jsp");
                                        }
                                        
                                    }
                                %>
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
