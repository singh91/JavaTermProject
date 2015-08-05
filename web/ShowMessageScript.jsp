<%-- 
    Document   : Show Message Script
    Created on : July 22, 2015, 10:56:19 AM
    Author     : Balwant Singh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

        <script>
            function myFunction() {
                window.alert(arguments[0]);
            }
        </script>

    </head>
    
    <%-- 
        This page use the value of session named "Info"
        and shows that value in Javascript alertbox..
        You can use this page with JSP include.
    --%>
    
    <%        //showing session value via java script
        if (session.getAttribute("Info") != null) {
            String messege = (String) session.getAttribute("Info");
            out.print("<body onload=\"myFunction('" + messege + "')\">"
                    + "</body>");
        }
    %>
    <%
        session.setAttribute("Info", null);
    %>
</html>
