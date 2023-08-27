<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="login.css" />
</head>
<body>
  <div class="flex1">
    <img src="https://kisansuvidha.gov.in/assets/images/kisan-logo.png" alt="" height="200px" width="200px" style="border-radius: 100px;" />
    <h1>Login here</h1>
    <form action="login" method="post">
      <input type="text" placeholder="Email" name="name" /><br /><br />
      <input type="text" placeholder="Password" name="pass" /><br /><br />
       <a href="Register.jsp">If not registered click here</a>
      <br/>  <br/>
      <input type="submit" value="Login" name="sub" style="width: 100px; border-radius: 10px; height: 25px;" /><br/>
    </form>
  </div>
</body>
</html>
