<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>날짜, 시간, 숫자 출력양식</title>
</head>
<body>
<!-- 언어
	setLocale 액션 => value = "언어-국가명" ko-KR, js-JP, en-US 
 -->
 <fmt:setLocale value="ko-KR" />
 <h1><!-- type(슛자, 통화, 퍼센트단위) value(출력할값 -->
 number : <fmt:formatNumber value="9876543.61" type="number"  /><br>
 currency : <fmt:formatNumber value="9876543.61" type="currency"  /><br>
 percent : <fmt:formatNumber type="percent"  >
 				9876543.61
 			</fmt:formatNumber><br>
<!-- 사용자정의 형식포맷으로 지정하고 싶다.
	pattern = "설정할 타입포맷 지정"
 -->
 pattern = ".0000" : <fmt:formatNumber value="9876543.61" pattern =".0000" /><br>
 pattern = "#,#00.#" : <fmt:formatNumber value="9876543.61" pattern ="#,#00.#" /><br>
 <hr>
 <jsp:useBean id="now" class="java.util.Date" />
 <c:out value="${now}" /><p>
 <!-- 
 	formatDate value = "출력할값" type(날짜만, 시간만, 둘다 출력)
  -->
 date : <fmt:formatDate value="${now}" type = "date" /><br>
 time : <fmt:formatDate value="${now}" type = "time" /><br>
 both : <fmt:formatDate value="${now}" type = "both" /><br>
 <!-- 
 	dateStyle(날짜만 세부적으로 설정할때)
 	timeStyle(시간만 세부적으로 설정할때)
 	default => emdium과 같다.
 	long < full -> 요일이 출력(대한민국 표준시 한글로 표시)
  -->
 default : <fmt:formatDate value="${now}" type = "both" dateStyle="default" timeStyle="default" /><br>
 short : <fmt:formatDate value="${now}" type = "both" dateStyle="short" timeStyle="short" /><br>
 medium : <fmt:formatDate value="${now}" type = "both" dateStyle="medium" timeStyle="medium" /><br>
 long : <fmt:formatDate value="${now}" type = "both" dateStyle="long" timeStyle="long" /><br>
 full : <fmt:formatDate value="${now}" type = "both" dateStyle="full" timeStyle="full" /><br>
 
 pattern : "yy년 MM월 dd일(HH시 mm분 ss초)"
 	<fmt:formatDate value="${now}" type = "both" pattern="yy년 MM월 dd일(HH시 mm분 ss초)" />
 <hr>
 <fmt:timeZone value="Hongkong">
 	<fmt:formatDate value="${now}" type = "both" pattern="yy년 MM월 dd일(HH시 mm분 ss초)" />	
 </fmt:timeZone>
 
 </h1>
</body>
</html>