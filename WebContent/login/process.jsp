<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// 자바 코드 작성
	// 한글 깨짐 방지
	request.setCharacterEncoding("UTF-8");
	// username, email, password, confirm-password
	String name 	 = request.getParameter("username");
	String password  = request.getParameter("password");

	System.out.println();

	// 위 받아온 데이터들을 DB에 저장 하는 방법을 해야함
	// 이름과 패스워드 체크
	// 임시로 이름과 패스워드를 지정(이미 회원인 사람)
	String regName = "회식";
	String regPw   = "20190826";
	boolean isLogin = false;
	// 만약 로그인을 시도 하는 사람이 회식과 20190826이면
	if (name.equals(regName) && password.equals(regPw)) {
	// 로그인 성공
	System.out.println("로그인 성공");
	isLogin = true;
	// 아니면
	} else {
	// 로그인 실패
	System.out.println("로그인 실패");
	}
%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login/process.jsp</title>
</head>
<body>
<h1>로그인 처리</h1>

<% if (isLogin) { %>
	<script> alert("로그인 성공");</script>
	이름 : <b style="color:Tomato;"><%=name %></b><br>
	암호 : <b style="color:Tomato;"><%=password %></b><br>
	<a href="http://m.kyungnam.ac.kr/program/planmeal/lstPlanMeal.asp?place=2">교직원 식단</a>
<% } else { %>
	<script>
		alert("로그인 실패!!");
		location.href="../sign.jsp";
	</script>
<% } %>	
</body>
</html>