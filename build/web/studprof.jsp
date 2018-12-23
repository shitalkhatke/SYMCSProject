<%-- 
    Document   : studprof
    Created on : Feb 14, 2018, 6:13:52 PM
    Author     : shree ganesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>student profile</title>
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
       <h1>&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp STUDENT PROFILE</h1>

        <form action="sprofile" method="post">
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
                    ENTER COLLEGE NAME:
                    </td>
                    <td>
                   <input type="text" required="true" name="txtcnm" id="txtcnm"  placeholder="Enter college Name" style="height:28px"></input>   
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
                   <input type="text" required="true"  name="add"   placeholder="Enter Address" style="height:28px"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                <tr style="height:10px"></tr>
                <tr>
                   <td>
                    QUALIFICATION:
                    
                    <td>
                   <%--<input type="text" name="qual"  placeholder="Enter Qualification" style="height:28px"></input>--%>   
               <select name="category">
            
            <option>Bachelor of computer science</option>
            <option>Bachelor of computer Application</option>
            <option>Bachelor of computer Engineering</option>
            <option>Bachelor in information Technology</option>
            <option>Master of computer science</option>
            <option>Master of computer Application</option>
            <option>Master of computer Engineering</option>
            <option>Master in information Technology</option>
            
        </select>
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
                    <input type="text" required="true" name="txtmo" id="txtmo"  placeholder="Enter Contact Number" style="height:28px">
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
                 <tr>
                    
                    <td>
                    LAST SEMISTER RESULT:    
                    </td>
                    <td>
                    <input type="text" required="true" name="txtmark" id="txtmark"  placeholder="Enter Last Semister Marks" style="height:28px">
                    </td>
                </tr>
                <tr></tr>
                <tr style="height:10px"></tr>
                <tr>
                    <td>
                    CGPA/SGPA:    
                    </td>
                    <td>
                    <input type="text"required="true"  name="txtPA" id="txtPA"  placeholder="Enter CGPA/SGPA" style="height:28px">
                    </td>
                </tr>
                <tr style="height:10px"></tr>
                
                
                <tr style="height:10px"></tr>
                <tr>
                    <td>
                    UPLOAD RESUME:    
                    </td>
                    <td>
                    <input type="file"required="true"  name="res" id="res"   style="height:28px">
                    </td>
                </tr>
                <tr style="height:10px"></tr>
              
                <tr>
                    <td>
                <a href="studhom.jsp">Back</a>
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
