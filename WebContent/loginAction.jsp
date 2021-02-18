<%@page import="project.ConnectionProvider" %>
<%@page import="project.shoppingUtil" %>
<%@page import="java.sql.*" %>
<%
String email=request.getParameter("email");
String password=request.getParameter("password");
shoppingUtil sUtil=new shoppingUtil();



if(sUtil.getAdminUser().equals(email) && sUtil.getAdminPassword().equals(password))
{
session.setAttribute("email", email);
response.sendRedirect("admin/adminHome.jsp");
}
else
{
int z=0;
try{
	ConnectionProvider conProvider = new ConnectionProvider();
	Connection con=conProvider.getCon();
	Statement st=con.createStatement();
	ResultSet rs=st.executeQuery("select * from users where email='"+email+"' and password='"+password+"'");
	while(rs.next())
	{
		z=1;
		session.setAttribute("email", email);
		response.sendRedirect("home.jsp");
	}
	if(z==0)
		response.sendRedirect("login.jsp?msg=notexist");
	
}catch(Exception e)
{
	System.out.println(e);
	response.sendRedirect("login.jsp?msg=invalid");
	}

/*created and designed by AD Singh -- downloaded from http://projects.adsingh.net/*/

}
%>