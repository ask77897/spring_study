<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>20살이 넘는 사람들</title>
</head>
<body>
	<h1>20살이 넘는 사람들</h1>
	<hr>
	<c:forEach var="user" items="${users}">
		<c:if test="${user.age >= 20}">
			<p>${user.name}은 성인 입니다.</p>
		</c:if>
	</c:forEach>
</body>
</html>