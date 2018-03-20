<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<link rel="stylesheet" href="//code.jquery.com/ui/1.11.0/themes/smoothness/jquery-ui.css">
<script src="//code.jquery.com/jquery-1.10.2.js"></script>
<script src="//code.jquery.com/ui/1.11.0/jquery-ui.js"></script>
<div id="dialog" style="width:80%" title="Dialog Title">
 <div style="width:100%">
   <font color="red"><b>
   </b></font>
 </div>
</div>
<script>
 $( "#dialog").dialog({
                autoOpen:true, //자동으로 열리지않게
    width:450,
    height:180,
    modal:false, //모달대화상자
                resizable:false, //크기 조절 못하게
    show : 'slide', hide : 'slide',
    position : [500, 500],        
                buttons:{
                    "확인":function(){
                        $(this).dialog("close");
                    }
                }
 });
</script>

<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>