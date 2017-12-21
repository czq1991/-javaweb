<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="cis" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!doctype html>
<html>
<head>
    <link rel="icon" href="/images/logo.jpg" type="image/x-icon"/>
    <link rel="stylesheet" href="/css/main.css"/>
    <link rel="stylesheet" href="/css/text/text.css">
    <script type="text/javascript" src="/webjars/jquery/3.2.1/dist/jquery.min.js"></script>

    <title>主页</title>
</head>

<body class="body">
<div>
    <div class="head-bg">
        <div class="div-float">
            <h1 class="color-head" >旁观者</h1>
        </div>

        <div class="div-right">
            <img class="image" src="/images/logo.jpg">
            <div class="input_box">
                <!-- type="button"这里的要这样写不让页面会默认为type="submit"，ajax 提交时页面是不用刷新页面的   而表单提交需要刷新，这里我们是不用刷新色-->
                <button id="login" type="button" onclick="longinButton()">登录</button>
            </div>
        </div>

    </div>
    <div>
        <ul>
            <li style="color: white" class="active"><a href="#carousel-header" onclick="">Home</a></li>
            <li style="color: white"><a href="#about">About</a></li>
            <li style="color: white"><a href="#projects">Projects</a></li>
            <li style="color: white"><a href="#blog">Blog</a></li>
            <li style="color:white"><a href="#social">Social</a></li>
        </ul>
    </div>
</div>
<script>

    window.attachEvent("onload",function(){

    });

    function longinButton() {
        window.location.href =  encodeURI("<%=request.getContextPath()%>/dept/login");
    }

</script>




</body>

</html>