<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student home page</title>
 <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="studhome.css">
</head>
<body>
 <div class="row" id="navrow">
 <div class="row" id="hb"></div>
   <div class="col-sm-1"></div> 
   <img id="fri" src="fri.jpeg"> 
             <div class colsm-2>
				<h4 id="ah2"><u>STUDENT PAGE</u></h4>
			</div>
			<div class="col-sm-6">	</div>
			<i class="fa fa-sign-out fa-2x" aria-hidden="true"></i>
			<div class="col-sm-1"><a href="#"><button class=" btn btn-danger">logout</button></a>
			</div>
			</div>
             
			<div class="row" id="blank"></div>
			<div class="row" id="btn">
			<div class="col-sm-3"> </div>
			<div class="col-sm-2"><a href="#page1"><button class=" btn btn-primary">view result</button></a>
			</div>
		<!--	<div class="col-sm-2"><a href="#page2"><button class=" btn btn-success">view stud</button>
			</div>-->
			<div class="row" id="imgrow">
			<div class="row" id="blank"></div>
			<div clas="col-sm-3" id="blank1" > </div>
			<div class="col-sm-8">
			
			<img id="stud" src="ox.jpeg">
			</div>
			
			</div>
			<section id="page2">s
<div id="second">
			
  <h2>view student</h2>
  
  
  <div class="tbl-header">
  <table cellpadding="0" cellspacing="0" border="0">
  <thead>
  <tr>
  <th>Name</th>
  <th>Roll no.</th>
  <th>Course Name</th>
  <th>Branch Name
  <th>Fathers Name</th>
  <th>Gender</th>
  </table></div>
  <div class="tbl-content"></div>
  <table cellpading="0" cellspacing-"0"></table>
  <tbody>
  <%@page import="java.sql.* "%>
  <%@page import="projectcollege.ConnectionProvider" %>
  <%try
  {
  Connection con=ConnectionProvider.getCon();
  Statement st=con.createStatement();
  ResultSet rs=st.executeQuery("select *from student");
  while(rs.next())
  {
  %>
  <tr>
  <td><%=rs.getString(1) %></td>
  <td><%=rs.getString(2) %></td>
  <td><%=rs.getString(3) %></td>
  <td><%=rs.getString(4) %></td>
  <td><%=rs.getString(5) %></td>
  <td><%=rs.getString(6) %></td>
   </tr>
   </tbody>
   <%}}
		   catch(Exception e) 
		   {}%>
  </div>
  <div class="row" id="blank1"></div>
  </section>
  
</body>
</html>