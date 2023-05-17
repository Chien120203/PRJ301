<%-- 
    Document   : calculator
    Created on : Apr 29, 2023, 5:34:21 PM
    Author     : Đàm Quang Chiến
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style>
            .label, input, select{
                font-size: 30px;
                color: blue;
            }
            .container{
                background-color: antiquewhite;
                width: 50%;
                margin: auto;
            }
            .container h1{
                text-align: center;
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1 clas>A Simple Calculator</h1>
            <hr>
            <form>
                <table>
                    <tr>
                        <td class="label">Enter Number 1: </td>
                        <td><input type="text" name="num1"/></td>
                    </tr>
                    <tr>
                        <td class="label">Enter Number 2: </td>
                        <td><input type="text" name="num2"/></td>
                    </tr>
                    <tr>
                        <td><select name="option">
                                <option value="+">+</option>
                                <option value="-">-</option>
                                <option value="*">*</option>
                                <option value="/">:</option>
                            </select>
                        </td>
                        <td><input type="submit" value="SUBMIT"/></td>
                    </tr>
                </table>
            </form>
                <hr>
                <jsp:useBean id ="c" class="model.Math"/>
                <jsp:setProperty name="c" property="num1" param="num1"/>
                <jsp:setProperty name="c" property="num2" param="num2"/>
                <jsp:setProperty name="c" property="op" param="option"/>
                <h2 class="label">
                    
                <jsp:getProperty name="c" property="result"/>       
                </h2>
        </div>
    </body>
</html>
