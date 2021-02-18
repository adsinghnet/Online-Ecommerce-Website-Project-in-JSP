<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="css/signup-style.css">
<link rel="icon" href="dsfsdv.png" type="image/png" sizes="20x20">
<title>ForgotPassword</title>
</head>
<body>
<div id='container'>
  <div class='signup'>
     <form action="forgotPasswordAction.jsp" method="post">
     <input type="email" name="email" placeholder="Enter Email" required>
     <input type="number" name="mobileNumber" placeholder="Enter Mobile Number" required>
     <select name="securityQuestion">
     <option value="What was your first car?">What was your first car?</option>
     <option value="What is the name of your first pet?">What is the name of your first pet?</option>
     <option value="What elementary school did you attended?">What elementary school did you attended?</option>
     <option value="What is the name of the town where you where born?">What is the name of the town where you where born?</option>
     
     </select>
     <input type="text" name="answer" placeholder="Enter Answer" required>
     <input type="password" name="newPassword" placeholder="Enter your new password to set" required>
     <input type="submit" value="Save">
     </form>
      <h2><a href="login.jsp">Login</a></h2>
  </div>
  <div class='whyforgotPassword'>
   <% 
   String msg=request.getParameter("msg");
   if("done".equals(msg)){
   %>
<h1>Password Changed Successfully!</h1>
<%} %>
<%
if("invalid".equals(msg)){
%>
<h1>Some thing Went Wrong! Try Again !</h1>
<%}/*created and designed by AD Singh -- downloaded from http://projects.adsingh.net/*/ %>
    <h2>Ecommerce website</h2>
    <p><a href="http://www.adsingh.net/" style="text-decoration: none;">http://www.adsingh.net/</a></p>
    <p><a href="https://vfxguy.net/" style="text-decoration: none;">https://vfxguy.net/</a></p>
  </div>
</div>
</body>
</html>