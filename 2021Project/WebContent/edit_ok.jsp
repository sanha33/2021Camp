
<%@page import="com.javatpoint.dao.UserDao" language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>  
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<jsp:useBean id="u" class="com.javatpoint.bean.User"></jsp:useBean>  
<jsp:setProperty property="*" name="u"/>  


<%  
int i=UserDao.update(u);  

response.sendRedirect("list.jsp");  
%>  