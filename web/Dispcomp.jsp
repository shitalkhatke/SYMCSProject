<%@page import="java.util.Collections"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.beans.Statement"%>
<%@page import="javax.servlet.RequestDispatcher"%>
<%@page import="javax.swing.*"%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Display Companies</title>
    </head>
    <body  style="background-image:url(img/13.jpg)">
        <form method="post" action="last">
    <center>
        <table>
            <tr style="height:50px"></tr>
        </table>
        <table>
    
     <form method="post" action="sam">
         
        <%
       java.sql.Connection con;
       java.sql.Statement st;
       java.sql.ResultSet rs;
       java.sql.ResultSet rs1;
       java.sql.ResultSet rs2;
       
       
       con=null;
       st=null;
       rs=null;
       rs1=null;
       rs2=null;
       int cnt=0;
         String scu=request.getParameter("Scu");
          try 
        {
              
              String cname;
              int ctmark;
              int ctemark;
              String cources;
              String scource;
              int stmark;
              int stemark;
      //  HttpSession session=request.getSession(false);  
        String n=(String)session.getAttribute("txtunm");  
        out.print("<b><center><font size=15>Welcome&nbsp;&nbsp;"+n+"</font></center></b> "); 
        out.println("<html><body><pre>");

         // ..................... 
        out.println("</pre></body></html>");
        out.println("<b><center><font size=30 > Following Companies are available For You</font></center></b>");
         Class.forName("com.mysql.jdbc.Driver");
         con=DriverManager.getConnection("jdbc:mysql://localhost/campus","root","");
        
         st=con.createStatement();
         String strQuery="SELECT * FROM studentreg WHERE sunm='"+n+"' ";
         String strQuery1="SELECT * FROM eligibility ";
         String strQuery2="SELECT * FROM sprofile WHERE sunm='"+n+"'";
         rs1=st.executeQuery(strQuery);   
            while(rs1.next())
                                      {
                                      
                                      stmark=Integer.parseInt(rs1.getString(8));
                                      stemark=Integer.parseInt(rs1.getString(9));
                                             
                                             
                                             // checking with all compnies 
                                             rs=st.executeQuery(strQuery1);
                                             while(rs.next())
                                             {
                                                    cname=rs.getString(1);
                                                    ctmark=rs.getInt(2);
                                                    ctemark=rs.getInt(3);
                                                    cources=rs.getString(6);
                                      
                                             
                                                if((stmark>=ctmark) && (stemark>=ctemark) && (cources.contains(scu)))
                                                             {
                                                                cnt++;
                                                                %>    
                                                                <tr style="height:30px"></tr>
                                                                <%--<tr>
                                                                 <td>
                                                                     <input type="text" name="conm" value="<%=cname%>">
                                                                     
                                                                 </td>
                                                                 <td>
                                                                    <input type="submit" value="Apply"> 
                                                                 </td>
                                                                 </tr>--%>
                                                               <tr>
                                                                   <td>
                                                                     <font size="5" color="red">  <input type="checkbox" name="conm" value="<%=cname%>"><%=cname%></font>   
                                                                   </td>
                                                               </tr>
                                                                <% 
                                                            }
                                                 
                                             }//company while
                                             %>
                                             <tr style="height:30px"></tr>
                                             <tr>
                                            <td>
                <input type="submit" value="Apply">
            </td><td><font  size="3" color="Red"><a href="job.jsp">BACK</font></td>
        </tr>
                                             <%
                                         if(cnt==0)
                                         {
                                              out.println("<b><center> You cant Apply For any Company Because you are not fulfil criteria for any Company.</center></b>");
                                         }
                                     
                                      } //student while                        
                                   
                                    
                   
                   }
                  
          
        catch(Exception e)
        {            
            out.close();
        }
        %>
           </table>
    </center>
       </form> 
    </body>
</html>
