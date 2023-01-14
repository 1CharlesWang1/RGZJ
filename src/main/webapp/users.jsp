<%--
  Created by IntelliJ IDEA.
  User: WCL
  Date: 2022/7/28
  Time: 12:07
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
</head>
<body>

<h1>${sessionScope.username},欢迎您</h1>
<input type="button" value="新增" id="add"><br>
<hr>
<table border="1" cellpadding="0" width="800">

    <tr>
        <th>序号</th>
        <th>用户名</th>
        <th>密码</th>
        <th>真实姓名</th>
        <th>电话</th>
        <th>邮箱</th>
        <th>学院</th>
        <th>操作</th>
    </tr>

    <c:forEach items="${users}" var="user" varStatus="status">
        <tr align="center">
            <td>${status.count}</td>
            <td>${user.username}</td>
            <td>${user.password}</td>
            <td>${user.realName}</td>
            <td>${user.tel}</td>
            <td>${user.email}</td>
            <td>${user.college}</td>

            <td><a href="/brand_demo/selectByIdServlet?id=${user.id}">修改</a>
                <a href="/brand_demo/selectByIdServlet_d?id=${user.id}">删除</a></td>
        </tr>
    </c:forEach>
</table>


<script>
    document.getElementById("add").onclick=function (){
        location.href="/brand_demo/addBrand.jsp";
    }
</script>

</body>

</html>
