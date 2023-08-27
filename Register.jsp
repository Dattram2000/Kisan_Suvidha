<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="register.css">
</head>
<body style="background-color: aliceblue;">
    <div class="img">
    <img src="https://kisansuvidha.gov.in/assets/images/kisan-logo.png" height="200px" width="200px" alt="">
    <h1>Register As Farmer</h1>
</div>
    <form action="register" method="post">

    <div class="flex-container0">
        <input type="text" placeholder="Full Name" name="name"/><br/><br/>
        <input type="text" placeholder="Mobile Number" name="mobile"/><br/><br/>
        <input type="number" placeholder="Aadhar Number" name="adhar"/><br/><br/>
        <textarea  placeholder="Address" name="address"></textarea><br/><br/>
        <input type="text" placeholder="Farmer ID" name="farmerid"/><br/><br/>
        <input type="email" placeholder="Email " name="email"/><br/><br/>
        <input type="password" placeholder="Password" name="pass"/><br/><br/>
        <input type="submit" value="Register" style="background-color: green; color: white; text-align: center; width: 200px;"/><br/><br/>
        </div>   
</form>
</body>
</html>