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
              <script type="text/javascript" language="javascript">
    function onlyalpha(e) {
        if (window.event) {
            if ((e.keyCode >= 48 && e.keyCode <= 57)) {
                event.returnValue = false;
                alert("only Alphabet values Allowed!... so please pass Alphaber values only");
                return false;
            }
        }
        else {
            if ((e.which >= 48 || e.which <= 57)) {
                return false;
            }
        }
    }
    function neumeric(e) {
        if (window.event) {
            if ((e.keyCode <48 || e.keyCode >57) && e.keyCode!=8)
            {
                if ((e.which >= 48 || e.which <= 57)) {
                 event.returnValue=false;

                 alert("only neuaric values Allowed!... so please prass neumeric values only");
                 return false;
            }
          }
        }
        else {
            if((e.which<48 || e.which>57) && e.which!=8)
            {
            e.preventDefault();
            return false;
            }
        }
    }
</script>
<style type="text/css">
    .caps
    {
        text-transform:uppercase;
    }
        .style1
        {
            height: 40px;
            width: 19%;
        }
        .style9
        {
            width: 35%;
            height: 27px;
        }
        .style16
        {
            width: 35%;
            height: 18px;
        }
        .style17
        {
            height: 18px;
        }
        .style18
        {
            height: 27px;
        }
        .style19
        {
            height: 29px;
        }
        .style20
        {
            height: 25px;
        }
        .style21
        {
            height: 12px;
        }
        .style22
        {
            height: 23px;
        }
        .style23
        {
            height: 72px;
        }
        .style26
        {
            height: 26px;
        }
        .style27
        {
            height: 4px;
        }
        .style28
        {
            height: 10px;
        }
        .style33
        {
            width: 58%;
            height: 17px;
        }
        .style34
        {
            height: 17px;
            width: 198px;
        }
        .style35
        {
            width: 58%;
            height: 24px;
        }
        .style36
        {
            height: 24px;
            width: 198px;
        }
        .style37
        {
            width: 58%;
            height: 19px;
        }
        .style38
        {
            height: 19px;
            width: 198px;
        }
        .style39
        {
            width: 58%;
            height: 3px;
        }
        .style40
        {
            height: 3px;
            width: 198px;
        }
        .style43
        {
            width: 58%;
            height: 16px;
        }
        .style44
        {
            height: 16px;
            width: 198px;
        }
        .style45
        {
        width: 58%;
    }
        .style46
        {
        width: 198px;
    }
        .style48
    {
        height: 29px;
        width: 35%;
    }
    .style49
    {
        height: 25px;
        width: 35%;
    }
    .style50
    {
        height: 16px;
        
    }
    .style51
    {
        height: 14px;
        width: 180px;
    }
    .style52
    {
        height: 28px;
        width: 180px;
    }
    .style54
    {
        height: 28px;
        width: 111px;
    }
    .style55
    {
        width: 111px;
    }
    .style56
    {
        height: 14px;
        width: 111px;
    }
    .style57
    {
        width: 53%;
    }
    .style58
    {
        width: 180px;
    }
    </style>
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
            <%@include file="connect.jsp" %>
        
        </div> 
        
    </div>	  
</div> 

<%@include file="projectTitle.jsp" %>


<div id="tooplate_main">
    
    
     <table style="width:100%;height:100%" >
       <tr>
         <td align="center">
                 <center>
    
                <h3 align="center">Personal Information</h3>
    <table border="2" style="width:100%">
  <tr>
    <td align="center">
    <table border="2" style="width:100%">
