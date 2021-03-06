<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="<c:url value='/resources/js/jquery-3.4.1.js' />"></script>
<title>키워드 검색</title>
</head>
<body>
<div id="map" style="width:50%;height:1000px;"></div>

<div>
<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=b8d1234435d75bc9c8408ab7bf535689&libraries=services"></script>
<script>
var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
    mapOption = {
        center: new kakao.maps.LatLng(33.450701, 126.570667), // 지도의 중심좌표
        level: 7 // 지도의 확대 레벨
    };  

// 지도를 생성합니다    
var map = new kakao.maps.Map(mapContainer, mapOption); 

// 주소-좌표 변환 객체를 생성합니다
var geocoder = new kakao.maps.services.Geocoder();

function AddAddress(address, title)
{
	geocoder.addressSearch(address, function(result, status) {

	    // 정상적으로 검색이 완료됐으면 
	     if (status === kakao.maps.services.Status.OK) {

	        var coords = new kakao.maps.LatLng(result[0].y, result[0].x);

	        // 결과값으로 받은 위치를 마커로 표시합니다
	        var marker = new kakao.maps.Marker({
	            map: map,
	            position: coords
	        });

	        // 인포윈도우로 장소에 대한 설명을 표시합니다
	        var infowindow = new kakao.maps.InfoWindow({
	            content: '<div style="width:150px;text-align:center;padding:6px 0;">' + title + '</div>'
	        });
	        infowindow.open(map, marker);
	     
	        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
	        map.setCenter(coords);
	    } 
	});
}
</script>

<c:forEach items="${requestScope.list }" var="List">
	<script>
	var address = '<c:out value="${List.address }"/>';
	var title = '<c:out value="${List.title }"/>';
	AddAddress(address, title);
	</script>
</c:forEach>
</div>
<h1>아부다비공주와왕자님</h1>

</body>
</html>