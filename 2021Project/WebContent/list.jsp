
<!doctype html>
<html lang="fr">

<head>
    <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>AppTest</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>
<%  
List<User> list=UserDao.getAllRecords();  
request.setAttribute("list",list);  

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
<br>
<h1>List of books !</h1>


<div class="table-responsive-sm">
  <table class="table table-hover">
    <thead>
      <tr>
        <th>Title</th>
        <th>Author</th>
        <th>Comment</th>
        <th class="d-print-none">
          <a class="btn btn-sm btn-success" href="addform.jsp">Add</a>
        </th>
      </tr>
    </thead>
    <tbody>
      
      
   <c:forEach items="${list}" var="u">  
     
		<tr>
		<td>${u.getTitle()}</td>
		<td>${u.getAuthor()}</td>  
		<td>${u.getComments()}</td>

          <td class="d-print-none">
            <a class="btn btn-sm btn-warning" href="editform.jsp?personid=${u.getId()}">Edit</a>
            <a class="btn btn-sm btn-danger" href="deleteform.jsp?personid=${u.getId()}">Delete</a>
            <a class="btn btn-sm" href="moreform.jsp">More</a>
          </td>
          </tr>
</c:forEach>  

    </tbody>
  </table>
</div>



    <footer>
      <p>&copy; 2021 - Sanadoing</p>
    </footer>

  </div>

</body>

</html>
