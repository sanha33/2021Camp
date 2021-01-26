
<!doctype html>
<html lang="fr">

<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>AppTest</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>

<body>
<%
	String title="";
	String author="";
	String comments="";
%>
<%  
String personid=request.getParameter("personid");

User u=UserDao.getRecordById(Integer.parseInt(personid));

if(personid!=null){
	
	

	title = u.getTitle();
	author = u.getAuthor();
	comments = u.getComments();
	
}
  
%>  

  <div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="/">2021WebCamp</a>
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="About.jsp">About</a>
        </li>
 
        <li class="nav-item">
          <a class="nav-link" href="list.jsp">Books</a>
        </li>
      </ul>
    </nav>

<h1>기록 편집하기</h1>

<form action="edit_ok.jsp" method="post">
<input type="hidden" name="id" id="id" value="<%=u.getId()%>">
    <div class="form_horizontal">
      <div class="form-group row">
    <label class="col-form-label col-sm-2" for="title">Title</label>
    <div class="col-sm-8">
      <input type="text" autofocus class="form-control" name="title" value="<%=title%>" >
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="author">Author</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="author" value="<%=author%>" >
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="comments">Comments</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="comments" rows="7" cols="20"><%=comments%></textarea>
    </div>
</div>
      <div class="form-group row">
        <label class="col-form-label col-sm-2"></label>
        <div class="col-sm-10">
          <input type="submit" name="" value="Update" class="btn btn-default btn-warning" >
          <a class="btn btn-outline-dark cancel"href="list.jsp">Cancel</a>
        </div>
      </div>
    </div>
</form>

    <footer>
      <p>&copy; 2021 - Sanadoing</p>
    </footer>

  </div>

</body>

</html>
