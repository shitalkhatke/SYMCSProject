<%-- 
    Document   : studreg
    Created on : Feb 3, 2018, 8:12:16 PM
    Author     : shree ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Student Registration</title>
    <body style="background-image:url(img/76.jpg)">
        <center>
       <table>
       <tr>
            <td>
                
            </td>
             <td>
                 
             </td>
        </tr>
        </table>
       <h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp STUDENT REGISTRATION</h1>

        <form method="post" action="sregservlet">
            <table>
                <tr>
                   <td>
                    ENTER FULL NAME:
                    </td>
                    <td>
                   <input type="text"required="true"  name="txtfnm" id="txtfnm"  placeholder="Enter Full Name" style="height:28px"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                <tr style="height:10px"></tr>
              
                <tr>
                   <td>
                    ENTER USERNAME:
                    </td>
                    <td>
                   <input type="text" required="true"  name="txtunm" id="txtrufnm"  placeholder="Enter Full Name" style="height:28px"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
               
                <tr style="height:10px"></tr>
                <tr>
                   <td>
                    ENTER PASSWORD:
                    </td>
                    <td>
        <input title="Password must contain at least 8 characters, including UPPER/lowercase and numbers" 
      type="password" required pattern="(?=.*\d)(?=.*[a-z])(?=.*[A-Z]).{8,}"  required="true" name="passr" placeholder="Enter password" style="height:28px">
       </input>        
                
                    </td>
                </tr>
                
                <tr>
                </tr> 
                <tr style="height:10px"></tr>
                <tr>
                   <td>
                    CONFIRM PASSWORD:
                    </td>
                    <td>
     
                   <input type="password" required="true"  name="passcr" id="passcr"  placeholder="Renter Password" style="height:28px"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                <tr style="height:10px"></tr>
                <tr>
                    <td>
                    MOBILE NUMBER:    
                    </td>
                    <td>
                    <input type="text" required="true" pattern="[789][0-9]{9}"  name="txtmo" id="txtmo"  placeholder="Enter Contact Number" style="height:28px">
                    </td>
                </tr>
                <tr>
                </tr>
                <tr style="height:10px"></tr>
                <tr>
                   <td>
                    <tr>
                        <td>
                            EMAIL ID:
                        </td>
                        <td>
                           <input type="text" required="true" name="txtEM" id="txtEM"  placeholder="Enter Email ID" style="height:28px"> 
                        </td>
                    </tr>
                <tr>
                </tr><tr style="height:10px"></tr>
                 <tr>
                    
                    <td>
                   10th Marks :    
                    </td>
                    <td>
                    <input type="text" name="txt10" id="txtmark"  placeholder="Enter Last 10th Marks" style="height:28px">
                    </td>
                </tr>
                <tr></tr>
                <tr style="height:10px"></tr>
                <tr>
                    <td>
                    12th  Marks :    
                    </td>
                    <td>
                    <input type="text" name="txt12" id="txtPA"  placeholder="Enter 12th Marks" style="height:28px">
                    </td>
                </tr>
                
                
                <tr style="height:10px"></tr>
                <tr>
                    <td>
                <a href="studlog.jsp">Back</a>
                    </td>
                    <td>
                        <input type="submit" value="submit"></input>
                    </td>
                   <td>
                       <a href="studlog.jsp">Login</a>
                       </td>
                </tr>

            </table>
            
        </form>
        </center>
      
    </body>
</html>
