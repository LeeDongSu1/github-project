<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
	function pass(){
		var name = document.getElementById("name");
		opener.document.getElementById("passName").value = name.value;
		this.close();
		
	}
</script>
</head>
<body>
	<h1>새창</h1>
	<input type="text" id="name">
	<input type="button" value="전송" onclick="pass()">
</body>
</html>