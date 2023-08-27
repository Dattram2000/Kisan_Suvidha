<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
    <link rel="stylesheet" href="bookengineer.css" />

</head>
<body>
  <%@include file="Header.jsp" %>

<%
   
   String name="";
   String des="";
   int exp=0;
   String status="";
   int id=0;
  PrintWriter out1=response.getWriter();

	  Class.forName("com.mysql.jdbc.Driver");
	  java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kisan_suvidha","root","root");
	  String q="select * from bookengineer";
	  PreparedStatement ps=con.prepareStatement(q);
	  ResultSet set=ps.executeQuery();
	  while(set.next()){
		  name=set.getString(1);
		  des=set.getString(2);
		  exp=set.getInt(3);
		  status=set.getString(4);
		  id=set.getInt(5);	
	  

%>
<div style="display:flex;  justify-content: space-evenlys;
">
    

    <div class="flex-container1">
       <h1><%= id %></h1>
    
      <img
        src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png"
        alt=""
        width="200px"
        height="200px" />
      <label for="" style="font-weight: bold;">Name:<%= name %></label>
      <label for="" style="font-weight: bold;">Designation: <%= des %></label>
      <label for="" style="font-weight: bold;">Experience: <%= exp %></label>
      <label for="" style="font-weight: bold;">Status: <%= status %></label>
      
    </div>
    
      <%} %>
      
    <form action="bookengineer" method="post">
    <div style="display:flex;flex-direction:column;margin-top:30px;  align-items: center;">
     <h1>Enter Your Choice for Doctor</h1> 
    <input type="number" name="in" style="margin-bottom:15px;border-radius:10px;height:30px"/>
          <button type="submit"  name="button" value="log" style="width:150px;height:40px;background-color:green;color:white;border-radius:10px"
      >Book Engineer</button>
         </div>   
         </form>
         </div>
       
</body>
</html>