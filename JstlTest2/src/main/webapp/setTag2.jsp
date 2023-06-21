<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<%
	//java.util.HashMap map = new java.util.HashMap();
	//map.put("name", "홍길동"); // map.get(키명(name))
	//request.setCharacterEncoding("utf-8");
%>
<fmt:requestEncoding value="UTF-8" />
<c:set var="map" value="<%=new java.util.HashMap() %>" />
<html>
<head>
<meta charset="UTF-8">
<title>set태그의 두번째 예제</title>
</head>
<body>
<%-- 
<c:set target="${불러올 객체명}" property="속성명(멤버변수)" value="저장할값" /> 
--%>
<c:set target="${map}" property="name" value="홍길동" />
<!-- map.get(키명((name)) -->
1. 변수 map에 저장된 name값:${map.name}<br>
2. 변수 map에 저장된 name값:${map['name']}<br>
3. 변수 map에 저장된 name값:${map["name"]}<br>

<form action="setTag2.jsp" method="post">
	이름 : <input type="text" name="name">
	<input type="submit" value="전송">
</form>
<hr>
이름은 <%=request.getParameter("name") %>입니다.<p>
이름은(el) ${param.name}

</body>
</html>