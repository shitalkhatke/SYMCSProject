<%-- 
    Document   : studhom
    Created on : Feb 14, 2018, 5:55:40 PM
    Author     : shree ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>student Homepage</title>
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
    width: 280px;
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





.dropbtn {
    background-color: #4CAF50;
    color: white;
    padding: 15px;
    font-size: 15px;
    border: none;
}

.dropdown {
    position:relative;
    display: inline-block;
}

.dropdown-content {
    display: none;
    position:static;
    background-color: #f1f1f1;
    min-width: 160px;
    box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
    z-index: 1;
}

.dropdown-content a {
    color: black;
    padding: 16px 20px;
    text-decoration: none;
    display: block;
}

.dropdown-content a:hover {background-color: #ddd}

.dropdown:hover .dropdown-content {
    display: block;
}

.dropdown:hover .dropbtn {
    background-color: #3e8e41;
}
</style>

    </head>
    <body  style="background-image:url(img/2.jpg)">
        <form>
        <table>
                <td> 
                 
                <center><div style="text-align:right"></div><font size="8" face="Arial" color="black"><b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Campus Recruitment System</b></font></center>
                  
                    </td> 
            </table>
        
          <ul>
                  <li><a href="studhom.jsp">Home</a></li>
                  <li><a href="studprof.jsp">Create Profile</a></li>
                   <li><a href="job.jsp">View job</a></li>
                   <li><a href="studlogout">Logout</a></li>
              
              
          </ul>
                  
        </form>
                
    </body>
</html>
