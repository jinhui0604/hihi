<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String userID=null;
	if(session.getAttribute("userID")!=null){
		userID=(String) session.getAttribute("userID");
	}
%>

<!DOCTYPE html>
<html>
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
					<a class="navbar-brand" href="index.html">짤독닷컴</a>
				</div>
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index.html">소개</a></li>
						<li><a href="customer_home.jsp">구매자용</a></li>
						<li class="active"><a href="seller_home.jsp">판매자용<span class="sr-only"></span></a></li>
						<li><a href="community.jsp">커뮤니티</a></li>
					</ul>
					<!--<form class="navbar-form navbar-left">
						<div class="form-group">
							<input type="text" class="form-control" placeholder="내용입력하세요..">
						</div>
						<button type ="submit" class="btn btn-default">검색</button>
					</form> 검색하기 -->
					<ul class="nav navbar-nav navbar-right">
						<li class="dropdown">
							<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">바로가기<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="customer_home.jsp">구매자용</a></li>
								<li><a href="seller_home.jsp">판매자용</a></li>
								<li><a href="community.jsp">커뮤니티</a></li>
							</ul>
						</li>
						<%
							if(userID==null){
					%>
						<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">로그인<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="login.jsp">로그인</a></li>
								<li><a href="join.jsp">회원가입</a></li>
							</ul>
						</li>
						<%} else {%>
						<li class="dropdown">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false"><%=userID %>님<span class="caret"></span></a>
							<ul class="dropdown-menu">
								<li><a href="usersetting.jsp">마이 페이지</a>
								<li><a href="logout.jsp">로그아웃</a></li>
							</ul>
						</li>
						<%} %>
						<li><a href="sala.html">F&Q</a></li>
				</div>
			</div>
		</nav>
		<div class="container-fluid">
			<div class="row">
				<div class="col-md-2">
					<br><br><br><br><!--좌측 3단 가지는 사이드바-->
					<div class="panel panel-info">
						<ul class="list-group">
							<li class="list-group-item"><a href="#">
								<img src="images/asd.jpg" style="width:96px; height:96px;">
								<br>프로필
							</a></li>
							<li class="list-group-item" class=""><a href="form.jsp" class="active">신청하기</a></li>
							<li class="list-group-item"><a href="sellog.jsp">판매관리</a></li>
							<li class="list-group-item"><a href="usersetting.jsp">계정관리</a></li>
							<li class="list-group-item"><a href="#">공지사항</a></li>
						</ul>
					</div>
				</div>
				<div class="col-md-9"><!--나머지부분 내용-->
					<div class="jumbotron">
						<br>
						<br>
						<h2 class="text-left"> 판매 관리</h1>
						<div class="container">
							<hr>
						</div>
					</h2>
				</div>
			
		<footer style="background-color: #000000; color: #ffffff">
			<div class="container-fluid">
				<br>
				<div class="row">
					<div class="col-sm-2" style="text-align:center;"><h5>Copyright &copy; 2017</h5><h5>박진휘</h5></div>
					<div class="col-sm-4"><h4>대표자 소개</h4><p>안녕안녕안녕안녕안녕 :)</p></div>
					<div class="col-sm-2"><h4 style="text-align:center">지름길</h4>
						<div class="list-group">
							<a href="#" class="list-group-item">소개</a>
							<a href="#" class="list-group-item">살라살라</a>
							<a href="#" class="list-group-item">솔랑솔랑</a>
						</div>
					</div>
					<div class="col-sm-2"><h4 style="text-align: center;">SNS</h4>
						<div class="list-group">
							<a href="#" class="list-group-item">페북</a>
							<a href="#" class="list-group-item">인스타</a>
							<a href="#" class="list-group-item">유튜브</a>
						</div>
					</div>
					<div class="col-sm-2"><h4 style="text-align: center;"><span class="glyphicon glyphicon-ok"></span>&nbsp;By 박진휘</h4></div>
				</div>
			</div>
		</footer>
		<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
		<script src="js/bootstrap.js"></script>


 	</body>
</html>
 