<%@page import="com.javatpoint.dao.UserDao"%> 
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%> 

<meta charset="EUC-KR"> 
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
  
<%  

	UserDao.delete(u);  
	response.sendRedirect("list.jsp");  
%>  
