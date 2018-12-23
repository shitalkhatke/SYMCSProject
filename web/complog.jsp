<%-- 
    Document   : complog
    Created on : Feb 3, 2018, 9:58:34 PM
    Author     : shree ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company Login</title>
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
    <body style="background-image:url(img/83.jpg)">
          <form method="post" action="complog">
        <table>
            <%-- <td>
            <div style="text-align: left"><img src="img/b.jpg"width="100"height="100"/></div>
            </td>  --%>          
                <td> 
                 
                <center><div style="text-align:right"></div><font size="8" face="Arial" color="Brown"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Campus Recruitment System</b></font></center>
                  
                    </td> 
            </table>
        
          <ul>
                  <li><a href="complog.jsp">Home</a></li>
                   <li><a href="Contactc.jsp">Contact Us</a></li>
                  
                     
          </ul>
          
           
           <center>
         <table>
         <tr style="height:30px"></tr>
           <tr>
               <td>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;
           <b>COMPANY LOGIN</b>
             </td>
           </tr>
             <tr style="height:30px"></tr>
             <tr>
                 <td>
                  <b> Enter Your Username:</b>  
                 </td>
                 <td>
                     <input type="text" required="true" name="txtunm" placeholder="Enter Username"  style="height: 28px" ></input>
                 </td>
             </tr>
             
             <tr style="height:20px"></tr>
             <tr>
                 <td>
                   <b>Enter Your Password:</b>  
                 </td>
                 <td>
                     <input type="password" required="true"  name="pass" placeholder="Enter Password" style="height:28px"></input>
                 </td>
             </tr> 
             <tr style="height:20px"></tr>
             
             <tr>
                    
                 <td>
                     <a href="compreg.jsp"><font color="Red"><b>New User?</b></font></a></center>
                 </td> 
                     <td></td>        
                 <td>
                     <input type="submit" value="Login"></input>
                 </td>
                 
                </tr>
                </form>
                
         </table>
         </center>    
     </form> 
    <table>
             
             <tr>
                          <td>
            <div style="text-align:center"><img src="img/11.jpg"width="300"height="300"/></div>
            </td>
             </tr>
         </table>
            
</body>
</html>
