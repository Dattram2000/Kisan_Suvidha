<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="bookengineerform.css">
</head>
<body>
  <%@include file="Header.jsp" %>

<%

HttpSession session4 = request.getSession();
String uuid8 = (String) session4.getAttribute("uuid8");
String uuid9 = (String) session4.getAttribute("uuid9");
String uuid10 = (String) session4.getAttribute("uuid10");
%>
    <div class="flex-container0">
      <h1>Make Appointment</h1>
      <div class="flex-container1">
 
        <img
          src="https://kisansuvidha.gov.in/assets/images/kisan-logo.png"
          alt=""
          width="150px"
          height="150px" />
        <label for="">Name:<%= uuid8 %> </label>
        <label for="">Designation:<%= uuid9 %> </label>
        <label for="">Speciality: <%= uuid10 %></label>
      </div>
      <div class="flex-container2">
        <h2>Provide Problem Description</h2>
        <form action="bookengineerform" method="post">
          <input type="text" placeholder="Farmer Name" name="name"/><br /><br />
          <textarea name="address" placeholder="Address" id=""></textarea
          ><br /><br />
          <input type="text" name="problem" placeholder="Problem Description" />
          <br /><br />
          <input
            type="submit"
            name="submit1"
            value="Submit"
            style="
              background-color: green;
              color: white;
              font-size: 15px;
              height: 45px;
            " />
        </form>
      </div>
    </div>
</body>
</html>