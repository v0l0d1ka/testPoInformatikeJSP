<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.util.ArrayList" %>
    <%! int score = 0; %>
	<% ArrayList<String> param = new ArrayList(); 
	response.setContentType("text/html");
		response.setCharacterEncoding("UTF-8");
		%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta  charset="UTF-8">
<title>Otvet na test po informatike</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
</head>
<body>
	
	<div class="container">
	<h3>Результаты теста</h3>
	<div class="jumbotron">
	<ul>
	
	<%   
	param.add(0, request.getParameter("q1"));
	    if(param.get(0) == null) param.set(0, "");
	    if(param.get(0).equals("1024")) {score++;%>
	    <li>1 ok</li>
	    <%} else {%>
	    <li>1 false</li>
	    <%} 
	    param.clear();
		 
		 param.add(request.getParameter("q2"));
		 if(param.get(0) == null) {param.set(0, "");}
		 if(param.get(0).equals("ram")){score++; %>
		 <li>2 ok</li>
		 <% }else { %>
		 <li>2 false </li>
		 <% }
		 param.clear();
		 
		 param.add(request.getParameter("q31"));
		 param.add(request.getParameter("q32"));
		 param.add(request.getParameter("q33"));
		 param.add(request.getParameter("q34"));
		 
		 for(int i = 0; i < param.size(); i++){
			 if(param.get(i) == null) { param.set(i, "");}
		 }
		 if(param.get(2).equals("magnit") && param.get(0).equals("") &&
					param.get(1).equals("") && param.get(3).equals("")){
					 score++;
	    %>
	    <li>3 ok</li>
	    <% }else{ %>
	    <li>3 false</li>
	    <%}
		 param.clear();
		 
		 param.add(request.getParameter("q41"));
		 param.add(request.getParameter("q42"));
		 param.add(request.getParameter("q43"));
		 param.add(request.getParameter("q44"));
		 
		 for(int i = 0; i < param.size(); i++){
			 if(param.get(i) == null) { param.set(i, "");}
		 }
		 
		 if(param.get(3).equals("risunok") && param.get(0).equals("") &&
					param.get(1).equals("") && param.get(2).equals("")){
					 score++;%>
		<li>4 ok</li>
		<%}else { %>
		<li>4 false</li>
		<%}
		 param.clear();
		 
		 param.add(request.getParameter("q51"));
		 param.add(request.getParameter("q52"));
		 param.add(request.getParameter("q53"));
		 param.add(request.getParameter("q54"));
		 param.add(request.getParameter("q55"));
		 
		 for(int i = 0; i < param.size(); i++){
			 if(param.get(i) == null) { param.set(i, "");}
		 }
		 
		 if(param.get(0).equals("ram") && param.get(1).equals("cpu") &&
			param.get(2).equals("pci") && param.get(3).equals("") && 
			param.get(4).equals("bus")){
					 score++;%>
					 <li>5 ok</li>
		<% }else{ %>
		<li>5 false</li>
		<%}
		 param.clear();
		 
		 param.add(request.getParameter("q6"));
		 if(param.equals("sect")){score++;%>
		 <li>6 ok</li>
		 <%}else{ %>
		 <li>6 false</li>
		 <%}
param.clear();
		 
		 param.add(request.getParameter("q7"));
		 if(param.get(0) == null) {param.set(0, "");}
			 param.get(0).trim();
			 param.get(0).toLowerCase();
		 
		 if(param.get(0).equals("ada") || param.get(0).equals("ада")) {score++;%>
		 <li>7 ok</li>
		 <%}else{ %>
		 <li>7 false</li>
		 <%}
param.clear();
		 
		 param.add(request.getParameter("GUI"));
		 if(param.get(0) == null) param.set(0, "");
		 if(param.get(0).equals("menu")) {score++;
		 %>
		 <li>8 ok</li>
		 <%}else{ %>
		 <li>8 false</li>
		 <%}
param.clear();
		 
		 param.add(request.getParameter("q9"));
		 if(param.get(0) == null) param.set(0, "");
		 if(param.get(0).equals("floppy")) {score++;
		 %>
		 <li>9 ok</li>
		 <%}else{ %>
		 <li>9 false</li>
		 <%}
param.clear();
		 
		 param.add(request.getParameter("q10"));
		 if(param.get(0) == null) param.set(0, "");
		 
			 param.get(0).trim();
			 param.get(0).toLowerCase();
		
		 if(param.get(0).equals("arpanet")) {score++;
		 %>
		 <li>10 ok</li>
		 <% }else{ %>
		 <li>10 false</li>
		 <%}
param.clear();
		 
		 param.add(request.getParameter("q11"));
		 if(param.get(0) == null) param.set(0, "");
		 if(param.get(0).equals("two")){score++;
		 %>
		 <li>11 ok</li>
		 <%}else{ %>
		 <li>11 false</li>
		 <%}
		 %>
		 
		 </ul>
		<% if(score >= 7){ %> 
		<h4 class="alert alert-success">Отлично! Тест пройден</h4>
		   Ваша оценка <span class='badge'>
		   <%= score %> </span>
		   
		   
		   <% } else { %>
		   <h4 class="alert alert-danger">К сожалению вы не прошли тест</h4>
			Ваша оценка <span class='badge'>  <%= score %> 
	             </span>
	             <%} %>
		 </div>
		 </div>
		 <%score = 0; %>
</body>
</html>