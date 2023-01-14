<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户注册</title>
<link rel="stylesheet" type="text/css" href="../css/register.css" />

</head>
<body>
	<div id="wrap">
		<div id="header">
			<div>
				<span id="title"> <a href="#">用户注册</a>
				</span>
			</div>
		</div>
		<div id="content">
			<h1>注册</h1>

			<form name="form1" action="registerProcess.jsp" method="POST" onsubmit="return check();">
				<table border="0" cellspacing="0" cellpadding="0" class="form_table">
					<tr>
						<td colspan="2"><span> <i id="usernameErr"
								name="usernameErr"></i>
						</span></td>
					</tr>
					<tr>
						<td>用户名:</td>
						<td><input type="text" name="username" id="username"
							maxlength="16" minlength="8" /></td>
						<td></td>
					</tr>
					 
					<tr>
						<td>密&nbsp;&nbsp;&nbsp;码:</td>
						<td><input type="password" name="password" id="password"
							maxlength="16" minlength="3" /></td>
					</tr>
					<tr>
						<td>确认密码:</td>
						<td><input type="password" name="repassword" id="repassword"
							maxlength="16" minlength="3" /></td>
					</tr>
					<tr>
						<td>姓名:</td>
						<td><input type="text" name="realname" id="user" /></td>
					</tr>
					<tr>
						<td>手机号码:</td>
						<td><input type="text" name="tel" id="tel" /></td>

					</tr>
					<tr>
					<tr>
						<td>邮箱:</td>
						<td><input type="email" name="email" id="email" /></td>

					</tr>
					<tr>
					<tr>
						<td>所在学院:</td>
						<td><input type="text" name="college" id="college" /></td>

					</tr>
					<tr>
						<td>验证码:</td>
						<td><input type="text" name="imageCode" id="imageCode" /></td>
						<td><img alt="验证码" src="../css/yzm.png" /></td>
					</tr>
					<tr>
						<td></td>
						<td style="text-align: center"><input type="submit"
							value="注册" /> <input type="reset"
							value="重置"></td>
					</tr>
				</table>
			</form>
		</div>
	</div>
</body>
</html>