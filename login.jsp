<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
		<meta charset="UTF-8">
		<meta name="viewport" contet="width=device-width", intitial-scale="1">
		<title>로그인</title>
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
						<a href="#">로그인</a>

							</ul>
						</li>
						<li><a href="sala.html">F&Q</a></li>
				</div>
			</div>
		</nav>
<body>
<center>
<br><Br><br>
<H1>로그인</H1><hr>
<form name="form" method="POST" action="loginAction.jsp">
<p>&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; ID &nbsp; &nbsp; &nbsp; &nbsp;<input type="text" name="userID" /></p>
<p>PASSWORD &nbsp;<input type="password" name="userPass" /></p>
<input type="submit" value="로그인" /><hr>

</form>
<BR>
<a href="find_id.jsp">아이디/비밀번호 찾기</a>
<a href="join.jsp">회원가입</a>
</center>
</body>
</html>