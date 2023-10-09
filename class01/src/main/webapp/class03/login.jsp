
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>login</title>
</head>
<body>
	<h1>로그인</h1>
	<form method="post" action="/Class01/logincontroller">
		<label for="username">ID : </label>
		<input type="text" id="username" name="username">
		<label for="password">Password : </label>
		<input type="password" id="password" name="password">
		<button type="submit">log in</button>
	</form>	
	
	<h1>사용자 추가</h1>
	<form method="post" action="/Class01/logincontroller">
		<input type="hidden" name="action" value="create">
		
		<label for="newUsername">New ID : </label>
		<input type="text" id="newUsername" name="newUsername">
		
		<label for="newPassword">New password : </label>
		<input type="text" id="newPassword" name="newPassword">
		<button type="submit">사용자 추가</button>
	</form>
</body>
</html>