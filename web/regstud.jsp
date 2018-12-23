<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.beans.Statement"%>



<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image:url(img/13.jpg)">
        <form>
            <center>
                <table><td><tr style="height:100px"></tr></td></table>
                <tr>
                    <td>
                        <b><font size="30px"> REGISTERED STUDENT DETAILS</font></b>
                    </td>
                </tr>
                <table border="1"  width="800" style="text-align: center" >
                    <tr>
       <td> <b>Student Name </b></td>
       <td> <b>Contact Number </b></td>
       <td> <b>Email Id</b> </td>
   </tr>
   
                    <%
       java.sql.Connection con;
       java.sql.Statement st;
       java.sql.ResultSet rs;
       java.sql.ResultSet rs1;
       
       con=null;
       st=null;
       rs=null;
           try
           {
          Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");
        
         st=con.createStatement();
         String strQuery="SELECT * FROM studentreg ";
        rs=st.executeQuery(strQuery);   
            while(rs.next())
               { 
   %>
   <tr>
       <td>  <b><%=rs.getString(2)%> </b>    </td>
       <td> <b> <%=rs.getString(6)%></b>     </td>
       <td>  <b><%=rs.getString(7)%></b>     </td>
   </tr>
   
   <% 
               }
           }
           catch(Exception e)
           {}
       %>
                </table>
                <table>
           <tr><td>
       <font size="4"><a href="adhom.jsp">Back</a></font>
               </td></tr>
       </table>
            </center>
        </form>
    </body>
</html>
