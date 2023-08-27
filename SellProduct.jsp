<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Document</title>
    <link rel="stylesheet" href="sellproduct.css" />
  </head>
  <body>
     <%@include file="Header.jsp" %>
   
    <form action="sellproduct" method="post">
      <div class="flex-container1">
        <img
          src="https://kisansuvidha.gov.in/assets/images/kisan-logo.png"
          width="200px"
          height="200px"
          alt="" />
        <h1
          style="
            font-family: 'Lucida Sans', 'Lucida Sans Regular', 'Lucida Grande',
              'Lucida Sans Unicode', Geneva, Verdana, sans-serif;
          ">
          Sell Your Products
        </h1>
        <input type="text" placeholder="Farmer Name" name="name" /><br />
        <input type="email" name="email" placeholder="Farmer Email" /><br />
        <input type="text" placeholder="Product Name" name="product" /><br />
        <input
          type="text"
          placeholder="Product Category"
          name="category" /><br />
        <input type="date" name="start" /><br />
        <input type="date" name="end" /><br />
        <input
          type="text"
          placeholder="Harvest Location"
          name="location" /><br />
        <input type="number" placeholder="Quantity" name="quantity" /><br />
        <input type="number" name="price" placeholder="Price" /><br />
        <input
          type="submit"
          value="Submit"
          name="button"
          style="background-color: green; color: white" /><br />
      </div>
    </form>
  </body>
</html>
