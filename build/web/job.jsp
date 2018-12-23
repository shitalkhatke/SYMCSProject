<%-- 
    Document   : job
    Created on : Feb 25, 2018, 10:39:48 PM
    Author     : shree ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <body style="background-image:url(img/jb.png)">
    
        <form method="post" action="Dispcomp.jsp">
            <table>
                <tr style="height:30px"></tr>
            </table>
            <marquee behavior="alternate"> <font  color="white" size="70px"><b>Choose Your Category!!!</b></font></marquee>
            <center>
                <table>
                    
                    <tr style="height:80px"></tr>
                                        <tr style="height:20px"></tr>
                    <tr>
                        <td>
                            
        <select name="Scu" style="width: 250px;" >
            
            <option value="BCS"> Bachelor of computer science</option>
            <option value="BCA">Bachelor of computer Application</option>
            <option value="BE">Bachelor of computer Engineering</option>
            <option value="BIT">Bachelor in information Technology</option>
            <option value="MCS">Master of computer science</option>
            <option value="MCA">Master of computer Application</option>
            <option value="ME">Master of computer Engineering</option>
            <option  value="MIT">Master in information Technology</option>
            
        </select>
                            </td>
                            </tr>
                            <tr style="height:180px"></tr>
                            <tr>
                                 <td>
                        <input type="submit" value="View availble companies"></input>
                             </td>
               
                            <td>
                                    
                            <a href="studhom.jsp"><font  size="4" color="White">Back</font></a>
                                </td></tr>
                            
                </table></center>
        </form>
    </body>
</html>
