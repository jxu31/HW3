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
            
             
            if (hoursWorked > 40) {
            hoursovertime = hoursWorked - 40;   
            otPayrate = hourlyPay * 1.5;
            grosspay = 40 * hourlyPay + hoursovertime * otPayrate;
        }
      else{
                hoursovertime = hoursWorked*0;
        grosspay = hoursWorked * hourlyPay;
        }
            pretaxpay  = grosspay - PretaxDeducted;

        if (grosspay<=500)
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
                    <td class="r"> <%=hoursWorked%> </td>
                </tr>
                <tr>
                    <td>Hourly Rate:</td>
                    <td class="r"><%= hourlyPay%></td>
                </tr>
                <tr>
                    <td>#Hours Overtime:</td>
                    <td class="r">

                        <%= hoursovertime%>
                    </td>

                </tr>
                <tr>
                    <td>Gross Pay:</td>
                    <td class="r">
                        <%=grosspay%>
                    </td>
                </tr>
                <tr>
                    <td>Pre-tax Deduct:</td>
                    <td class="r">
                        <%= PretaxDeducted%>
                    </td>
                </tr>
                <tr>
                    <td>Pre-tax Pay:</td>
                    <td class="r">
                        <%=pretaxpay%>
                    </td>
                </tr>
                <tr>
                    <td>Tax Amount:</td>
                    <td class="r">
                        <%=taxAmount%>
                    </td>
                </tr>
                <tr>
                    <td>Post-tax Pay:</td>
                    <td class="r">
                        <%=postTaxpay%>
                    </td>
                </tr>
                <tr>
                    <td>Post-tax Deduct:</td>
                    <td class="r">
                        <%= posttaxDeducted%>
                    </td>
                </tr>
                <tr>
                    <td>Net Pay:</td>
                    <td class="r">
                        <%=netpay%>
                    </td>
                </tr>
            </tbody>
        </table>
        </div>
                    <a href="./index.jsp"> Index Page </a>
    </body>
</html>
