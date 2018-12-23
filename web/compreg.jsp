<%-- 
    Document   : compreg
    Created on : Feb 12, 2018, 7:57:17 PM
    Author     : shree ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company Registration</title>
    </head>
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
       <h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp COMPANY REGISTRATION</h1>

        <form action="compreg" method="post">
            <table>
                <tr>
                   <td>
                    ENTER COMPANY NAME:
                    </td>
                    <td>
                   <input type="text" required="true" name="txtfnm" id="txtfnm"  placeholder="Enter company Name" style="height:28px"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                <tr style="height:10px"></tr>
              
                <tr>
                   <td>
                    ADDRESS:
                    </td>
                    <td>
                   <input type="textarea"required="true"  name="txtunm" id="txtunm"  placeholder="Enter Address" style="height:28px"></input>   
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
                   <input type="password"required="true"  name="passcr" id="passcr"  placeholder="Renter Password" style="height:28px"></input>   
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
                    <input type="text"required="true" pattern="[789][0-9]{9}"  name="txtmo" id="txtmo"  placeholder="Enter Contact Number" style="height:28px">
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
                           <input type="text" required="true"  name="txtEM" id="txtEM"  placeholder="Enter Email ID" style="height:28px"> 
                        </td>
                    </tr>
                <tr>
                </tr><tr style="height:10px"></tr>
                <tr style="height:10px"></tr>
                <tr>
                    <td>
                        &nbsp;&nbsp;&nbsp;&nbsp;
                         &nbsp;&nbsp;&nbsp;&nbsp;
                          &nbsp;&nbsp;&nbsp;&nbsp;
                <a href="complog.jsp">Back</a>
                    </td>
                    <td>
                         
                        <input type="submit" value="submit"></input>
                    </td>
                    <td>
                        <a href="complog.jsp">Login</a>
                        </td>
                </tr>

                 </table>  
    
        </form>
        
       </center>
    </body>
</html>
