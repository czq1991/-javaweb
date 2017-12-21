<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>

<% String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
    request.setAttribute("ctx", basePath);
%>
<!DOCTYPE html>
<html>
<head>
    <link rel="icon" href="/images/logo.jpg" type="image/x-icon"/>
    <base href="<%=basePath%>">
    <meta charset="UTF-8">
    <title></title>

</head>
<body>
<h1>Hello World!</h1>
</body>
</html>