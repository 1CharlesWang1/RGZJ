<%--
  Created by IntelliJ IDEA.
  User: WCL
  Date: 2022/10/19
  Time: 16:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>

<h1>${sessionScope.username},欢迎您！</h1>

<hr>
<table border="1" cellpadding="0" width="800">
<tr>
    <th>姓名</th>
    <th>密码</th>
    <th>电话</th>
    <th>邮箱</th>
    <th>工作地址</th>
</tr>
    <tr align="center">
        <td>${sessionScope.username}</td>
        <td>${sessionScope.newpassword1}</td>
        <td>${sessionScope.phone}</td>
        <td>${sessionScope.email}</td>
        <td>${sessionScope.address}</td>
    </tr>
</table>

<hr>
<h3><a href="login.jsp">返回登录</a></h3>


</body>
</html>
