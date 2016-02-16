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
        Double grossPay = 0.00;
        Double RegPay = 0.00;
        Double OTHours = 0.00;
        Double OTRate =0.00;
        Double OTPay =0.00;
        Double taxAmount=0.00;
        
        if (hoursWorked>40){
            RegPay = 40*hourlyPay;
            OTHours = hoursWorked-40;
            OTRate = hourlyPay*1.5;
            OTPay = OTRate*OTHours;
            grossPay = OTPay+RegPay;
        }   
        else {
            grossPay = hoursWorked*hourlyPay;
        }
        
        Double pretaxPay = grossPay - pretaxDeduct;
        
        if (pretaxPay<500) {
           taxAmount=pretaxPay*0.18;
        }
        else {
           taxAmount=pretaxPay*0.22;
        }
        
        Double posttaxPay=pretaxPay-taxAmount;
        Double netPay=posttaxPay-posttaxDeduct;
    
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
                    <td><%=OTHours%></td>
                </tr>
                
                 <tr>
                    <td>Overtime Hourly Rate:</td>
                    <td><%=OTRate%></td>
                </tr>
                
                 <tr>
                    <td>Gross Pay:</td>
                    <td><%=grossPay%></td>
                </tr>
                
                 <tr>
                    <td>Pre-tax Deduct:</td>
                    <td><%= pretaxDeduct %></td>
                </tr>
                
                 <tr>
                    <td>Pre-tax Pay:</td>
                    <td><%= pretaxPay %></td>
                </tr>
                
                 <tr>
                    <td>Tax Amount:</td>
                    <td><%=taxAmount%></td>
                </tr>
                
                 <tr>
                    <td>Post-tax Pay:</td>
                    <td><%=posttaxPay%></td>
                </tr>
                
                 <tr>
                    <td>Post-tax Deduct:</td>
                    <td><%= posttaxDeduct %></td>
                </tr>
                
                 <tr>
                    <td>Net Pay:</td>
                    <td><%=netPay%></td>
                </tr>
                
            </tbody>
        </table>
        </div>
    </body>
</html>

