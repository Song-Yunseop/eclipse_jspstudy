<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>set태그, remove태그 사용법</title>
</head>
<body>
<%
	//int num1 = 20;
	//double num2 = 10.5;
	//java.util.Date today = new java.util.Date();
%>
<!-- 
<c:set var="변수명" value = "값" scope="page" /> 
	자료형은 저장되는 값에 따라서 자동으로 결정
	page(defalut) request, session, application(내장객체의 사용범위와 같다)
-->
<c:set var="num1" value = "20" scope="page" />
<c:set var="num2">
10.5
</c:set>
<%-- <jsp:userBean id = "today" class = "java.util.Date" /> --%>
<c:set var = "today" value="<%=new java.util.Date() %>" />
<hr>
변수 num1 = ${num1}<br>
변수 num2 = ${num2}<br>
num1 + num2 = ${num1 + nmu2}<br>
오늘은 ${today} 입니다.<p>

<!-- remove var="삭제시킬 변수명" scope="변수의 사용범위" -->
<c:remove var="num1" scope="page" />
삭제한 후의 변수 num1 = ${num1}<br>
num1 + num2 = ${num1 + nmu2}<br>

</body>
</html>