<tr>
  <td>
  <table style="width:100%; height: 188px;">
        <tr style="height:100px">
          <td class="style57">
             <table  border="1" style="width:106%; height: 130px;">
               <tr>
                   <td style="font-size:large;" class="style45">
                       NAME:
                   </td>
                   <td style="font-size:large" class="style46">
                       <input type="text" name="txtStudName" Onkeypress="return(onlyalpha(event))" CssClass="caps">
                      
                   </td>
               </tr> 
             
               <tr>
                   <td style="font-size:large" class="style45">
                       ROLLNO:
                       
                   </td> 
                   <td style="font-size:large" class="style46">
                       <input type="text" name="txtRollNo" Onkeypress="return(neumeric(event))">
                       
                   </td>
               </tr>
               <tr>
                   <td style="font-size:large" class="style39">
                       REGISTER NO:
                   </td> 
                   <td style="font-size:large" class="style40">
                       <input type="text" name="txtRegNo">
                       
                   </td>
               </tr>
               <tr>
               <td class="style33" style="font-size:large">
                   DEPARTMENT
                       
                   </td>
                   <td class="style34" style="font-size:large">
                       <select name="ddlDepartment">
                           <%
                            String q="select Dept_Name from Department";
                            rs=st.executeQuery(q);
                            while(rs.next())
                            {
                                out.print("<option value='"+rs.getString("Dept_Name")+"'>"+rs.getString("Dept_Name")+"</option>");
                            }
                           %>
                       </select>
                      
                   </td>
               </tr>
              
               <tr>
                 <td class="style35" style="font-size:large">
                     TUTOR INCHARGE
                     <asp:Label ID="lblTutorName" runat="server" Text="" Font-Bold="true" Font-Size="Large"></asp:Label>
                 </td>
                 <td class="style36">
                       <input type="text" name="txtTutorName">
                    
                 </td>
               </tr>
               
             </table>
           </td>
           <td class="style1" align="center">
             <table style="width:94%; height: 94px; margin-left: 27px;" border="1">
             <tr>
                   <td class="style54" style="font-size:large">
                   BATCH
                      
                   </td>
                   <td class="style52">
                       <select name="ddlBatchStartYear">
                           <%
                             for (int i = 2020; i <= 2024; i++)
                             {
                                 out.print("<option value='"+i+"'>"+i+"</option>");
                             }
                           %>
                       </select>
                       <select name="ddlBatchEndYear">
                           <%
                             for (int i = 2024; i <= 2028; i++)
                             {
                                 out.print("<option value='"+i+"'>"+i+"</option>");
                             }
                           %>
                       </select>
                       
                   </td>
                </tr>
                
               
          <tr>
           <td style="font-size:large;" class="style16">
               SCHOLAR TYPE:
           </td> 
           <td style="font-size:large" class="style17">
               <input type="radio" name="rbtnlstScholarType" value="Day Scholor">Day Scholor
               <input type="radio" name="rbtnlstScholarType" value="Hostellar">Hostellar
               
           </td>
         </tr>
      
             </table>
           </td>
        </tr>
      </table>
      <table  style="width:100%; margin-top: 0px;" border="1" >
         <tr>
           <td style="font-size:large;" class="style16">
               DATE OF BIRTH:
           </td> 
           <td style="font-size:large" class="style17">
               <input type="date" name="txtDOB">
           </td>
         </tr>
         <tr>
           <td style="font-size:large;" class="style9">
               GENDER:
           </td> 
           <td style="font-size:large" class="style18">
                <input type="radio" name="rbtnGender" value="MALE">MALE
               <input type="radio" name="rbtnGender" value="FEMALE">FEMALE
               
           </td>
         </tr>
          
         <tr>
           <td style="font-size:large" class="style49">
             COMMUNITY
           </td>
          <td class="style20">
              <input type="radio" name="rbtnlstCommunity" value="OC">OC
              <input type="radio" name="rbtnlstCommunity" value="MBC">MBC
              <input type="radio" name="rbtnlstCommunity" value="BC">BC
              <input type="radio" name="rbtnlstCommunity" value="SC">SC
              <input type="radio" name="rbtnlstCommunity" value="ST">ST
              <input type="radio" name="rbtnlstCommunity" value="OTHERS">OTHERS
           
           </td>
         </tr>
        
      </table>
      <table border="1" style="width:100%">
         <tr style="height:40px">
           <td  style="border-top:none;border-left:none; font-size:large">
               PARENT'S DETAILS
           </td>
           <td align="center" style="font-size:large">
              FATHER
           </td>
           <td align="center" style="font-size:large">
               MOTHER
           </td>
         </tr>
         <tr>
            <td class="style20" style="font-size:large">
              NAME
            </td>
            <td align="center" class="style20">
                 <input type="text" name="txtFnameEnglish" Onkeypress="return(onlyalpha(event))" CssClass="caps">
              
            </td>
            <td align="center" class="style20">
                 <input type="text" name="txtMnameEnglish" Onkeypress="return(onlyalpha(event))" CssClass="caps">
             
            </td>
         </tr>
         
         <tr>
         <td class="style22" style="font-size:large">
             OCCUPATION
         </td>
          <td align="center" class="style22">
              <input type="text" name="txtFoccupation">
              
          </td>
          
         </tr>
         <tr>
         <td class="style21" style="font-size:large">
             ANNUAL INCOME
         </td>
          <td align="center" class="style21" colspan="2">
              <input type="text" name="txtFannualIncome">
              
          </td>
          
         </tr>
    </table>
        
    <table  border="1" style="width:100%; margin-top: 15px;">
       <tr>
          <td style="width:50%; font-size:large" >
              PERMANENT ADDRESS
          </td> 
          <td style="font-size:large">
              ADDRESS FOR COMMUNICATION <br>(Current place of Residence)
          </td>
       </tr>
       <tr>
          <td align="center" class="style23">
               <input type="text" name="txtPermanentAddress">
              
          </td>
          <td align="center" class="style23">
               <input type="text" name="txtAddressForCommunication">
          
          </td>
       </tr>
       <tr>
          <td class="style27" style="font-size:large">
              PARENTS MOBILE:
              <input type="text" name="txtParentMobile" Onkeypress="return (neumeric(event))">
             
          </td> 
          <td class="style27" style="font-size:large">
              STUDENT MOBILE:
              <input type="text" name="txtStudentMobile" Onkeypress="return (neumeric(event))">
              

          </td> 

       </tr>
       
        <tr>
          <td class="style28" style="font-size:large">
              EMAIL:
                <input type="text" name="txtEmail">
             

          </td> 
         
        </tr>
     </table>
     

     
     <table style="width:100%" border="1">
     
     <tr align="center">
         
         <td class="style50">
            <table>
                <tr>
                  <td style="font-size:large">
                      Semester
                  </td>
                  <td style="font-size:large">
                     GPA
                  </td>
                </tr>
                 <tr>
                  <td>
                      1
                  </td>
                  <td>
                      <input type="text" name="txtSemester1">
                      
                  </td>
                </tr>
                 <tr>
                  <td>
                      2
                  </td>
                  <td>
                      <input type="text" name="txtSemester2">
                      
                  </td>
                </tr>
                <tr>
                  <td>
                      3
                  </td>
                  <td>
                      <input type="text" name="txtSemester3">
                     
                  </td>
                </tr>
                <tr>
                  <td>
                      4
                  </td>
                  <td>
                      <input type="text" name="txtSemester4">
                      
                  </td>
                </tr>
                 <tr>
                  <td>
                      5
                  </td>
                  <td>
                      <input type="text" name="txtSemester5">
                      
                  </td>
                </tr>
                 <tr>
                  <td>
                      6
                  </td>
                  <td>
                      <input type="text" name="txtSemester6">
                      
                  </td>
                </tr>
                  <tr>
                  <td>
                      7
                  </td>
                  <td>
                      <input type="text" name="txtSemester7">
                      
                  </td>
                </tr>
                <tr>
                  <td>
                      8
                  </td>
                  <td>
                      <input type="text" name="txtSemester8">
                      
                  </td>
                </tr>
            </table>
         </td>
     </tr>
     <tr>    
       <td colspan="3" align="center">
           <input type="submit" name="btnSubmit" value="SUBMIT">
          
       </td>
     </tr>
      <tr>    
       <td colspan="3" align="center">
          <%
                String btn=request.getParameter("btnSubmit");
                            if(btn!=null)
                            {
                                String qry="select studid from student where rno='" + request.getParameter("txtRollNo") + "'";
                                
                                rs=st.executeQuery(qry);
                                if(rs.next())
                                {
                                    out.print("<font color='red'>Student Details already exist!!</font>");
                                }
                                else
                                {
                                    
                                    Date dob=Date.valueOf(request.getParameter("txtDOB"));
                                    String batch = request.getParameter("ddlBatchStartYear") + "-" + request.getParameter("ddlBatchEndYear");
                                    double CGPA=Double.parseDouble(request.getParameter("txtSemester1"))+
                                            Double.parseDouble(request.getParameter("txtSemester2"))+
                                            Double.parseDouble(request.getParameter("txtSemester3"))+
                                            Double.parseDouble(request.getParameter("txtSemester4"))+
                                            Double.parseDouble(request.getParameter("txtSemester5"))+
                                            Double.parseDouble(request.getParameter("txtSemester6"));
                                    qry="insert into student(sname,rno,regno,dept,tutor,dob,gender,community,batch,scholartype,FName,MName,FOccupation,FAnnualIncome,PAddress,TAddress,ParentMobile,StudMobile,Email,sem1GPA,sem2GPA,sem3GPA,sem4GPA,sem5GPA,sem6GPA,sem7GPA,sem8GPA,CGPA,Pstatus)values('"+request.getParameter("txtStudName")+
                                            "','"+request.getParameter("txtRollNo")+"','"+request.getParameter("txtRegNo")+
                                            "','"+request.getParameter("ddlDepartment")+"','"+request.getParameter("txtTutorName")+
                                            "','"+dob+"','"+request.getParameter("rbtnGender")+
                                            "','"+request.getParameter("rbtnlstCommunity")+"','"+batch+
                                            "','"+request.getParameter("rbtnlstScholarType")+"','"+request.getParameter("txtFnameEnglish")+
                                            "','"+request.getParameter("txtMnameEnglish")+"','"+request.getParameter("txtFoccupation")+
                                            "','"+request.getParameter("txtFannualIncome")+"','"+request.getParameter("txtPermanentAddress")+
                                            "','"+request.getParameter("txtAddressForCommunication")+"','"+request.getParameter("")+
                                            "','"+request.getParameter("txtParentMobile")+"','"+request.getParameter("txtStudentMobile")+
                                            "','"+request.getParameter("txtEmail")+"','"+request.getParameter("txtSemester1")+
                                            "','"+request.getParameter("txtSemester2")+"','"+request.getParameter("txtSemester3")+
                                            "','"+request.getParameter("txtSemester4")+"','"+request.getParameter("txtSemester5")+
                                            "','"+request.getParameter("txtSemester6")+"','"+CGPA+
                                            "','Not Placed')";
                                    int a=st.executeUpdate(qry);
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
    </table>
  </td>
</tr>

  </table>      
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
