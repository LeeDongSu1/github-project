<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>길 찾기</title>
<script src="<c:url value='/resources/js/jquery-3.4.1.js' />"></script>
<script type="text/javascript">
$(function(){
	$('#check').on("click", function(){
		var start = $('#start').val();
		var end = $('#end').val();
		var w = window.open("about:blank","_blank","width=1000, height=1000, top=0,left=0,scrollbars=no");
		$.ajax({
			url : "check",
			type : "post",
			data : {
				start : start
				,end : end
			},
			success : function(data){
				
				w.location.href = "http://map.daum.net/?sName="+ data[0] +"&eName=" + data[1]		
			},
			error : function(){	
			}
		});
	});
});
</script>
</head>	
<body>
	<table>
		<tr>
			<td width="200px">
				<input type="text" placeholder="출발지를 입력하세요" id = "start" value = "${start}" required="required" >
			</td>
			<td rowspan="2">
				<input type = "button" value = "길찾기" style="height: 90px;text-align: left;" id = "check">
				
			</td>
		</tr>
		
		<tr>
			<td>
				<input type="text" placeholder="도착지를 입력하세요" id = "end" value = "${end}" required="required">
			</td>
		</tr>
	</table>
</body>
</html>