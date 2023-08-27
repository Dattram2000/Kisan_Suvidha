<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%
    HttpSession session30 = request.getSession();
    String uuid99 = (String) session30.getAttribute("uuid99");
%>
<%= uuid99 %>
</body>
</html>