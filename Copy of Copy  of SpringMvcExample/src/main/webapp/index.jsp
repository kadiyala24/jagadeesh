<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>

<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://www.w3schools.com/lib/w3.css">
<style>
.mySlides 
{display:none;}
</style>
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
    padding: 1em;
    color: white;
    background-color: #66D9FF;
    clear: left;
    text-align: center;
    bottom: 0;
    width: 100%;
    height: 60px;
    position: fixed;
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

</style>
</head>
<body align="center">

<div class="flex-container">

<header class="header">
   <h1><b>Pioneer Consulting Services</b></h1>
 <div align="center"><a href="index.jsp">About</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
   <a href="./login">Login</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <a href="./register">SignUp</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</div>
</header>
 </div>
 
<div class="slide" style="max-width:740px"  >
  <img class="mySlides" src="imag/1.jpg" style="width:180%">
  <img class="mySlides" src="imag/3.jpg" style="width:180%">
</div>

<script>
var myIndex = 0;
carousel();

function carousel() {
    var i;
    var x = document.getElementsByClassName("mySlides");
    for (i = 0; i < x.length; i++) {
       x[i].style.display = "none";
    }
    myIndex++;
    if (myIndex > x.length) {myIndex = 1}
    x[myIndex-1].style.display = "block";
    setTimeout(carousel, 4000); // Change image every 2 seconds
}
</script>

<div align="center"> 
  <h1>Company :</h1>
  <p>PCS is an innovative Information Technology Consulting firm that provides superior IT solutions to our clients while offering a rewarding and challenging work experience for our consultants. At PCS, our motive is to provide utmost customer satisfaction by providing cost- effective solutions. We strive hard to achieve excellence in terms of the quality and quantity of work that we do for our clients. We focus on efficiency, flexibility and speed for competitive advantage enabling our customers to tread along the path of success.</p>
  <p>Our mission is to create business value for our customers, providing the best quality software solutions and services. We specialize in creating new sources of revenue for our clients by helping them develop the Information technology strategies and processes that would resolve their business issues.</p>
  <p>In a world that is constantly changing, companies are faced with the challenge of continually adapting to a dynamic environment. PCS has the foresight to handle unanticipated needs and challenges, becoming an instrumental part of our customer's success. We realize that understanding each client's needs is essential to providing quality service. The experienced professionals at PCS take the time to understand your business, your approach, and the dictates of your environment. Whether you know exactly what you want or would like informative and innovative guidance, our experienced professionals will work with you every step of the way and our highly skilled consultants will keep your projects safe. PCS is deeply committed and will not stop until all needs have been addressed and dealt with to your complete satisfaction.</p>
 </div>
  </body>

<footer>Copyright © Pioneer Consulting Services</footer>


</body>
</html>

