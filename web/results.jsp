<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
         <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    
    <%
        Double hoursWorked = Double.parseDouble(request.getParameter("hours"));
        Double hourlyPay = Double.parseDouble(request.getParameter("pay"));
        Double pretaxDeduct = Double.parseDouble(request.getParameter("pretax"));
        Double posttaxDeduct = Double.parseDouble(request.getParameter("posttax"));
        if (hoursWorked>40){
            Double RegPay = 40*hourlyPay;
            Double OTHours = hoursWorked - 40;
            Double OTRate = hourlyPay * 1.5;
            Double OTPay = OTRate * OTHours;
            Double grossPay = OTPay+RegPay;
        }   
        else {
            Double grossPay = hoursWorked*hourlyPay;
        }
    %>
    
    
    <body>
        
        <div id="salaryinfo">
            
        <h1 class="header1">Salary Information</h1>
        <hr>
        <table id="resultTable" border="1" align="center">
            <tbody>
                
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%= hoursWorked %></td>
                </tr>
                
                 <tr>
                    <td>Hourly Rate:</td>
                    <td><%= hourlyPay %></td>
                </tr>
                
                 <tr>
                    <td># Hours Overtime:</td>
                    <td></td>
                </tr>
                
                 <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td></td>
                </tr>
                
                 <tr>
                    <td>Gross Pay:</td>
                    <td></td>
                </tr>
                
                 <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= pretaxDeduct %></td>
                </tr>
                
                 <tr>
                    <td>Pre-tax Pay:</td>
                    <td></td>
                </tr>
                
                 <tr>
                    <td>Tax Amount:</td>
                    <td></td>
                </tr>
                
                 <tr>
                    <td>Post-tax Pay:</td>
                    <td></td>
                </tr>
                
                 <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= posttaxDeduct %></td>
                </tr>
                
                 <tr>
                    <td>Net Pay:</td>
                    <td></td>
                </tr>
                
            </tbody>
        </table>
        </div>
    </body>
</html>

