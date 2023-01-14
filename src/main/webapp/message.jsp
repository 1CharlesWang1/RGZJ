<%--
  Created by IntelliJ IDEA.
  User: WCL
  Date: 2022/10/13
  Time: 21:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="css/brandCss.css">
    <style>
        .block{
            margin: 0;
            display: inline-block;
        }

        .el-table .success-row {
            background: #f0f9eb;
        }
    </style>
</head>
<body>

<!--顶栏界面-->
<div>
    <p class="welcome">${sessionScope.username},欢迎您！</p>
    <img class="logoImg" src="./css/hh.png"/>
    <p class="title">用户信息</p>
    <a href="http://localhost:8080/RGZJ_war/logoutServlet" class="exit" id="logout">退出登录</a>
</div>
<hr>



<div id="app">
    <template>
        <el-table
                :data="tableData"
                border
                style="width: 100%">
            <el-table-column
                    fixed
                    prop="username"
                    label="用户名"
                    width="150">
            </el-table-column>
            <el-table-column
                    prop="password"
                    label="密码"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="realName"
                    label="真实姓名"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="tel"
                    label="手机号码"
                    width="120">
            </el-table-column>
            <el-table-column
                    prop="email"
                    label="邮箱"
                    width="200">
            </el-table-column>
            <el-table-column
                    prop="college"
                    label="学院"
                    width="300">
            </el-table-column>
            <el-table-column
                    label="操作"
                    width="200">
                <template slot-scope="scope">
                    <el-button type="text" size="small" @click="resetPassword">重置密码</el-button>
                    <el-button type="text" size="small">编辑</el-button>
                    <el-button type="text" size="small" @click="open">删除</el-button>

                </template>
            </el-table-column>
        </el-table>
    </template>
</div>

<script src="js/vue.js"></script>
<script src="element-ui/lib/index.js"></script>
<link rel="stylesheet" href="element-ui/lib/theme-chalk/index.css">
<script src="js/axios-0.18.0.js"></script>


<script>
    document.getElementById("logout").onclick = function ()
    {
        alert("退出成功！")
    }
</script>

<script>
    new Vue({
        el: "#app",
        mounted(){
            this.selectAll();
        },
        data() {
            return {
                user: {
                    id:'',
                    username:'',
                    password:'',
                    realName:'',
                    tel:'',
                    email:'',
                    college:''
                },
                tableData: [{
                }]
            }
        },
        methods: {
            selectAll(){
                var _this=this;
                //页面加载完成发送异步请求
                axios({
                    method:"get",
                    url:"http://localhost:8080/RGZJ_war/selectByJsonServlet",
                    data: _this.user
                }).then(function (resp){
                    _this.tableData=resp.data;
                })
            },
            open() {
                this.$confirm('此操作将永久删除该文件, 是否继续?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.$message({
                        type: 'success',
                        message: '删除成功!'
                    });
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消删除'
                    });
                });
            },
            resetPassword() {
                this.$confirm('确认重置密码?', '提示', {
                    confirmButtonText: '确定',
                    cancelButtonText: '取消',
                    type: 'warning'
                }).then(() => {
                    this.$message({
                        type: 'success',
                        message: '重置成功!'
                    });
                }).catch(() => {
                    this.$message({
                        type: 'info',
                        message: '已取消重置'
                    });
                });
            }
        }
    })
</script>

</body>
</html>
