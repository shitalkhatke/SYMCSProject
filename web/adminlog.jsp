<%-- 
    Document   : adminlog
    Created on : Feb 3, 2018, 8:18:24 PM
    Author     : shree ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admin Login</title>
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
          <form method="post" action="adminlog"  >
        <table>
            <%-- <td>
            <div style="text-align: left"><img src="img/b.jpg"width="100"height="100"/></div>
            </td>  --%>          
                <td> 
                 
                <center><div style="text-align:right"></div><font size="8" face="Arial" color="Brown"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Campus Recruitment System</b></font></center>
                  
                    </td> 
            </table>
        
          
          
           <center>
         <table>
         <tr style="height:50px"></tr>
           <tr>
               <td>
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           &nbsp;&nbsp;&nbsp;&nbsp;
           <b> ADMIN LOGIN</b>
             </td>
           </tr>
             <tr style="height:30px"></tr>
             <tr>
                 <td>
                  <b> Enter Your Username:</b>  
                 </td>
                 <td>
                     <input type="text" required="true"  name="txtunm" placeholder="Enter Username"  style="height: 28px" ></input>
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
             <td></td>                    
                      
                 <td>
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                     <input type="submit" value="Login"></input>
                 </td>
                 
                </tr>
             
                
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
