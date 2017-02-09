<%@page contentType="text/html; charset=utf-8" %>
<%@page import="java.util.Date" %>
<% 
Date now=new Date();
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>현재시간</title>
</head>
<body>
현재시각:
<%= now %>

</body>
</html>