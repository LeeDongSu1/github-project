<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>main</title>
</head>
<body>

	<h2>hello java 시작페이지</h2>
	<div><a href="<c:url value='/crawler'></c:url>">크롤러</a></div>
	
	<div><a href="<c:url value='/projMain'></c:url>">프로젝트 메인</a></div>
	
	<div><a href="<c:url value='function/realtime'></c:url>">내 위치</a></div>
	
</body>
</html>
