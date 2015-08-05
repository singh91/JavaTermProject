<%-- 
    Document   : Error Script
    Created on : July 22, 2015, 10:56:19 AM
    Author     : Balwant Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Script</title>

        <script>
            function myFunction() {
                window.alert(arguments[0]);
            }
        </script>

    </head>
    <%-- 
        This page use the value of session named "Error"
        and shows that value in Javascript alertbox..
        You can use this page with JSP include.
    --%>

    <%        //showing session value via java script
        if (session.getAttribute("Error") != null) {
            String messege = (String) session.getAttribute("Error");
            out.print("<body onload=\"myFunction('" + messege + "')\">"
                    + "</body>");
        }
    %>
    <%
        session.setAttribute("Error", null);
    %>
</html>
