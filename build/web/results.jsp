<%-- 
    Document   : results
    Created on : Sep 28, 2015, 7:37:43 PM
    Author     : Jiawen
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Results</title>
        <link rel="stylesheet" type="text/css" href="format.css"/> 
    </head>

     <%
            Double hoursWorked = Double.parseDouble(request.getParameter("HoursWorked"));

            Double hourlyPay = Double.parseDouble(request.getParameter("HourlyPay"));
            Double PretaxDeducted = Double.parseDouble(request.getParameter("PretaxDeducted"));
            Double posttaxDeducted = Double.parseDouble(request.getParameter("PosttaxDeduct"));
            Double hoursovertime;
            Double otPayrate;
            Double grosspay;
            Double pretaxpay;
            Double taxAmount;
            Double postTaxpay;
            Double netpay;
            
             hoursovertime = hoursWorked - 40;
            if (hoursWorked > 40) {
               
            
            otPayrate = hourlyPay * 1.5;
            grosspay = 40 * hourlyPay + hoursovertime * otPayrate;
        }

            else{
        grosspay = hoursWorked * hourlyPay;
        }

        pretaxpay  = grosspay - PretaxDeducted;

        if (grosspay

        
            <=500)
        { taxAmount = pretaxpay * 0.18;
        }

        
            else{
        taxAmount = pretaxpay * 0.22;
           
        }
         postTaxpay = pretaxpay - taxAmount;
            netpay = postTaxpay - posttaxDeducted;
    %>

    <body>
     
        <div id="resultchart">
               <h4>Salary Info</h4>
        <hr>
            <table border="2">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td> <%=hoursWorked%> </td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyPay%></td>
                </tr>
                <tr>
                    <td>#Hours Overtime:</td>
                    <td>

                        <%= hoursovertime%>
                    </td>

                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td>
                        <%=grosspay%>
                    </td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td>
                        <%= PretaxDeducted%>
                    </td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td>
                        <%=pretaxpay%>
                    </td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td>
                        <%=taxAmount%>
                    </td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td>
                        <%=posttaxDeducted%>
                    </td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td>
                        <%= posttaxDeducted%>
                    </td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td>
                        <%=netpay%>
                    </td>
                </tr>
            </tbody>
        </table>
        </div>
                    <a href="./index.jsp"> Index Page </a>
    </body>
</html>
