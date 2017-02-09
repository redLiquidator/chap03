<!DOCTYPE html>
<%@page import="java.util.Date"%>
<html>
<head>
<meta charset="UTF-8">
<title>currentpage1 test</title>
</head>
<body>
<h1 onclick="xxx(event)">My Name is jjlee</h1>

<h2><%= new Date() %></h2>

<script type="text/javascript">
function xxx(event){
	alert(event.target.innerHTML);
}
</script>
</body>
</html>