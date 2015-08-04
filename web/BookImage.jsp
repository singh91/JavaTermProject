<%-- 
    Document   : image
    Created on : August 01, 2015, 6:05:50 PM
    Author     : Balwant Singh 
--%>

<%@page import="Classes.ImageExchange"%>
<%@page import="java.io.OutputStream"%>

<%
    try {            
            ImageExchange x = new ImageExchange();
            
            byte[] imgData = x.bookImageBytes(request.getParameter("ID"));
            
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

