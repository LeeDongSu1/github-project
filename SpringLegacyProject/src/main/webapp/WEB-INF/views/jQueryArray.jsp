<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<style type="text/css">
	.high-light-0{
		background: yellow;
	}
	.high-light-1{
		background: orange;
	}
	.high-light-2{
		background: blue;
	}
	.high-light-3{
		background: green;
	}
	.high-light-4{
		background: red;
	}
</style>
<title>Insert title here</title>
<script src="resources/js/jquery-3.4.1.js"></script>
<script type="text/javascript">

$(function(){
	var array = [
	{name: 'Hanbit Media', link: 'http://hanbit.co.kr'}
	,{name: 'Naver', link: 'http://naver.com'}
	,{name: 'Daum', link: 'http://daum.net'}
];

	$.each(array, function(index, item){
		var output = '';

		output += '<a href="' + item.link + '">';		//array가 이미 오브젝트이기 때문에 그냥 item으로 접근 가능
		output += '<h1>' + item.name + '</h1>';
		output += '</a>';

		document.body.innerHTML += output;
	});

	$('h1').each(function(index, item){
		console.log(item);
		console.log($(item));
		$(item).addClass('high-light-'+index);
		//$(this).addClass('high-light-'+index);
	});
})
</script>
</head>
<body>

	<h1>item - 0</h1>
	<h1>item - 1</h1>
	<h1>item - 2</h1>
	<h1>item - 3</h1>
	<h1>item - 4</h1>
	
</body>
</html>