<%-- 
    Document   : index
    Created on : Sep 28, 2015, 7:15:26 PM
    Author     : Jiawen
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Index</title>
          <link rel="stylesheet" type="text/css" href="format.css"/> 
        
    </head>

    <body>
        <div id="salarybox">
            <h4> Simple Salary Calculator </h4>
            <hr>
            <form name="From" action="results.jsp" method="post">
                <table>
                    <tbody>
                        <tr>
                            <td>Hours Worked:</td>
                            <td><input type="text" name="HoursWorked" value="" size="100" required></td>
                        </tr>
                        <tr>
                            <td> Hourly Pay:</td>
                            <td><input type="text" name="HourlyPay" value="" size="100" required></td>
                        </tr>
                        <tr>
                            <td>Pre-tax Deducted:</td>
                            <td><input type="text" name="PretaxDeducted" value="" size="100" required></td>
                        </tr>
                        <tr>
                            <td>Post-tax Deduct:</td>
                            <td><input type="text" name="PosttaxDeduct" value="" size="100" required></td>
                        </tr>                 
                    </tbody>
                </table>
                
                <br><br>
                <div id ="button">
                <input class="button" type="reset" value="Clear" id="clear">
                <input class="button" type="submit" value="Submit" id="submit">
                </div>
            </form>
            
        </div>
    </body>
</html>
