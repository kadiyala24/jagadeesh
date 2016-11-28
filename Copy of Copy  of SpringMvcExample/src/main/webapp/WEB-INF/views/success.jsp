<%@page import="com.pioneer.account.Account"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style>
.flex-container{
display: -webkit-flex;
display:flex;
-webkit-flex-flow: row wrap;
flex-flow: row wrap;
text-align:center;
}
.flex-container > * {
padding:15px;
-webkit-flex:1 100%;
flex: 1 100%;
}

div.container {
    width: 100%;
    border: 1px solid gray;
}

footer{
    padding-top:34px;
    color: white;
    background-color: #66D9FF;
    clear: left;
    text-align: center;
    bottom: 0;
    width: 100%;
    height: 60px;
    position: fixed
}
div.slide{
align:center;
padding:9px;
margin:20px;
}
.header {
color:red;
background-color: #66D9FF;
}
.header h1{
float:center;
color:green;
}
.header a{
text-decoration:none;
}
div.ex1 {
    padding-bottom: inherit;
}
</style>
</head>
<body>
<div class="flex-container">

<header class="header">
   <h1><b>Pioneer Consulting Services</b></h1>
 <div class="ex1"align="right"><a href="index.jsp">Logout</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

	</div>
</header>
 </div>
 <div>
<h1>Welcome to pioneer</h1>
<h2>Employee Details</h2>
<a href="./welcome">Click here</a>
</div>
<footer>Copyright © Pioneer Consulting Services</footer>
</body>
</html>