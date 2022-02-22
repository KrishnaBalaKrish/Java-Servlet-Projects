<%
String uname=request.getParameter("username");
String pword=request.getParameter("password");
if(uname.equalsIgnoreCase("admin")&&pword.equalsIgnoreCase("abcdef")){
response.sendRedirect("adminhome.jsp");
}
else{
 response.sendRedirect("adminerror.html");
 }
 
%>
