package com.example.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet("/current")  //URL mapping
public class CurrentDateServlet extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		PrintWriter out =resp.getWriter();
		
		String countStr =req.getParameter("count"); //client에서 parameter를 전달한다. url에 파라미터가 들어간다. ~?__________ : querystring 
		int count =0;
		if(countStr!=null)
			count=Integer.parseInt(countStr);
		
		out.println("<!doctype html>");
		out.println("<html>");
		out.println("<head>");
		out.println("<title>current jjlee</title>");
		out.println("</head>");
		out.println("<body>");
		out.println("<h1 onclick='xxx(event)'>My name is Lee Jin Joo</h1>");
		
		for(int i=0;i<count;i++){
		out.println("<h2>"+i+"current="+new Date()+"</h2>");
		}
		out.println("<script>");
		out.println("function xxx(event){");
		out.println("		alert(event.target.innerHTML);");
		out.println(" }");
		out.println("</script>");
		out.println("</body>");
		out.println("</html>");   //servlet은 작성하기가 불편하다. servlet(자바)은 server가 수행한다. javascript는 client(웹브라우저)가 수행한다.  client는 코드를 받는것이 아니라 결과물만 받는다. JSP는 서버측에서 동적인문서를 만드는 기술이다. 
		
	}

}
