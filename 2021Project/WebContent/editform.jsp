
<!doctype html>
<html lang="fr">

<head>
  <%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" import="com.javatpoint.dao.UserDao,com.javatpoint.bean.*,java.util.*"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
  
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <title>AppTest</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<%@ page import =" java.io.File" %> 
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>


</head>

<body>
<%
	String title="";
	String author="";
	String comments="";
	String filename="";
%>
<%  
	String personid=request.getParameter("personid");
	
	User u=UserDao.getRecordById(Integer.parseInt(personid));
	
	if(personid!=null){
		
		
	
		title = u.getTitle();
		author = u.getAuthor();
		comments = u.getComments();
		filename = u.getFilename();
		
	}
	  
	//String filename = ""; //파일 이름
	//String name = ""; //올린사람 이름
	//String subject = "";
	int sizeLimit = 15 * 1024 * 1024; // 한번에 올릴 수 있는 파일 용량 : 15M
	
	long fileSize = 0; // 파일 사이즈
	
	
	String afterName = ""; //중복처리된 이름
	String originalName =""; //중복 처리 전 원본 이름
	String  fileType =""; // 파일 타입
	
	//	상대경로를 절대경로로 가져와야 함 
	String realPath = request.getServletContext().getRealPath("filename");
	System.out.println(realPath);
	
	MultipartRequest multpartRequest = null;
	
	
	//upload 폴더가 없는 경우 폴더를 만들기
	File dir = new File(realPath);
	if (!dir.exists()) dir.mkdirs();
			
	
	
	try{
		
		
		
		multpartRequest = new MultipartRequest(request, realPath, 
				sizeLimit, "utf-8",new DefaultFileRenamePolicy());
	
	
	//name = multpartRequest.getParameter("name");
		// form내의 <input name="title" 인 것의 value 값을 가져옴
		
	//	subject = multpartRequest.getParameter("subject");
		// form내의 <input name="subject" 인 것의 value 값을 가져옴
				
				
	    filename = multpartRequest.getFilesystemName("filename");
		//예제에서의 filename photo임. 
		
		
		// ( request, 파일저장경로, 용량, 인코딩타입, 중복파일명에 대한 기본정책 )
		multpartRequest  =new MultipartRequest(request,realPath,sizeLimit,"utf-8",new DefaultFileRenamePolicy());
	
		
		
		//이 밑으로는 필요 없을 수도...,
		Enumeration files = multpartRequest.getFileNames();
		// 전송한 전체 파일이름들을 가져옴 
		
		while(files.hasMoreElements()){
			
			
			String file1 = (String)files.nextElement();
			// form 태그의 <input type="file" name="지정된 이름" /> '지정된 이름' 을 가져온다.
			
			
			originalName = multpartRequest.getOriginalFileName(file1);
			// 가져온 파일의 실제 이름을 가져옴
			
			afterName = multpartRequest.getFilesystemName(file1);
			// 만약 파일명이 중복될 경우, 중복 정책에 의해 뒤에 1,2,3 이 붙어 unique하게 파일명을 생성함
			// 이때 생성된 이름을 filesystemName 이라 하고 그 이름 정보를 가져온다. (중복에 대한 처리)
			
			
			
			
			fileType = multpartRequest.getContentType(file1);
			// 파일의 타입 정보를 가져옴
			
			File file = multpartRequest.getFile(file1);
			// input file name에 해당하는 실재 파일을 가져온다. 
			
			fileSize= file.length();
			// 파일의 객체 크기를 알아냄
			
		}	
	
	}catch(Exception e){
		
		e.printStackTrace();
		
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
			    <label class="col-form-label col-sm-2" for="filename">fileUrl </label>

	          <input type="file" class="form-control" name="filename"  value="<%=filename%>">
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
