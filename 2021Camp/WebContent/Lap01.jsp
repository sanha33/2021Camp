<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>﻿ scriptlet tag</h1><br>
<% out.print("welcome to jsp"); %>

<h1>﻿expression tag</h1><br>
<%= "welcome to jsp" %>

<h1>declaration tag</h1><br>
<%! int data=50;  %>
<%= "Value of the variable is:" +data %>


<h1>JSP out implicit object</h1><br>
<% out.print("Today is:"+java.util.Calendar.getInstance().getTime()); %>
</body>
</html>