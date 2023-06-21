<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>if문 태그</title>
</head>
<body>
<%
	//int age = 20;
	//String name = "bk";
	//if(age > 19) < c:if test="조건식(el로 표시))"
%>
<c:set var="age" value="${20}" />
<c:set var="name" value="${'bk'}" />
<c:if test = "true">
	무조건 실행이 되는 글       
</c:if>
<p>
<c:if test = "${19 < age }"> <br>
	당신의 나이는 19살 이상이군요!
</c:if>
<p>
<c:if test = "${name == 'bk' }">
	name의 값은 ${pageScope.name}입니다.<br>
</c:if>
<!-- c:if 액션태그에서는 else 구문이 없다 -->
<c:if test = "${name != 'bk' }">
	name의 값은 ${pageScope.name}입니다.<br>
</c:if>
<%-- 
	다중 조건식 else if,, switch~case
	<c:choose>
		<c:when test="조건식(el)">
			수행할 문장
		</c:when>
		<c:when test="조건식2(el)">
			수행할 문장2
		</c:when>
		<c:otherwise>
			위의 조건에 해당되지않은 경우
		</c:otherwise>
	</c:choose>
--%>

</body>
</html>