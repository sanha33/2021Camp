<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
<h1>Page directive</h1>
<h4>import </h4>
<%@ page import="java.util.Date" %>
Today is: <%= new Date() %>
<br>

<h4>isErrorPage </h4>
<%@ page isErrorPage="true"  %>
 Sorry an exception occured!<br/>  
The exception is: <%= exception %>

<br>
<h1>include directive</h1>
<%@ include file="sanha.html" %>

Today is: <%= java.util.Calendar.getInstance().getTime() %> 

<br>


<h2>jsp:forward action tag</h2>  
  
<!--<jsp:forward page="printdate.jsp" /> !-->



<h2>jsp:include action tag</h2>  
<h3>This is index page!</h3>
<jsp:include page="printdate.jsp"/> 
<h3>end section of index page</h3>


<h1>EL </h1>
<h2>EL param example</h2> 
<form action="process.jsp">  
Enter Name:<input type="text" name="name" /><br/><br/>  
<input type="submit" value="go"/>  
</form>  
</body>
</html>