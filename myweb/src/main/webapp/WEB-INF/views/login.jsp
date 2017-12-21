<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!doctype html>
<html>
<head>
    <link rel="stylesheet" href="/css/rise.css">
    <link rel="icon" href="/images/logo.jpg" type="image/x-icon"/>
    <title>登录</title>
    <link rel="stylesheet" href="/css/login.css"/>
    <script type="text/javascript" src="webjars/jquery/3.2.1/dist/jquery.min.js"></script>
</head>

<body class="body">
<div >
    <%--<img class="image-bg" src="/images/img-bg.jpg">--%>
    <div class="clearfloat">
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
            <div class="box-item"></div>
    </div>
</div>
<table class="tableGrid">
    <tr>
        <%-- 目录编码 --%>
        <td align="right" ><span style="color: red">*</span></td>
        <td class="text"><span id="catNo"></span></td>

        <td class="unit">&nbsp;</td>
        <%-- 目录名称 --%>
        <td align="right"><span style="color: red">*</span></td>
        <td class="text"><input readonly="readonly" id="catName"
                                name="catName" value="12222" /></td>
        <td class="unit">&nbsp;</td>
    </tr>

</table>

</body>
</html>