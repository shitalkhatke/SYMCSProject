
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body style="background-image:url(img/83.jpg)">
        <center>
       <table>
       <tr>
            <td>
                
            </td>
             <td>
                 
             </td>
        </tr>
        </table>
       <h1> ELIGIBILITY FORM </h1>

        <form action="eligibility" method="post">
            <table>
                <tr>
                   <td>
                    ENTER COMPANY NAME:
                    </td>
                    <td>
                        <input type="text" name="txtcomp" id="txtcomp"  placeholder="Enter company Name" style="height:28px" required="true"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                <tr style="height:10px"></tr>
              
                <tr>
                   <td>
                    10th MARKS:
                    </td>
                    <td>
                   <input type="text" name="txtmar" id="txtmar"  placeholder="Enter 10th Marks " style="height:28px" required="true"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
               
                <tr style="height:10px"></tr>
                <tr>
                   <td>
                    12th MARKS:
                    </td>
                    <td>
                   <input type="text" name="txtmark" id="txtmark" required="true" placeholder="Enter 12th Marks" style="height:28px"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                <tr style="height:10px"></tr>
                <tr>
                   <td>
                    GRADUATION:
                    </td>
                    <td>
                   <input type="text" name="gra" id="gra" required="true"  placeholder="Enter Graduation Marks" style="height:28px"></input>   
                    </td>
                </tr>
                
                <tr>
                </tr> 
                <tr style="height:10px"></tr>
                <tr>
                    <td>
                    POST GRADUATION:    
                    </td>
                    <td>
                    <input type="text" name="txtpo" id="txtpo"  required="true" placeholder="Enter Post Graduation" style="height:28px">
                   
                    </td>
                </tr>
                <tr>
                </tr>
                <tr style="height:10px"></tr>
                <tr>
                   <td>
                    <tr>
                        <td>
                            JOBS FOR COURSES:
                        </td>
                        <td>
                            
                        <input type="checkbox" name="jc" value="BCS" >Bachelor of computer science<br>
                        <input type="checkbox" name="jc" value="BCA">Bachelor of computer Application<br>
                        <input type="checkbox" name="jc" value="BE" >Bachelor of computer Engineering<br>
                        <input type="checkbox" name="jc" value="BIT" >Bachelor in information Technology<br>
                        <input type="checkbox" name="jc" value="MCS" >Master of computer science<br>
                        <input type="checkbox" name="jc" value="MCA" >Master of computer Application<br>
                        <input type="checkbox" name="jc" value="ME" >Master of computer Engineering<br>
                        <input type="checkbox" name="jc" value="MIT" >Master in information Technology<br>
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
                <a href="comhom.jsp">Back</a>
                    </td>
                    <td>
                         
                        <input type="submit" value="submit"></input>
                    </td>
                    
                </tr>

                 </table>  
     
    </body>
</html>
