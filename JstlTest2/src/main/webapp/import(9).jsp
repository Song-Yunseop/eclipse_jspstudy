<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>외부의 자원(페이지)를 가져오는 액션태그</title>
</head>
<body>
<%--
	String url="https://www.naver.com";
	네이버, 다음 -> 외부에서 접근을 못하게 설정 302(접근금지)
	<c:import var="접속할 사이트주소" value="접속해서 가져올 데이터를 저장할 변수명"
	
	escapeXml = "true" => 태그자체를 문자열로 인식 => 문자형태로 출력
	escapeXml = "flase" => 본문내용 그대로(html을 실행한 결과 그대로 메인페이지를 화면캡처한 모슴)
--%>
<c:set var="url" value="https://www.naver.com" />
<c:import url="${url}" var = "u" />
<c:out value="${url}" /> 가져옵니다<p>
<c:out value="${u}" escapeXml="false" />
<h4>내부자원을 가져오기</h4>
<!-- 
	chooseTag(5).jsp?name2=bk 접속한 실행결과를 가져와서 출력
 -->
 <c:set var = "url" value = "chooseTag(5).jsp" />
 <c:import url= "${url}" var = "u" >
 	<c:param name="name2" value = "bk" />
 </c:import>
 <c:out value="${u}" escapeXml="false" />


</body>
</html>