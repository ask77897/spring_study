<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>success</title>
</head>
<body>
	<h1>로그인 성공!</h1>
	<p>안녕하세요. ${user.username}님 반갑습니다.</p>
	<h2>유저 정보 변경</h2>
	<form method="post" action="/Class01/logincontroller">
		<input type="hidden" name="action" value="update">
		
		현재 ID : 
		<input type="text" name ="oldUsername" value="${user.username}">
		
		새로운 ID : 
		<input type="text" name="newUsername">
		
		새로운 비밀번호 : 
		<input type="password" name="newPassword">
		<button type="submit">업데이트</button>
		
	</form>
	<form method="post" action="/Class01logincontroller">
		<input type="hidden" name="action" value="delete">
		<input type="hidden" name="username" value="${user.username}">
		<button type="submit">삭제</button>
	</form>
	
	<a href="/Class01/class03/login.jsp">로그인 페이지로 돌아가기</a>
</body>
</html>