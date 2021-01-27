
<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"  pageEncoding="UTF-8"%>
    
<%-- 

<%@ page import ="com.myapp.common.*, java.io.File" %> 

--%>
<%@ page import =" java.io.File" %> 
<%@ page import ="com.oreilly.servlet.*" %>
<%@ page import="com.oreilly.servlet.multipart.DefaultFileRenamePolicy" %>




<%@page import="com.javatpoint.dao.UserDao"%> 


<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>




<!DOCTYPE html>

<html>
<head> 
<meta charset="utf-8"> 
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no"> 
<title>업로드 결과</title> 
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"; integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous"> 
</head>
<body>
<% 
	String filename = ""; //파일 이름
	String name = ""; //올린사람 이름
	String subject = "";
	int sizeLimit = 15 * 1024 * 1024; // 한번에 올릴 수 있는 파일 용량 : 15M
	
	long fileSize = 0; // 파일 사이즈
	
	
	String afterName = ""; //중복처리된 이름
	String originalName =""; //중복 처리 전 원본 이름
	String  fileType =""; // 파일 타입
	
	//	상대경로를 절대경로로 가져와야 함 
	String realPath = request.getServletContext().getRealPath("upload");
	System.out.println(realPath);
	
	MultipartRequest multpartRequest = null;
	
	
	//upload 폴더가 없는 경우 폴더를 만들기
	File dir = new File(realPath);
	if (!dir.exists()) dir.mkdirs();
			
	
	
	try{
		
		
		
		multpartRequest = new MultipartRequest(request, realPath, 
				sizeLimit, "utf-8",new DefaultFileRenamePolicy());
	
		name = multpartRequest.getParameter("name");
		// form내의 <input name="title" 인 것의 value 값을 가져옴
		
		subject = multpartRequest.getParameter("subject");
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


<form action="list.jsp" method="post" enctype="Multipart/form-data" >
  <div class="form-horizontal">

    <div class="form-group row">
    <label class="col-form-label col-sm-2" for="name">올린사람 </label>
    <div class="col-sm-8">
      <input type="text" autofocus class="form-control" name="name" value="<%=name %>" />
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="subject">제목 </label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="subject" value="<%=subject %>" />
    </div>
</div>

<div class="form-group row">
    <label class="col-form-label col-sm-2" for="filename">파일명 </label>
    <div class="col-sm-7">
      <input type="text" class="form-control" name="filename" value="<%=filename %>" />
    </div>
</div>


<div class="form-group row">
    <label class="col-form-label col-sm-2" for="filename">이미지 </label>
    <div class="col-sm-10">
    	<img src="${pageContext.request.contextPath }/upload/<%=filename%>">
    	<br><br>
        <a href="list.jsp" class="btn btn-outline-dark cancel">Back</a>
    
    </div>
</div>



  </div>
</form>
  </div>





</body>
</html>

