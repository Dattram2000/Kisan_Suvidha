<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
  <style>
  a{
   color: white;
  text-decoration: none;
  font-family: "Gill Sans", "Gill Sans MT", Calibri, "Trebuchet MS", sans-serif;
  }
  </style>
</head>
<body>
 <div style=" background-color: green;
  width: auto;
  height: 100px;
  border-radius: 10px;
  display: flex;
  align-items: center;
  justify-content: space-evenly;
  margin-bottom:8px
  ">
      <a href="Home.jsp">Home</a>
      <a href="BookVet.jsp">Book Vet</a>
      <a href="BookEngineer.jsp">Book Engineer</a>
      <a href="SellProduct.jsp">Sell Product</a>
      <a href="BuyProduct.jsp">Buy Product</a>
      <div style="display:flex;flex-direction:column;justify-content:space-between ;align-items:center 
">
      <img 
        src="https://kisansuvidha.gov.in/assets/images/kisan-logo.png"
        alt="Logo"vi
        width="50px"
        height="50px" />
<%
    HttpSession session2 = request.getSession();
    String uuid = (String) session.getAttribute("uuid");
%>
<%= uuid %>
</div>
</div>
</body>
</html>