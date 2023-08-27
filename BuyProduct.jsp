<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="BuyProduct.css" />
  </head>
 
  <body>
   <%
  int id=0;
  String ProductName="";
  String FarmerName="";
  String HarvestDate="";
  String ExpiryDate="";
  String HarvestAt="";
  int Price=0;
 PrintWriter out1=response.getWriter();

	  Class.forName("com.mysql.jdbc.Driver");
	  java.sql.Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/kisan_suvidha","root","root");
	  String q="select * from BuyProduct";
	  PreparedStatement ps=con.prepareStatement(q);
	  ResultSet set=ps.executeQuery();
	  while(set.next()){
		  id=set.getInt(1);
		  ProductName=set.getString(2); 
		  FarmerName=set.getString(3);
		  HarvestDate=set.getString(4);
		  ExpiryDate=set.getString(5);
		  HarvestAt=set.getString(6);	
		  Price=set.getInt(7);	
		  HttpSession session9=request.getSession();
			session9.setAttribute("uuid99", set.getString("id"));
  %>
      <form action="buyproduct" method="post">
  
    <div class="flex-container1">
      <img
        src="https://www.shutterstock.com/image-photo/processed-organic-wheat-grains-agricultural-260nw-208739860.jpg"
        alt=""
        width="200px"
        height="200px"
        style="border-radius: 100px" />
      <label style="font-weight: bold;">Product Name : <%=ProductName %></label>
      <label style="font-weight: bold;">Farmer Name :<%= FarmerName %> </label>
      <label style="font-weight: bold;">Harvest Date :<%= HarvestDate %> </label>
       <label style="font-weight: bold;">Expiry Date : <%= ExpiryDate %></label>
      <label style="font-weight: bold;">Harvested at :<%= HarvestAt%> </label>
      <label style="font-weight: bold;">Price : <%= Price %></label>
      <input placeholder="Quantity" style="border-radius:10px;height:20px" name="quantity">
 <input type="submit"  name="button" value="log" style="width:150px;height:40px;background-color:green;color:white;border-radius:10px"
      >      
    </div>
    
    <%} %>
    </form>
  </body>
</html>
