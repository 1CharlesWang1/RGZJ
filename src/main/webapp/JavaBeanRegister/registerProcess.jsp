<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="wcl.bean.UserBean" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册</title>
</head>
<body>
<jsp:useBean id="userBean" class="wcl.bean.UserBean" scope="request"/>
<%
	request.setCharacterEncoding("UTF-8");
%>
<jsp:setProperty property="username" name="userBean" param="username"/>
<jsp:setProperty property="password" name="userBean" param="password"/>
<jsp:setProperty property="realname" name="userBean" param="realname"/>
<jsp:setProperty property="tel" name="userBean" param="tel"/>
<jsp:setProperty property="email" name="userBean" param="email"/>
<jsp:setProperty property="college" name="userBean" param="college"/>

<jsp:forward page="registerResult.jsp"></jsp:forward>
</body>
</html>