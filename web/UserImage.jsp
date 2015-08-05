<%-- 
    Document   : User Image
    Created on : July 22, 2015, 10:56:19 AM
    Author     : Balwant Singh
--%>

<%@page import="java.io.OutputStream"%>
<%@page import="Classes.ImageExchange"%>

<%
    try {            
            ImageExchange x = new ImageExchange();
            
            byte[] imgData = x.userImageBytes(request.getParameter("ID"));
            
            // display the image
            response.setContentType("image/gif");
            OutputStream o = response.getOutputStream();
            o.write(imgData);
            o.flush();
            o.close();
    } catch (Exception e) {
        e.printStackTrace();
        throw e;
    }
%>
