<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content= "text/html; charset=UTF-8">
<!-- BootStrap CDN -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>유저 생성</title>
</head>
<body>
    <h3>유저 생성</h3>
    <div style="padding : 30px;">
        <form method="POST" action="/userCreate">
          <div class="form-group">
            <label>id</label>
            <input type="text" name="id" class="form-control">
          </div>
          <div class="form-group">
            <label>passwd</label>
            <input type="password" name="passwd" class="form-control">
          </div>
       
          <button type="submit" class="btn btn-default">생성</button>
        </form>
    </div>
</body>
</html>
