<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page import="wcl.bean.UserBean"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>注册结果</title>
<link rel="stylesheet" type="text/css" href="../css/register.css" />
</head>
<body>
	<jsp:useBean id="userBean" class="wcl.bean.UserBean"
		scope="request" />
	<%
		System.out.println(userBean.getCollege());
		System.out.println(userBean);
	%>
	<div id="wrap">
		<div id="header">
			<div>
				<span id="title"> <a href="#">注册成功！</a>
				</span>
			</div>
		</div>
		<div id="content">
			<table border="0" cellspacing="0" cellpadding="0" class="form_table">
				<tr>
					<td>用户名:</td>
					<td><jsp:getProperty property="username" name="userBean" /></td>
				</tr>
				<tr>
					<td>密&nbsp;&nbsp;&nbsp;码:</td>
					<td><jsp:getProperty property="password" name="userBean" /></td>
				</tr>
				<tr>
					<td>姓名:</td>
					<td><jsp:getProperty property="realname" name="userBean" /></td>
				</tr>
				<tr>
					<td>手机号码:</td>
					<td><jsp:getProperty property="tel" name="userBean" /></td>

				</tr>
				<tr>
				<tr>
					<td>邮箱:</td>
					<td><jsp:getProperty property="email" name="userBean" /></td>

				</tr>
				<tr>
				<tr>
					<td>所在学院:</td>
					<td><jsp:getProperty property="college" name="userBean" /></td>

				</tr>

			</table>


		</div>
	</div>
</body>
</html>