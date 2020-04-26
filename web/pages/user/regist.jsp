<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <title>尚硅谷会员注册页面</title>
        <%@include file="/pages/common/header.jsp" %>
        <script type="text/javascript">
            //页面加载完成之后
            $(function () {

                $("#username").blur(function () {
                    var username = this.value;
                    $.getJSON("${basePath}userServlet", "action=ajaxExistUsername&username="+username, function (data) {
                        if (data.existUsername){
                            $("span.errorMsg").text("用户名已存在!");
                        } else {
                            $("span.errorMsg").text("当前用户名可用");
                        }
                    });
                });

                $("#code_img").click(function () {
                        this.src = "${basePath}kaptcha.jpg?d=" + new Date();
                    }
                );

                //给注册按钮绑定单击事件
                $("#sub_btn").click(function () {
                    //验证用户名
                    var usernameText = $("#username").val();
                    //创建正则表达式对象
                    var usernamePatt = /^\w{5,12}$/;
                    var errorSpan = $("span.errorMsg");  //错误信息框
                    if (!usernamePatt.test(usernameText)) {
                        errorSpan.text("用户名不合法!");
                        return false; //取消按钮默认跳转行为，防止用户名不合法之后仍然进行页面跳转
                    }

                    var passwordText = $("#password").val();
                    //创建正则表达式对象
                    var passwordPatt = /^\w{5,12}$/;
                    if (!passwordPatt.test(passwordText)) {
                        errorSpan.text("密码不合法!");
                        return false; //取消按钮默认跳转行为，防止用户名不合法之后仍然进行页面跳转
                    }

                    var repwdText = $("#repwd").val();
                    if (repwdText != passwordText) {
                        errorSpan.text("密码和确认密码不一致!");
                        return false;
                    }

                    var emailText = $("#email").val();
                    var emailPatt = /^[a-z\d]+(\.[a-z\d]+)*@([\da-z](-[\da-z])?)+(\.{1,2}[a-z]+)+$/;
                    if (!emailPatt.test(emailText)) {
                        errorSpan.text("邮箱格式不合法");
                        return false;
                    }

                    var codeText = $("#code").val();

                    codeText = $.trim(codeText); //去掉验证码前后空格

                    if (codeText == null || codeText == "") {
                        errorSpan.text("验证码不能为空");
                        return false;
                    }

                    errorSpan.text("");
                });
            });
        </script>
        <style type="text/css">
            .login_form {
                height: 420px;
                margin-top: 25px;
            }

        </style>
    </head>
    <body>
        <div id="login_header">
            <img class="logo_img" alt="" src="static/img/logo.gif">
        </div>

        <div class="login_banner">

            <div id="l_content">
                <span class="login_word">欢迎注册</span>
            </div>

            <div id="content">
                <div class="login_form">
                    <div class="login_box">
                        <div class="tit">
                            <h1>注册尚硅谷会员</h1>
                            <span class="errorMsg">${requestScope.msg}</span>
                        </div>
                        <div class="form">
                            <form action="userServlet" method="post">
                                <input type="hidden" name="action" value="registe"/>
                                <label>用户名称：</label>
                                <input class="itxt" type="text" placeholder="请输入用户名"
                                       autocomplete="off" tabindex="1" name="username" id="username"
                                       value="${requestScope.username}"/>
                                <br/>
                                <br/>
                                <label>用户密码：</label>
                                <input class="itxt" type="password" placeholder="请输入密码"
                                       autocomplete="off" tabindex="1" name="password" id="password"/>
                                <br/>
                                <br/>
                                <label>确认密码：</label>
                                <input class="itxt" type="password" placeholder="确认密码"
                                       autocomplete="off" tabindex="1" name="repwd" id="repwd"/>
                                <br/>
                                <br/>
                                <label>电子邮件：</label>
                                <input class="itxt" type="text" placeholder="请输入邮箱地址"
                                       autocomplete="off" tabindex="1" name="email" id="email"
                                       value="${requestScope.email}"/>
                                <br/>
                                <br/>
                                <label>验证码：</label>
                                <input class="itxt" type="text" name="code" style="width: 130px;" id="code"/>
                                <img alt="" id="code_img" src="kaptcha.jpg"
                                     style="float: right; margin-right: 40px; width: 100px; height:30px">
                                <br/>
                                <br/>
                                <input type="submit" value="注册" id="sub_btn"/>
                            </form>
                        </div>

                    </div>
                </div>
            </div>
        </div>
        <%@include file="/pages/common/footer.jsp" %>
    </body>
</html>