

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>admin login</title>
 <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <link href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet">
    <link rel="stylesheet" href="adminhome.css">
</head>
<body>
<section id="start">
 <div class="continer" id="cont1">
 <div class="row" id="navrow">
   <div class="col-sm-1"></div> 
   <img id="adm" src="adm.jpeg"> 
             <div class colsm-3>
				<h2 id="ah2"><u>ADMIN ACTIONS</u></h2>
			</div>
			<div class="col-sm-6">	</div>
			<i class="fa fa-sign-out fa-2x" aria-hidden="true"></i>
			<div class="col-sm-1"><a href="#"><button class=" btn btn-danger">logout</button></a>
			</div>
			</div>
             
			<div class="row" id="blank"></div>
			<div class="row" id="btn">
			<div class="col-sm-3"> </div>
			<div class="col-sm-2"><a href="#page1"><button class=" btn btn-primary">Addnewstud</button></a>
			</div>
			<div class="col-sm-2"><a href="#page2"><button class=" btn btn-success">view stud</button>
			</div>
			
			<div class="col-sm-2"><a href="#page3"><button class=" btn btn-warning">Add result</button>
			</div>
		
			<div class="col-sm-2"><a href="#page4"><button class=" btn btn-danger">view result</button>
			</div>
			<div class="row" id="imgrow">
			<div class="row" id="blank"></div>
			<div clas="col-sm-3" id="blank1" > </div>
			<div class="col-sm-8">
			
			<img id="stud" src="clg.jpeg">
			</div>
			
			</div>
			</div>
			</section>
			<main>
			<div class="row" id="blank1"></div>
			<section id="page1">
			<div id="first">
			 
  <h2>Add new_stud</h2>
 <div id="addnew">
			 <form name="myform" onsubmit="return validform()" action="addnewstudent.jsp" method="post">
			 <div class="form-group row">
			 <label for="full_name" class="col-md-4 col-form-label text-md-right">Name</label>
			 <div class-"col-md-6">
			 <input type="text" class="form-control" name="name"></div>
			 </div>
			 <div class="form-group row">
			 <label for="e-mail_address" class="col-md-4 col-form-label text-md-right">Roll_no</label>
			 <div class="col-md--6">
			 <input type="text" class="form-control" name="rollno">
			 </div>
			 </div>
			<div class="form-group row">
			 <label for="e-mail_address" class="col-md-4 col-form-label text-md-right">Coursename</label>
			 <div class="col-md--6">
			 <input type="text" class="form-control" name="course">
			 </div>
			 </div>
			 
			<div class="form-group row"> 
			 <label for="e-mail_address" class="col-md-4 col-form-label text-md-right">Branch</label>
			 <div class="col-md--6">
			 <input type="text" class="form-control" name="branch">
			 </div>
			 </div>
			 
			<div class="form-group row">
			 <label for="present_adress" class="col-md-4 col-form-label text-md-right">Father name</label>
			 <div class="col-md--6">
			 <input type="text" class="form-control" name="branch">
			 </div>
			 </div>
			 <div class="form-group row">
			 <label for="permanent_adress" class="col-md-4 col-form-label text-md-right">Gender</label>
			 <div class="col-md--6">
			 <input type="text" class="form-control" name="branch">
			 </div>
			 </div>
			 <div class="col-md-6 offset-md-4">
			 <button type="submit" class="btn btn-primary">save</button>
			 <a href="#start"><button class="btn btn-warning">back to top</button></a></div>
			 </form>
			</div>
 </div>
			<div class="row" id="blank1"></div>
			</section>
			
			
			
			<section id="page2">
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
  
 <section id="page3">
 <div id="third">
  <h2>Add new Result</h2>
 <div class="continer">
 <div class="row justify-content-center">
 <div class="col-sm-8">
 <div class="card">
 <div class="card-header">Add new result</div>
 <div class="card-body">
 <form name="my-form" onsubmit="return validform()" action="addresultnew.jsp" method="">
 <div class="form-group row">
 <label for="full_name" class="col-md-4 col-form-label text-md-right">Rollno</label>
 <div class="col-md-6">
 <input type="text" class="form-control" name="rolno"></div>
 </div>
 <div class="form-group row">
 <label for="email_address" class="col-md-4 col-form-label text-md-right">sub1</label>
 <div class="col-md-6">
 <input type="text" class="form-control" name="s1"></div>
 </div>
 
  <div class="form-group row">
 <label for="user_name" class="col-md-4 col-form-label text-md-right">sub2</label>
 <div class="col-md-6">
 <input type="text" class="form-control" name="s2"></div>
 </div>
  <div class="form-group row">
 <label for="phone_number" class="col-md-4 col-form-label text-md-right">sub3</label>
 <div class="col-md-6">
 <input type="text" class="form-control" name="s3"></div>
 </div>
  <div class="form-group row">
 <label for="present_address" class="col-md-4 col-form-label text-md-right">sub4</label>
 <div class="col-md-6">
 <input type="text" class="form-control" name="s4"></div>
 </div>
  <div class="form-group row">
 <label for="permanent_address" class="col-md-4 col-form-label text-md-right">sub5</label>
 <div class="col-md-6">
 <input type="text" class="form-control" name="s5"></div>
 </div>
  <div class="form-group row">
 <label for="permanent_address" class="col-md-4 col-form-label text-md-right">sub6</label>
 <div class="col-md-6">
 <input type="text" class="form-control" name="s6"></div>
 </div>
  <div class="form-group row">
 <label for="permanent_address" class="col-md-4 col-form-label text-md-right">sub7</label>
 <div class="col-md-6">
 <input type="text" class="form-control" name="s7"></div>
 </div>
 <div class="col-md-4">
 <button type="submit" class="btn btn-primary">
 Save</button>
 <a href="#start"><button class="btn btn-warning">back to top</button></a></div>

 
 
 </form></div></div></div></div></div>
 <br>
 
 </section>
 <div class="row" id="blank1"></div>
 	<section id="page4">
			<div id="fourth">
			
  <h2>view Result</h2>
 
  <div class="tbl-header">
  <table cellpadding="0" cellspacing="0" border="0">
  <thead>
  <tr>
  <th>Rollno</th>
  <th>sub1</th>
  <th>sub2</th>
  <th>sub3</th>
  <th>sub4</th>
  <th>sub5</th>
  <th>sub6</th>
  <th>sub7</th>
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
  ResultSet rs1=st.executeQuery("select *from result");
  while(rs1.next())
  {
  %>
  <tr>
  <td><%=rs1.getString(1) %></td>
  <td><%=rs1.getString(2) %></td>
  <td><%=rs1.getString(3) %></td>
  <td><%=rs1.getString(4) %></td>
  <td><%=rs1.getString(5) %></td>
  <td><%=rs1.getString(6) %></td>
  <td><%=rs1.getString(7) %></td>
  <td><%=rs1.getString(8) %></td>
   </tr>
   </tbody>
   <%}}
		   catch(Exception e) 
		   {}%>
  </div></div>
  
  </section>
  

			</main>
