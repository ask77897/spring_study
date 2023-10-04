<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%!
		String[] members = {"철수", "영희", "길동"};
		int num = 10;
		
		int sum(int num2){
			return num + num2;
		}
	%>
	<h3>
		sum 실행결과 : <%= sum(20) %>
	</h3>
	<hr>
	<h3>
		배열 출력
	</h3>
	<ul>
		<% for(String name : members){ %>
		<li><%= name %></li>
		<% } %>
	</ul>
	<hr>
	<h3>
		주석
		<!-- HTML 주석 : 화면에는 안보이고 소스에는 보인다. -->
		<%-- JSP주석 : 둘다 안보인다. --%>
	</h3>
	<hr>
	<h2>계산기</h2><%--
	<%
	int n1 = Integer.parseInt(request.getParameter("n1"));
	int n2 = Integer.parseInt(request.getParameter("n2"));
	String op = request.getParameter("op");
	
	int result = 0;
	
	switch(op) {
	case "+" : result = n1+n2;
	break;
	case "-": result = n1-n2;
	break;
	case "*": result = n1*n2;
	break;
	case "/": result = n1/n2;
	break;
	}
	%>
	<h2>계산 결과</h2>
	<hr>
	결과는 <%= result %> 입니다.
	 --%>
	<hr>
	<h2>로그인</h2>
	<%--<%!
	private boolean isVaildUser(String username, String password) {
		return username.equals("admin") && password.equals("admin123");
	}
	%>--%>
	<%
	String username = request.getParameter("username");
	String password = request.getParameter("password");
	
	if(username.equals("admin") && password.equals("admin123")) {
		response.setStatus(HttpServletResponse.SC_OK);
		response.getWriter().println("SC_OK");
	}else {
		response.setStatus(HttpServletResponse.SC_UNAUTHORIZED);
		response.getWriter().println("SC_UNAUTHORIZED");
	}
	
	%>
	
</body>
</html>