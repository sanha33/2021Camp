<%@page import="com.javatpoint.dao.UserDao"%> 
<%@ page language="java" contentType="text/html; charset=EUC-KR" pageEncoding="EUC-KR"%> 

<meta charset="EUC-KR"> 
<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>
<jsp:setProperty property="*" name="u"/>
  
<%  
int i=UserDao.save(u);  

if(i>0){
	response.sendRedirect("list.jsp");  	
}else{
	response.sendRedirect("add_error.jsp");
}


%>  