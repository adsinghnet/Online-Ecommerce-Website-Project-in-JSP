
<!DOCTYPE html>
<html>
<head>
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<link rel="stylesheet" href="css/signup-style.css">
<title>Login</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="loginAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="password" name="password" placeholder="Enter Password" required>
     <input type="submit" value="login">
     </form>
      <h2><a href="signup.jsp">SignUp</a></h2>
       <h2><a href="forgotPassword.jsp">Forgot Password?</a></h2>
  </div>
  <div class='whysignLogin'>
  <%
  
  String msg=request.getParameter("msg");
  if("notexist".equals(msg)){
  %>
  <h1>Incorrect Username or Password</h1>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%/*created and designed by AD Singh -- downloaded from http://projects.adsingh.net/*/} %>
    <h2>Ecommerce website</h2>
    <h4><p><a href="http://www.adsingh.net/" style="text-decoration: none;">http://www.adsingh.net/</a></p>
    <p><a href="http://projects.adsingh.net/" style="text-decoration: none;">http://projects.adsingh.net/</a></p>
    <p><a href="https://vfxguy.net/" style="text-decoration: none;">https://vfxguy.net/</a></p></h4>
    
  </div>
</div>

</body>
</html>