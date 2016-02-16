<%-- 
    Document   : index
    Created on : Feb 15, 2016, 5:24:46 PM
    Author     : jinghao
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculation</title>
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <div id="salaryCalculator">
            
        <h1 class="header1">Simple Salary Calculator</h1>
        
        <hr>
        
        <form name="calculatorForm" action="results.jsp" method="post">
            
            <table id="inputTable" align="center">
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hours" value="" required></td>
                    </tr>
                    <tr>
                        <td>Hourly Pay:</td>
                        <td><input type="text" name="pay" value="" required></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Deduct:</td>
                        <td><input type="text" name="pretax" value="" required></td>
                    </tr>
                    <tr>
                        <td>Post-tax Deduct:</td>
                        <td><input type="text" name="posttax" value="" required></td>
                    </tr>        
                </tbody>
            </table>
            
            <div id="button">
            <input type="reset" value="Clear" id="clear">
            <input type="submit" value="Submit" id="submit">
            </div>
            
        </form>
        </div>
    </body>
</html>

