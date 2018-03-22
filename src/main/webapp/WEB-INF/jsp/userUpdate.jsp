<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta http-equiv="Content-Type" content= "text/html; charset=UTF-8">
<!-- BootStrap CDN -->
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<title>유저 수정</title>
</head>
<body>
    <h3>유저 수정</h3>
    <div style="padding : 30px;">
       
          <div class="form-group">
            <label>id</label>
             <input type="text" name="id" id = "id"class="form-control" readonly = "readonly" ></input>
          </div>
          <div class="form-group">
            <label>passwd</label>
            <input type="password" id = "passwd" name="passwd" class="form-control">
          </div>
          <button type="button" id ="btnUpdate"class="btn btn-default">수정</button>
        </form>
    </div>
</body>
<script>
$(document).ready(function(){
	$("#id").val(${id});
    
    //  (ajax로 처리)
    $("#btnUpdate").click(function(){
    	var temp =  $("#passwd").val();
    	var jd = {id : $("#id").val() , passwd : temp};
    	JSON.stringify(jd);
    	
    	console.log(jd);
        $.ajax({                
            type: "post",
            url: "/userUpdate",
            data: jd,
            success: function(data){
            	console.log(data);
                alert("유저 수정 완료");
                location.href = "/userList";
            }
        	,
        	error : function(xhr, status, error) {
        		alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);

        		}
        });
    });
});
</script>
</html>
