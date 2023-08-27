<%@page import="java.io.PrintWriter"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="com.mysql.jdbc.Connection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="BookVet.css" />
  </head>
  <body>
    <%@include file="Header.jsp" %>
  
  <%
     String name="";
     int exp=0;;
     String status="";
     String desi="";
     int id=0;
     
     String name2 = "";
     int exp2 = 0;
     String status2 = "";
     String desi2 = "";
     int id1=0;

     
     String name3 = "";
     int exp3 = 0;
     String status3 = "";
     String desi3 = "";
     int id2=0;

     
  try {
	  PrintWriter out1=response.getWriter();
	  Class.forName("com.mysql.jdbc.Driver");
		java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kisan_suvidha","root","root");
	//	java.sql.Statement stmt=con.createStatement();
		String q="select * from bookvet";
		java.sql.Statement stmt=con.createStatement();
		ResultSet set=stmt.executeQuery(q);	
		if(set.next()) {
			 name=set.getString(1);
			 desi =set.getString(2);
			 exp=set.getInt(3);
			 status=set.getString(4);
			 id=set.getInt(5);
			 
			 }
		  // Fetch data for the second template
        if (set.next()) {
            name2 = set.getString(1);
            desi2 = set.getString(2);
            exp2 = set.getInt(3);
            status2 = set.getString(4);
			 id1=set.getInt(5);

        }
		  
        if (set.next()) {
            name3 = set.getString(1);
            desi3 = set.getString(2);
            exp3 = set.getInt(3);
            status3 = set.getString(4);
			 id2=set.getInt(5);

        }
		System.out.println("done.........");
		con.close();
	} catch (Exception e) {
		e.printStackTrace();
	} %>
	<div style="display:flex;  justify-content: space-evenly;
">
    

    <div class="flex-container1">
       <h1><%= id %></h1>
    
      <img
        src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png"
        alt=""
        width="200px"
        height="200px" />
      <label for="" style="font-weight: bold;">Name:<%= name %></label>
      <label for="" style="font-weight: bold;">Designation: <%= desi %></label>
      <label for="" style="font-weight: bold;">Experience: <%= exp %></label>
      <label for="" style="font-weight: bold;">Status: <%= status %></label>
    </div>
   
    
        <div class="flex-container1">
    <h1><%= id1 %></h1>
     <img
        src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png"
        alt=""
        width="200px"
        height="200px" />
      <label for="" style="font-weight: bold;">Name:<%= name2 %></label>
      <label for="" style="font-weight: bold;">Designation: <%= desi2 %></label>
      <label for="" style="font-weight: bold;">Experience: <%= exp2 %></label>
      <label for="" style="font-weight: bold;">Status: <%= status2 %></label>
         
    </div>
             
    
    <div class="flex-container1">
    <h1><%= id2 %></h1>    
     <img
        src="https://cdn.pixabay.com/photo/2020/07/01/12/58/icon-5359553_1280.png"
        alt=""
        width="200px"
        height="200px" />
      <label for="" style="font-weight: bold;">Name:<%= name3 %></label>
      <label for="" style="font-weight: bold;">Designation: <%= desi3 %></label>
      <label for="" style="font-weight: bold;">Experience: <%= exp3 %></label>
      <label for="" style="font-weight: bold;">Status: <%= status3 %></label>
    </div>
    </div>
    <form action="bookvet" method="post">
    <div style="display:flex;flex-direction:column;margin-top:30px;  align-items: center;">
     <h1>Enter Your Choice for Doctor</h1> 
    <input type="number" name="in" style="margin-bottom:15px;border-radius:10px;height:30px"/>
           <button type="submit"  name="button" value="log" style="width:150px;height:40px;background-color:green;color:white;border-radius:10px"
      >Book Vet</button>
         </div>   
         </form>
  </body>
   
</html>