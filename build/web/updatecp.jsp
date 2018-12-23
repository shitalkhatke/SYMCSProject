<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.beans.Statement"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Update Profile</title>
    </head>
    <body style="background-image:url(img/86.jpg)">
  <form method="post" action="compup">
      <center>
            <table>
                <tr style="height:80px"></tr>
                
            </table>
          <table>
              <%
             java.sql.Connection con;
             java.sql.Statement st;
             java.sql.ResultSet rs;
             java.sql.ResultSet rs1;
       
       con=null;
       st=null;
       rs=null;
       String n=(String)session.getAttribute("txtunm");
        
       out.print("<b><center>"+n+"</center></b> "); 
        
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");
        
         st=con.createStatement();
         String strQuery="SELECT * FROM cprofile WHERE cname='"+n+"' ";
         rs=st.executeQuery(strQuery);   
            while(rs.next())
                               {
             %>
             
                           <tr>
                               <td>Company Name</td>
                               <td>
                                  <input type="text" name="cnm" value="<%=rs.getString(1)%>" ></input> 
                               </td>
                           </tr> 
            <tr style="height:10px"></tr>                
             <tr>                <tr>
                               <td>Address</td>
                               <td>
                                  <input type="text" name="cadd" value="<%=rs.getString(2)%>" ></input> 
                               </td>
                           </tr> 
            <tr style="height:10px"></tr>                
             <tr>
                               <td>Establish Year</td>
                               <td>
                                  <input type='text' name='year' value="<%=rs.getString(3)%>" ></input> 
                               </td>
                           </tr> 
            <tr style="height:10px"></tr>                
                           <tr>
                               <td>Chairman Name</td>
                               <td>
                                  <input type='text' name='chnm' value="<%=rs.getString(4)%>" ></input> 
                               </td>
                           </tr> 
            <tr style="height:10px"></tr>                
                           <tr>
                               <td>CEO Name</td>
                               <td>
                                  <input type='text' name='ceo' value="<%=rs.getString(5)%>" ></input> 
                               </td>
                           </tr>
                            <tr style="height:10px"></tr>
                           <tr>
                               <td>No Of Employee</td>
                               <td>
                                  <input type='text' name='nop' value="<%=rs.getString(6)%>" ></input> 
                               </td>
                           </tr> 
                           
                                 
                <%         
                               }
          
            %>
          </table>
           <table><tr><td style="width:80px"></td>
                   <%--<td><input type="submit"  value="Update"></td><td style="width:30px "></td>
            --%><td><a href="comhom.jsp"> BACK</td>
           
            
            </tr>
             
          </table>
      </center>
    </body>
</html>
