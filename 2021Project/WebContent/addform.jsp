
<!doctype html>
<html lang="fr">

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> 

<head> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
<title>AppTest</title> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"; integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
</head>

<body>

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


<h1>새로운 책 추가하기</h1>
<form action="add_ok.jsp" method="post" >
  <div class="form-horizontal">

    <div class="form-group row">
    <label class="col-form-label col-sm-2" for="title">Title</label>
    <div class="col-sm-8">
      <input type="text" autofocus class="form-control" name="title" />
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="author">Author</label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="author" />
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="comments">Comments</label>
    <div class="col-sm-10">
      <textarea class="form-control" name="comments" rows="7" cols="20" ></textarea>
    </div>
</div>

    <div class="form-group row">
        <label class="col-form-label col-sm-2" for="UploadFile">File Upload</label>
        <div class="col-sm-7">
          <input type="file" class="form-control" name=UploadFile value="">
        </div>
    </div>


    <div class="form-group row">
      <label class="col-form-label col-sm-2"></label>
      <div class="col-sm-10">
        <input type="submit" value="Save" class="btn btn-default btn-success">
        <a href="list.jsp" class="btn btn-outline-dark cancel">Cancel</a>
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

