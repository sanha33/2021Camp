<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC"-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
 
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>파일체크 JSP 페이지</title>
</head>
 
    fileCheck jsp페이지
    <%
        // post방식에 대한 한글 인코딩 방식 지정 get방식은 서버의 server.xml에서 Connector태그에 URIEncoding="UTF-8" 추가
        request.setCharacterEncoding("UTF-8");
         
        // input type="name" 의 value값을 가져옴
        String title = request.getParameter("title");
        // input type="subject" 의 value값을 가져옴
        String subject = request.getParameter("subject");
        // 중복방지용으로 만들어져 넘겨진 파일명을 가져옴
        String afterName = request.getParameter("afterName");
        // 본래의 파일명을 가져옴
        String originalName = request.getParameter("originalName");
    %>
     
    <h3>업로드 파일 확인</h3>
    올린 사람 : <%=title %><br/>
    제목 : <%=subject %><br/>
     
   
    


