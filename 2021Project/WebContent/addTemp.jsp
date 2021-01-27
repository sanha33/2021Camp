<%@page import="com.javatpoint.dao.UserDao"%> 
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%> 

<meta charset="EUC-KR"> 
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
  
  
  <body>
  

<a class="btn btn-sm btn-warning" href="fileform.jsp?personid=${u.getId()}">FileUpload</a>




</body>