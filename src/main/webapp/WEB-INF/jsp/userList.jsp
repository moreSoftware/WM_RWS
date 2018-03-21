<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">

<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<head>
<meta http-equiv="Content-Type" content= "text/html; charset=UTF-8">
<!-- BootStrap CDN -->
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>회원 목록</title>
</head>
<body>
    <h3>회원 목록</h3> 
    <button class="btn btn-primary" style="float : right;" onclick="location.href='/userCreate'">추가</button>  
    <table class="table">
        <tr>
            <th>id</th>
            <th>passwd</th>
            <th></th>
            <th></th>
            
        </tr>
        <c:forEach var="user" items="${list}">
        <tr>
            <td>${user.id}</td>
             <td>${user.passwd}</td>
             <td> <button class="btn btn-primary"  onclick="location.href='/userDelete?id=${user.id}'">삭제</button> </td>
        	 <td> <button class="btn btn-primary"  onclick="location.href='/userUpdate?id=${user.id}'">비밀번호 변경</button> </td>
        </tr>
        </c:forEach>
    </table>

</body>
</html>
