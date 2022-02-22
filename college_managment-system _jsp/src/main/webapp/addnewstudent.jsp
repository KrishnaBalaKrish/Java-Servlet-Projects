<%@page import="projectcollege.Connection"%>
<%@page import="java.sql.*" %>
<%
String Name=request.getParameter("Name");
String Roll_no=request.getParameter("Roll_no");
String Coursename=request.getParameter("Coursename");
String Branch=request.getParameter("Branch");
String Fathername=request.getParameter("Father name");
String Gender=request.getParameter("Gender");

try
{
Connection con=Connection.getCon();

Statement st=con.createStatement();
st.executeUpdate("insert into student values('"+Name+"','"+Roll_no+"','"+Coursename+"','"+Branch+"','"+Fathername+"','"+Gender+"')");
response.sendRedirect("adminhome.jsp");
}
catch(Exception e)
{
out.println(e);
}
%>