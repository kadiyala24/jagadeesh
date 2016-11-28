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
    padding-top: 34px;
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
    padding: 25px 50px 75px 100px;
}
</style>
</head>
<body>
<div class="flex-container">

<header class="header">
   <h1><b>Pioneer Consulting Services</b></h1>
 <div align="center"><a href="index.jsp">About</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="./login">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="./register">SignUp</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
</header>
 </div>
 <div class="ex1" align="center">
 	<form:form commandName="account" action="./register" method="POST">
		<h1>Welcome to Employee Registration form</h1>
		<table>

			<tr>
				<td><label for="firstName">Enter FirstName:</label></td>
				<td><input type="text" name="firstName"
					placeholder="First Name" id="firstName"  required="required" /></td>
			</tr>
			<tr>
				<td><label for="lastName">Enter LastName:</label></td>
				<td><input type="text" name="lastName" placeholder="Last Name"
					id="lastName"  required="required" /></td>
			</tr>

			<tr>
				<td><label for="dob">Enter DOB:</label></td>
				<td><input type="date" name="dob" placeholder="Date of Birth"
					id="dob"  required="required"></td>
			</tr>

			
			<tr>
				<td><label for="password">Enter password:</label></td>
				<td><input  type="password" name="password" placeholder="Password" id="password"  required="required"/></td>
			</tr>
			
			<tr>
				<td><label for="email">Enter Email:</label></td>
				<td><input  type="email" name="email" placeholder="Email" id="email"  required="required"/></td>
			</tr>
			<tr>
				<th colspan="2" align="center"><input type="submit"
					name="submit" value="Register" /></th>
			</tr>

		</table>
	</form:form>
	
</div>
<footer>Copyright © Pioneer Consulting Services</footer>
</body>
</html>