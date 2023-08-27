<%@page import="java.sql.ResultSet"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="BookVetForm.css" />
  </head>
  <body>
  <%@include file="Header.jsp" %>
    <div class="flex-container0">
      <h1>Make Appointment</h1>
      <div class="flex-container1">
      <%
    HttpSession session1 = request.getSession();
    String uuid5 = (String) session.getAttribute("uuid5");
    String uuid6 = (String) session.getAttribute("uuid6");
    String uuid7= (String) session.getAttribute("uuid7");

%>

        <img
          src="https://kisansuvidha.gov.in/assets/images/kisan-logo.png"
          alt=""
          width="150px"
          height="150px" />
        <label for="">Name:<%= uuid5 %> </label>
        <label for="">Designation:<%= uuid6 %> </label>
        <label for="">Speciality: <%= uuid7 %></label>
      </div>
      <div class="flex-container2">
        <h2>Provide Problem Description</h2>
        <form action="bookvetform" method="post">
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
