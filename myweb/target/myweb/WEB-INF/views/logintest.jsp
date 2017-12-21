<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cis" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="text/javascript" src="/webjars/jquery/3.2.1/dist/jquery.min.js"></script>
    <script type= "text/javascript">var baseurl = "<?php echo base_url();?>"</script>
     <link rel="stylesheet" href="/css/login.css">
    <title>登陆界面</title>
    <style>

    </style>
    <script>
        $(function() {
            $("#login").click(function() {
// 处理表单验证和交给后台处理的逻辑
                var oError = document.getElementById("error_box");
                var userName = $("#username").val();
                var password = $("#password").val();
                var isNotError = true;
                if(userName==""){
                    oError.innerHTML = "用户名为空！";
                    isNotError = false;
                    $("#username").focus();
                    return;
                }
                if(password==""){
                    oError.innerHTML = "密码为空！";
                    isNotError = false;
                    $("#password").focus();
                    return;
                }
                $.ajax({
                    url: "do_login",
                    dataType: "json",
                    type: "post",
                    data: {username :userName,password :password},
                    async: false,
                    success: function(data) {
                        console.log(data.pageUrl+"======================");
                       if (data.code=='true'){
//                           window.location.href = encodeURI(data.pageUrl);
                       }else {
                           oError.innerHTML = "用户名或密码错误！";
                       }
                    },
                    error: function() {
                        alert("error");
                    }
                });
            });
        });
        //判断是否敲击了Enter键
        $(document).keyup(function(event){
            if(event.keyCode ==13){
                $("#login").trigger("click");
            }
        });




        <%--window.attachEvent("onload",function(){--%>
            <%--jQuery("#login").ajaxSubmit({--%>
                <%--url:"<%=request.getContextPath()%>/bcsm/bc/assistant/bcidenty/bcidenty.do?action=saveData",--%>
                <%--type:"post",--%>
                <%--data:{name:name,code:code,catSeq:catSeq,supCatId:supCatId,isUse:isUse,catType:catType,type:type},--%>
                <%--async: false,--%>
                <%--success : function(result){--%>
                    <%--if(result=="true"){--%>
                        <%--HideProgressInfo();--%>
                        <%--showMsg("<bean:message key="bcsm.msg.bcsm.saveSuccess"/>");--%>
                        <%--self.parent.refush();--%>
                    <%--}else{--%>
                        <%--HideProgressInfo();--%>
                        <%--showMsg("<bean:message key="bcsm.msg.bcsm.saveFail"/>");--%>
                    <%--}--%>

                <%--},--%>
                <%--fail : function() {--%>
                    <%--HideProgressInfo();--%>
                    <%--showMsg("<bean:message key="bcsm.msg.bcsm.saveFail"/>");--%>
                <%--}--%>

            <%--});--%>
        <%--});--%>
    </script>
</head>
<body>
<div id="background">
    <img src="/images/b" width="100%" height="100%"/>
</div>

<div id="content"><h1>健客大数据平台</h1>
    <form>
        <div class="box">
            <h2>用户登录</h2>
            <div id="error_box"></div>
            <div class="input_box">
                <input type="text" placeholder="请输入账户名" id="username" name="username"/>
            </div>
            <div class="input_box">
                <input type="password" placeholder="请输入密码" id="password" name="password"/>
            </div>
            <div class="input_box">
                <!-- type="button"这里的要这样写不让页面会默认为type="submit"，ajax 提交时页面是不用刷新页面的   而表单提交需要刷新，这里我们是不用刷新色-->
                <button id="login" type="button">登录</button>
            </div>
        </div>
    </form>
</div>

</body>
<script type= "text/javascript" src= "<?php echo base_url();?>public/js/promptBox.js"></script>
</html>