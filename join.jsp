<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="User.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="User.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>회원가입 화면</title>
</head>
<body>
<center>
<H2>회원가입</H2>
<HR>
<script>
/*
	function checkID(){
		UserDAO userDAO=new UserDAO();
		result =userDAO.confirmID(request.getParameter("userID"));
		if(result==0)
			alert('사용 가능한 아이디입니다.');
		else{
			alert('이미 사용중인 아이디입니다.');
			request.getAttribute("userID").setText("");
			}
		}
		*/
</script>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" contet="width=device-width", intitial-scale="1">
		<title>짤독닷컴</title>
		<link rel="stylesheet" href="css/bootstrap.css">
		<link rel="stylesheet" href="css/짤독.css">
	</head>
	<body>
		<style type="text/css">
			.jumbotron{
				background-image: url('#');
				background-color:#ffffff;
				background-size: cover;
				text-shadow: black 0.0em 0.0em 0.0em;
				color: black;
			}
		</style>
		<nav class="navbar navbar-default navbar-fixed-top">
			<div class="container-fluid">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data target="#bs-example-navbar-collapse-1" aria-expanded="false">
						<span class="sr-only"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<a class="navbar-brand" href="main.jsp">짤독닷컴</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li ><a href="main.jsp">소개<span class="sr-only"></span></a></li>
						<li><a href="customer_home.jsp">구매자용</a></li>
						<li><a href="seller_home.jsp">판매자용</a></li>
						<li><a href="community.jsp">커뮤니티</a></li>
					</ul>
					<!--<form class="navbar-form navbar-left">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="내용입력하세요..">
						</div>
						<button type ="submit" class="btn btn-default">검색</button>
					</form> 검색하기 -->
					<ul class="nav navbar-nav navbar-right">


						<!--바로가기 드롭다운 >><li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">바로가기<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="구매자용.html">구매자용</a></li>
								<li><a href="판매자용.html">판매자용</a></li>
								<li><a href="커뮤니티.html">커뮤니티</a></li>
							</ul>
						</li> -->
						<li class="active">
						<a href="#">회원가입</a>

							</ul>
						</li>
						<li><a href="sala.html">F&Q</a></li>
				</div>
			</div>
		</nav>
<form name=form2 method="POST" action=joinAction.jsp>
<h2>회원가입</h2><hr>
<p>로그인정보</p><hr>
<input type="text" placeholder="아이디" maxlength="20" name=userID ><BR>
<!-- <button id="button1" onClick="checkID()">중복확인</button><BR>  -->
<input type="password" placeholder="비밀번호" maxlength="20" name=userPass ><BR>
<input type="password" placeholder="비밀번호 확인" maxlength="20" name=userPassCheck ><BR><hr>
<p>개인정보</p><hr>
<input type="text" placeholder="이름" maxlength="20" name=userName ><BR>
<input type="text" placeholder="생년월일" maxlength="20" name=userBirth><BR>
<input type="text" placeholder="전화번호" maxlength="20" name=userNumber ><BR>
<input type="email" placeholder="이메일" maxlength="50" name=userMail><br><hr>
<input type="submit" size=20 value="회원가입" >
</form>
</center>
</body>
</html>