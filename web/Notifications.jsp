<%-- 
    Document   : Get Notifications
    Created on : August 01, 2015, 6:05:50 PM
    Author     : Balwant Singh 
--%>

<%@page import="Classes.NotificationsClass"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Notifications</title>

        <!-- Bootstrap CSS-->
        <link href="css/bootstrap.css" rel="stylesheet">
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/bootstrap-theme.css" rel="stylesheet">
        <link href="css/bootstrap-theme.min.css" rel="stylesheet">

        <!--internal CSS-->

        <style type="text/css">
        </style>

        <!--internal CSS end-->

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="js/jquery.min.js"></script>
        <script src="js/jquery.js"></script>


        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>  
        <script src="js/bootstrap.js"></script> 

        <script type="text/javascript">
            function Confirm() {
                var x;
                if (confirm("Confirm this action..?") == true) {
                    return true;
                } else {
                    return false;
                }
            }
        </script>

        <!--internal JS end--> 
    </head>

    <jsp:include page="header.jsp"></jsp:include>

        <body>

        <%
            ArrayList unread = (ArrayList) request.getAttribute("unreaded");

            Iterator itr = unread.iterator();
            NotificationsClass mc = null;

            int panelGroupNo = 1000;
            int panelElementNo = 01;

            if (!unread.isEmpty()) {

                out.print("<div class='row clearfix'>"
                        + "<div class='col-md-12 column'>"
                        + "<div class='page-header'>"
                        + "<h1 style='font-family:calibri;'>"
                        + "Notifications "
                        + "<small>Unread</small>"
                        + "</h1>"
                        + "</div>");

                while (itr.hasNext()) {
                    Object notification = itr.next();
                    mc = (NotificationsClass) notification;

                    out.print("<div class='panel-group' id='panel-" + panelGroupNo + "'>" //panel group start
                            + "<form method='POST' action='ManageNotifications' onsubmit='return Confirm();'>"
                            + "<input type='hidden' name='MsgID' value='" + mc.getN_ID() + "'/>"
                            + "<div class='panel panel-default'>"//collapse panel element start
                            + "<div class='panel-heading'>"//panel element heading start
                            + "<span class='glyphicon glyphicon-envelope'></span>"
                            + "<a style='text-decoration: none; font-family:Calibri;' class='panel-title collapsed' data-toggle='collapse' data-parent='#panel-" + panelGroupNo + "' href='#panel-element-" + panelElementNo + "'> Message ID : " + mc.getN_ID() + " [" + "<small>" + mc.getN_Date() + "</small>" + "]" + " </a>"
                            + "</div>" //panel element heading end
                            + "<div id='panel-element-" + panelElementNo + "' class='panel-collapse collapse'>" //element body start
                            + "<div class='panel-body'>"
                            + "<div class='btn-group btn-group' role='group'>"// button group start
                            + "<font style='font-family:calibri;'>"
                            + mc.getN_Content()
                            + "</font>"
                            + "<hr/>"
                            + "<button name='submit' class='btn btn-primary' role='group' type='submit' value='Mark As Read'/>Mark As Read</button>"//Mark As Read Button
                            + "<button name='submit' class='btn btn-danger' role='group' type='submit' value='Delete'/>Delete</button>"//Delete Button
                            + "</div>"// button group end
                            + "</div>"
                            + "</div>"// element body end
                            + "</div>"//collapse panel element end
                            + "</form>"
                            + "</div>");//panel group end

                    panelElementNo = panelElementNo + 1;
                }

                out.print("</div>" //column end
                        + "</div>"); // row end

            } else {
                //shows if user has no unreaded messages
                out.print("<div class='row clearfix'>"
                        + "<div class='col-md-12 column'>"
                        + "<div class='page-header'>"
                        + "<h1 style='font-family:calibri;'>"
                        + "Notifications "
                        + "<small>Unreaded</small>"
                        + "</h1>"
                        + "</div>"
                        + "<center>"
                        + "<h2 style='font-family:calibri;'>"
                        + "Nothing To Display"
                        + "</h2>"
                        + "</center>"
                        + "</div>"
                        + "</div>");
            }
        %>
        
        <%
            ArrayList read = (ArrayList) request.getAttribute("readed");

            Iterator itr2 = read.iterator();
            NotificationsClass mc2 = null;

            int panelGroupNo2 = 2000;
            int panelElementNo2 = 10000;

            if (!read.isEmpty()) {

                out.print("<div class='row clearfix'>"
                        + "<div class='col-md-12 column'>"
                        + "<div class='page-header'>"
                        + "<h1 style='font-family:calibri;'>"
                        + "Notifications "
                        + "<small>Read</small>"
                        + "</h1>"
                        + "</div>");

                while (itr2.hasNext()) {
                    Object notification = itr2.next();
                    mc2 = (NotificationsClass) notification;

                    out.print("<div class='panel-group' id='panel-" + panelGroupNo2 + "'>" //panel group start
                            + "<form method='POST' action='ManageNotifications' onsubmit='return Confirm();'>"
                            + "<input type='hidden' name='MsgID' value='" + mc2.getN_ID() + "'/>"
                            + "<div class='panel panel-default'>"//collapse panel element start
                            + "<div class='panel-heading'>"//panel element heading start
                            + "<span class='glyphicon glyphicon-comment'></span>"
                            + "<a style='text-decoration: none; font-family:Calibri;' class='panel-title collapsed' data-toggle='collapse' data-parent='#panel-" + panelGroupNo2 + "' href='#panel-element-" + panelElementNo2 + "'> Message ID : " + mc2.getN_ID() + " [" + "<small>" + mc2.getN_Date() + "</small>" + "]" + " </a>"
                            + "</div>" //panel element heading end
                            + "<div id='panel-element-" + panelElementNo2 + "' class='panel-collapse collapse'>" //element body start
                            + "<div class='panel-body'>"
                            + "<div class='btn-group btn-group' role='group'>"// button group start
                            + "<font style='font-family:calibri;'>"
                            + mc2.getN_Content()
                            + "</font>"
                            + "<hr/>"
                            + "<button name='submit' class='btn btn-primary' role='group' type='submit' value='Mark As Unread'/>Mark As Unread</button>"//Mark As Unread Button
                            + "<button name='submit' class='btn btn-danger' role='group' type='submit' value='Delete'/>Delete</button>"//Delete Button
                            + "</div>"// button group end
                            + "</div>"
                            + "</div>"// element body end
                            + "</div>"//collapse panel element end
                            + "</form>"
                            + "</div>");//panel group end

                    panelElementNo2 = panelElementNo2 + 1;
                }

                out.print("</div>" //column end
                        + "</div>"); // row end

            } else {
                //shows if user has no unreaded messages
                out.print("<div class='row clearfix'>"
                        + "<div class='col-md-12 column'>"
                        + "<div class='page-header'>"
                        + "<h1 style='font-family:calibri;'>"
                        + "Notifications "
                        + "<small>Read</small>"
                        + "</h1>"
                        + "</div>"
                        + "<center>"
                        + "<h2 style='font-family:calibri;'>"
                        + "Nothing To Display"
                        + "</h2>"
                        + "</center>"
                        + "</div>"
                        + "</div>");
            }
        %>

    </body>

    <jsp:include page="footer.jsp"></jsp:include>
</html>
