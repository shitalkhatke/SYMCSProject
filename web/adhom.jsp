<%-- 
    Document   : adhom
    Created on : Feb 14, 2018, 6:50:48 PM
    Author     : shree ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Homepage</title>
    <style>
             ul
        {
           margin: 0px;
           padding: 15px;
          
        }   
 ul li
    {
    background-color:darkorchid;
    border: 0px solid white;
    width: 310px;
    height:45px;
    line-height:50px;
    float: left;
    text-align:center;
    list-style:none;
    }
    ul li a
{
    color:white;
    text-decoration: none;
    display:block;
}
ul li a:hover
{
   background-color:red; 
   
}
ul li ul li
{
    display:none;
}
ul li:hover ul li
{
    display: block;
}
</style>

    
    </head>
    <body style="background-image:url(img/100.jpg)">
        <form>
        <table>
            <%-- <td>
            <div style="text-align: left"><img src="img/b.jpg"width="100"height="100"/></div>
            </td>  --%>          
                <td> 
                 
                <center><div style="text-align:right"></div><font size="8" face="Arial" ><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Campus Recruitment System</b></font></center>
                  
                    </td> 
            </table>
        
          <ul>
                  <li><a href="VAstudent.jsp">View Applied student</a></li>
                  
                  <li><a href="regstud.jsp"> All Registered Student Details</a></li>
                   <li><a href="viewcomp.jsp">view Company Details</a></li>
                   <li><a href="adminlogout">Log Out</a></li>
                   
                     
          </ul>
          
             
         </table>
         </center>    
     </form> 
                
</body>
    
 
    
</html>
