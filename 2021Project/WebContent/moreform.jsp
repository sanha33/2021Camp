
<!doctype html>
<html lang="fr">

<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>AppTest</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>

<body>

  <div class="container">

    <nav class="navbar navbar-expand-lg navbar-light bg-light">
      <a class="navbar-brand" href="/">AppTest</a>
      <ul class="navbar-nav mr-auto">
        <li class="nav-item">
          <a class="nav-link" href="/about">About</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/data">Data</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="/books">Books</a>
        </li>
      </ul>
    </nav>

<h1>책 상세정보 확인하기</h1>
<form action="/delete/1" method="post">

  <div class="form-horizontal">

    <div class="form-group row">
  <label class="col-form-label col-sm-2" for="Title">Title</label>
  <div class="col-sm-8">
    <input readonly class="form-control" id="Title" value="Discrete Mathematics" />
  </div>
</div>

<div class="form-group row">
  <label class="col-form-label col-sm-2" for="Author">Author</label>
  <div class="col-sm-7">
    <input readonly class="form-control" id="Author" value="Evan S. Connell" />
  </div>
</div>

<div class="form-group row">
  <label class="col-form-label col-sm-2" for="Comments">Comments</label>
  <div class="col-sm-10">
    <textarea readonly class="form-control" cols="20" id="Comments" maxlength="32000" rows="7">이산수학 교재이다. 매우 두껍다. 영어로 쓰여져있</textarea>
  </div>
</div>

<div class="form-group row">
  <label class="col-form-label col-sm-2" for="FileUrl">FileUrl</label>
  <div class="col-sm-10">
    <!-- <img src="/files/BaekJoon.jpeg" alt=""> -->
    <img width="300px" src="" alt="첨부파일">
  </div>
</div>

    <div class="form-group row">
      <label class="col-form-label col-sm-2"></label>
      <div class="col-sm-10">
        <a href="/books" class="btn btn-outline-dark cancel">Back</a>
      </div>
    </div>
  </div>

</form>

    <footer>
      <p>&copy; 2019 - AppTest</p>
    </footer>

  </div>

</body>

</html>
