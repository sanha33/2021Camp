<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
<!DOCTYPE html>
<html>


<head> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
<title>2021WebCamp</title> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"; integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
</head>
<body>




<form action="fileupload.jsp" method="post" enctype="Multipart/form-data" >

  <div class="form-horizontal">

    <div class="form-group row">
    <label class="col-form-label col-sm-2" for="name">올린사람 </label>
    <div class="col-sm-8">
      <input type="text" autofocus class="form-control" name="name" />
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="subject">제목 </label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="subject" />
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="filename">이미지 </label>
    <div class="col-sm-10">
    <input type="file" class="form-control" name="filename" /><br/>
   
        <input type="submit" value="전송" class="btn btn-outline-dark cancel" />  
        <input type="reset" value="취소" class="btn btn-outline-dark cancel" />
    </div>
</div>



  </div>
</form>
  </div>


</body>
</html>