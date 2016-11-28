<%@ page  import="java.sql.*"  %>
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
    padding-top: 34px;
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
div.ex1 {
   padding-bottom: inherit;
}
</style>
</head>
<body>
<div class="flex-container">

<header class="header">
   <h1><b>Pioneer Consulting Services</b></h1>
 <div class="ex1"align="right"><a href="index.jsp">Logout</a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</div>
</header>
 </div>
 <div></div>
<form:form commandName="successList" action="./success" method="POST">
<div id="content"> 
<div style="position:relative; left:15%; top:116px; width: 687px; height: 314px;"> 
  <table width="720" height="311" align="center" bgcolor="#FFFFFF" >
  <tr>
        <td height="40" colspan="2" align="center" class="image"><u><font color="#FF0404" size="3"><em><font color="#6A006A"><strong>Employee 
          DETAILS</strong></font></em></font></u></td>
      </tr>

	  				
    <tr> 
        <td width="592">
  
		<table width="496"  align="center"  bgcolor="#000000">
            <tr bgcolor="#333333" > 
              <td width="63" height="30" align="center"><font color="#FFFFFF" size="2">id</font></td>
              <td width="67" align="center"><font color="#FFFFFF" size="2">firstName</font></td>
              <td width="69" align="center" ><font color="#FFFFFF" size="2">lastName</font></td>
              <td width="94" align="center" ><font color="#FFFFFF" size="2">email</font></td>
			  
		  
		  </tr>
          <%
String id=null;
String firstName=null;
String lastName=null;
String email=null;



try
{

Class.forName("com.mysql.jdbc.Driver");	
Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/sys","root","admin");
PreparedStatement ps=con.prepareStatement("select id,firstName,lastName,email from pioneer" );
ResultSet rs=ps.executeQuery();

while (rs.next())
{
id=rs.getString(1);

firstName=rs.getString(2);
lastName=rs.getString(3);
email=rs.getString(4);

session.setAttribute("account",id);

%>
          <tr bgcolor="#FFFFFF"> 
              <td height="31" align="center"><strong><em><font color="#008400">
                <%=id%>
                </font></em></strong></td>
            <td align="center"><strong><em><font color="#008400"><%=firstName%><input type="text" name="firstName"> </font></em></strong></td>
            <td align="center"><strong><em><font color="#008400"><%=lastName%></font></em></strong></td>
            <td align="center"><strong><em><font color="#008400"><%=email%></font></em></strong></td>
                      
		  </tr>
          <%


}


}
catch(Exception e)
{
out.println(e.getMessage());
}

%>
        </table>
		
		
		 </td>
    </tr>
  </table>
  </div>
  </div>
</form:form>
</div>
<div class="footer1"><footer>Copyright © Pioneer Consulting Services</footer></div>
</body>
</html>