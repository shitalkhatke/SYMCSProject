
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Company Profile</title>
    </head>
     <body style="background-image:url(img/85.jpg)">
        <center>
       <table>
       <tr>
            <td>
                
            </td>
             <td>
                 
             </td>
        </tr>
        </table>
       <h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp COMPANY PROFILE</h1>

        <form action="comprof" method="post">
            <table>
                <tr>
                   <td>
                    ENTER COMPANY NAME:
                    </td>
                    <td>
                   <input type="text" required="true"  name="txtcnm" id="txtcnm"  placeholder="Enter Company Name" style="height:28px"></input>   
                    </td>
                </tr>
               
                <tr>
                </tr> 
                <tr style="height:10px"></tr>
              
                <tr>
                   <td>
                    ENTER ADDRESS:
                    </td>
                    <td>
                   <input type="text" required="true"  name="txtadd" id="txtadd"  placeholder="Enter address" style="height:28px"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
               
                <tr style="height:10px"></tr>
                <tr>
                   <td>
                   ESTABLISHED YEAR:
                    </td>
                    <td>
                   <input type="text" name="EY" required="true"   placeholder="Enter year" style="height:28px"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                <tr style="height:10px"></tr>
                <tr>
                   <td>
                   CHAIRMAN NAME:
                   </td>
                   <td>
                   <input type="text" name="cnm" required="true"   placeholder="Enter Name" style="height:28px"></input>   
                   </td>
                    
                </tr>
                
                <tr>
                </tr> 
                <tr style="height:10px"></tr>
                <tr>
                    <td>
                    CEO NAME:    
                    </td>
                    <td>
                    <input type="text" required="true"  name="ceonm" id="ceonm"  placeholder="Enter Name" style="height:28px">
                    </td>
                </tr>
                <tr>
                </tr>
                <tr style="height:10px"></tr>
                <tr>
                   <td>
                    <tr>
                        <td>
                            NO.OF EMPLOYEE:
                        </td>
                        <td>
                           <input type="text" required="true"  name="txtEMP" id="txtEMP"  placeholder="Enter no of employee" style="height:28px"> 
                        </td>
                    </tr>
                <tr>
                </tr><tr style="height:10px"></tr>
                               <tr style="height:10px"></tr>
              
                <tr>
                    <td>
                <a href="comhom.jsp">Back</a>
                    </td>
                    <td>
                        <input type="submit" value="submit"></input>
                    </td>
                    
                </tr>

            </table>
            
        </form>
        </center>
       
    </body>
</html>
