<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<%@ page  isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Dept</title>
</head>
<body>
<table>
    <tr>
        <th>ID</th>
        <th>姓名</th>
        <th>年龄</th>
        <th>生日</th>
    </tr>
    <c:forEach var="dept" items="${depts}">
        <tr>
            <td><c:out value="${dept.id}"/></td>
            <td><c:out value="${dept.name}"/></td>
            <td><c:out value="${dept.age}"/></td>
            <td><c:out value="${dept.birDate}"/></td>
        </tr>
    </c:forEach>
</table>
</body>
</html>