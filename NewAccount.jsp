<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>BANK OF SILIGURI</title>
<style type="text/css">
body{
	background-image: url(abc.jpg);

}
ul
{
margin:0px;
padding:0px;
list-style:none;
}
ul li
{
float:left;
width:160px;
height:40px;
background-color:#483d8b;
opacity:100;
line-height:40px;
text-align:center;
font-size: 20px;
}
ul li a
{
color:#FFF;
display:block;text-decoration:none;
}
ul li a:hover
{
background-color:#F00;
}
ul li ul li
{
display:none;
}
ul li:hover ul li
{
display:block;
}
.containter
{
	
	width:32%;
	height:450px;
	margin-top:8%;
	background:rgba(0,0,0,0.6);
	border:2px solid #09C;
}
.heading
{
	text-align:center;
	padding:10px 10px;
}
.heading h1
{
	color:white;
}
table,th,tr{
	border-color:#483d8b;
}

</style>
</head>
<body>
<%@ page import ="java.sql.*" %>
<%@ page import ="javax.sql.*" %>
		<% 
String user=request.getParameter("emp_name"); 
session.putValue("userid",user);
String pwd=request.getParameter("Password"); 
String address=request.getParameter("S2"); 
String ct=request.getParameter("txtFName1");
double contact=Double.parseDouble(ct);
String email=request.getParameter("email_id");
String act=request.getParameter("num");
double account=Double.parseDouble(act);
Class.forName("com.mysql.jdbc.Driver"); 
java.sql.Connection con = DriverManager.getConnection("jdbc:mysql://127.0.0.1:3306/test",
"root","34726527"); 
Statement st= con.createStatement(); 
ResultSet rs; 
int i=st.executeUpdate("insert into users values ('"+account+"','"+user+"','"+pwd+"','"+address+"','"+contact+"','"+email+"','"+0+"')");  

%>
<h1 style="front-size:40px; color:blue" align="center">BANK OF SILIGURI</h1>
<ul style="">
	<li><a href="index.html">HOME</a></li>
     <li><a href="">NEW ACCOUNT</a></li>
<li><a>BALANCE</a>
  </li>
      <li><a>DEPOSIT</a>
    </li>
  <li><a href="">WITHDRAW</a></li>
  <li><a href="">TRANSFER</a></li>
  <li><a href="">CLOSE A/C</a></li>
  <li><a href="">ABOUT US</a></li>
</ul>
<table  border="5"; style=" margin-top: 130px ">
	<tr>
		<td style="height: 1;width: 500;">
			<h1>Services</h1>
		</td>
		<td style="height: 1;width: 500;">
			Your account is Created suceessfully
			</td>
	</tr>
</table>
</body>
</html>