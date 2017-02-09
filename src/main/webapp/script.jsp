<%@page language="java" contentType="text/html"; charset=UTF-8"%>
<%@page contentType="text/html; charset=utf-8" %>
<%@page trimDirectiveWhitespaces="true" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>script.html</title>
<style type="text/css">
span{
	p
}</style>
</head>
<body>
<figure>
<figcaption>스크립트</figcaption>
<ol>
<li>스크립릿(표현식)</li>
<li>표현식(Expression)</li>
<li>선언부(Declaration)</li>
</ol>
</figure>

<% 
// 1.Scriptlet 메소드 안 로직이 들어온다. 
	out.println("<hr>");
	for(int i=0;i<5;i++){
		out.println("<span>i="+i+"</span>");
	}
%>

<!--2.Expression--> 
<hr>
<%
for(int i=0;i<10;i++){

%>
<span>i=<%=calc(i)%></span>
<%
	}
%>

<%! 
	//3.declaration(필드,메소드)
	int value =(int)(Math.random()*100);
	int calc(int n){
	
	return n*value;
}	
%>
</body>
</html>