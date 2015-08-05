
<%-- 
    Document   : AddBook
    Created on : July 29, 2015, 2:53:44 PM
    Author     : c0655613
--%>

<%@page import="java.util.Calendar"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="style.css"/>
        <link href="http://localhost:8080/BookStore/adminPanel/css/bootstrap.css" rel="stylesheet">
        <link href="http://localhost:8080/BookStore/adminPanel/css/bootstrap.min.css" rel="stylesheet">
        <link href="http://localhost:8080/BookStore/adminPanel/css/startPage.css" rel="stylesheet">
        <link href="http://localhost:8080/BookStore/adminPanel/css/form.css" rel="stylesheet">
        <title>Admin Panel</title>
    </head>
    <body>
        <div class="container" style="background-color:#F5F5F0">
            <div class="row"><div class="col-md-10">&nbsp;</div></div>
            <div class="row">
                <div class="col-md-11"></div>
                <div class="col-md-1"><button type="button" class="btn btn-warning">Logout</button></div>
            </div>
            <div class="row">
                <div class="col-lg-1">
                    <img src="http://localhost:8080/BookStore/adminPanel/Images/Page icons/BookIcon.png" class="img-responsive" width="100%"alt="Responsive image">
                </div>
                <div class="col-md-11">
                    <font color=#FF7519><h1><strong>Orchid Book Store</strong><small>&nbsp; Admin Panel</small></h1></font>
                </div>
            </div>
            <div class="row">
                <img src="http://localhost:8080/BookStore/adminPanel/Images/Orthers/line.png" width="100%" alt="Responsive image">
            </div>
            <%-- sub menus--%>
            <div class="row">
                <div class="col-lg-1">
                    <a href="#"><img src="http://localhost:8080/BookStore/adminPanel/Images/Page icons/Home.png" class="image" width="100%" alt="Responsive image" title="Home"></a>
                </div>
                <div class="col-lg-1">
                    <img src="http://localhost:8080/BookStore/adminPanel/Images/Page icons/Books.png" class="image" width="100%" alt="Responsive image" title="Books" style="opacity: 0.5">
                </div>
                <div class="col-lg-1">
                    <a href="#"><img src="http://localhost:8080/BookStore/adminPanel/Images/Page icons/Author.png" class="image" width="100%" alt="Responsive image" title="Authors"></a>
                </div>
                <div class="col-lg-1">
                    <a href="#"><img src="http://localhost:8080/BookStore/adminPanel/Images/Page icons/Clients.png" class="image" width="100%" alt="Responsive image" title="Clients"></a>
                </div>
                <div class="col-lg-1">
                    <a href="#"><img src="http://localhost:8080/BookStore/adminPanel/Images/Page icons/Admin.png" class="image" width="100%" alt="Responsive image" title="Admins"></a>
                </div>
                <div class="col-lg-1">
                    <a href="#"><img src="http://localhost:8080/BookStore/adminPanel/Images/Page icons/Stocks.png" class="image" width="100%" alt="Responsive image" title="Stocks"></a>
                </div>
                <div class="col-lg-1">
                    <a href="#"><img src="http://localhost:8080/BookStore/adminPanel/Images/Page icons/Suppliers.png" class="image" width="100%" alt="Responsive image" title="Suppliers"></a>
                </div>
                <div class="col-lg-1">
                    <a href="#"><img src="http://localhost:8080/BookStore/adminPanel/Images/Page icons/Order.png" class="image" width="100%" alt="Responsive image" title="Orders"></a>
                </div>
            </div>    
            <div class="row">
                <img src="http://localhost:8080/BookStore/adminPanel/Images/Orthers/orange line.png"width="100%" alt="Responsive image">
            </div>
            <%-- end of sub menus--%>           
            <div class="row">
                <%--left side navigation--%>
                <div class="col-lg-2">
                    <ul class="nav nav-pills nav-stacked ">
                        <li role="presentation" class="text_box" style="padding: 0px; text-align: left;">Books</li>
                        <li>
                            <div id="topmenu">
                            <ul class="nav nav-pills nav-stacked topmenu">
                                <li role="presentation" class="active"><a href="#">Add Book</a></li>
                                <li role="presentation"><a href="#"><font style="color: orange">Modify Book</font></a></li>
                                <li role="presentation"><a href="#"><font style="color: orange">Remove Book</font></a></li>
                            </ul>
                            </div>
                        </li>
                    </ul>  
                </div>
                <div class="col-lg-1">&nbsp;</div>
                <%--left side navigation end--%>
                <%--Form--%>
                <div class="col-lg-9">
                    
                <% if(request.getAttribute("msg")!=null){
                    %><br><div class="alert alert-warning" role="alert"><strong><%=request.getAttribute("msg")%></strong></div><%
                }else{%>
                    <br><%}%>
                    <br>                 
                    <form <%if(request.getAttribute("action")!=null){%>
                                       action="<%=request.getAttribute("action")%>"<%}else{%>
                                       action="../AddBook"<%}%>
                                       method="POST" enctype="multipart/form-data">
                        <div id ="orange">
                            <div class="form-group orange">
                                <label>Book Title</label>
                                <input type="text" name="bookTitle" class="form-control" placeholder="Enter book title" required
                                       <%if(request.getAttribute("errorBookTitle")!=null){%>
                                       value="<%=request.getAttribute("errorBookTitle")%>"<%}%>>
                                <div class="help-block with-errors"></div>
                            </div>
                        </div>
                           <div id ="orange">
                            <div class="form-group orange">
                                <label>Author Name</label>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <select name="autherName" class="form-control" placeholder="Select year" required
                                                <%if(request.getAttribute("errorAuthor")!=null){%>
                                                value="<%=request.getAttribute("errorAuthor")%>"<%}%>>
                                            <option>Martin Wickramasinghe</option>
                                        </select>
                                    </div>
                                    <div class="col-lg-2">
                                       <a class="btn btn-default" href="#" role="button">Add Authors</a>
                                    </div>
                                </div>                            
                            </div>
                        </div> 
                        <div id ="orange">
                            <div class="form-group orange">
                                <label>Book Edition</label>
                                <div class="row">
                                <div class="col-lg-4">
                                    <input name="bookEdition" type="text" class="form-control" placeholder="Enter book edition"
                                           <%if(request.getAttribute("errorEdition")!=null){%>
                                       value="<%=request.getAttribute("errorEdition")%>"<%}%>>
                                </div>
                                </div>
                            </div>
                        </div>
                        <div id ="orange">
                            <div class="form-group orange">
                                <label>Book Published Year</label>
                                <div class="row">
                                    <div class="col-lg-4">
                                        <select name="year" class="form-control" placeholder="Select year" 
                                                <%if(request.getAttribute("errorYear")!=null){%>
                                       value="<%=request.getAttribute("errorYear")%>"<%}%>>
                                            <%  int year = Calendar.getInstance().get(Calendar.YEAR) - 1;
                                    for (int i = year; i > (year - 200); i--) {%><option><%=i%></option><%}%>
                                        </select>
                                    </div>
                                </div>                            
                            </div>
                        </div> 
                        <div id ="orange">
                            <div class="form-group orange">
                                <label>Book Image</label>
                                <input name="image" type="file" style="border-color: orange">
                            </div>  
                        </div> 
                        <button type="submit" class="btn btn-default">Add Book</button>
                    </form>
                </div>
            </div>
            <%--Form end--%>
            <div class="row">
                &nbsp;
            </div>
            <div class="row">
                &nbsp;
            </div>
            <div class="row" >
                <ol class="breadcrumb" style="background-color:#FF9933">
                    <li><a href="#">Home</a></li>
                    <li><a href="#">Library</a></li>
                    <li class="active">Data</li>
                </ol>
            </div> 
        </div>
    </body>
</html>
