<%@page import="projectcollege.ConnectionProvider"%>
<%@page import="java.sql.*" %>
<%
String rolnum=request.getParameter("Rollno");
String subj1=request.getParameter("sub1");
String subj2=request.getParameter("sub2");
String subj3=request.getParameter("sub3");
String subj4=request.getParameter("sub4");
String subj5=request.getParameter("sub5");
String subj6=request.getParameter("sub6");
String subj7=request.getParameter("sub7");
try
{
Connection con=ConnectionProvider.getCon();
Statement st=con.createStatement();
st.executeUpdate("insert into student values('"+rolnum+"','"+subj1+"','"+subj2+"','"+subj3+"','"+subj4+"','"+subj5+",'"+subj6+",'"+subj7+")");
response.sendRedirect("adminhome.jsp");
}
catch(Exception e)
{
out.println(e);
}