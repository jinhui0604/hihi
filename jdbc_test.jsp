<%@ page language="java" contentType="text/html; charset=UTF-8" import="java.sql.*"
    pageEncoding="UTF-8"%>

<% request.setCharacterEncoding("utf-8"); %>
<%@ page import="test.testDAO"%>

<%@ page import="java.io.*" %>


<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<script type="text/javascript">
			function formCheck() {
			var fm=document.prdtform;
			var name=fm.prdtName.value;
			var contents=fm.prdtContents.value;
			var file=fm.prdtFile.value;
			
			if(name==""){
				alert("제목을 입력해주세요.");
			}
			if(contents==""){
				alert("내용을 입력해주세요.");
			}
			if(file==""){
				alert("파일을 선택해주세요.");
			}
			if(name!="" && contents!=""){
				fm.submit();
				<% 
				int res=new testDAO().upload(request.getParameter("prdtName"), request.getParameter("prdtContents"), "D://forky.jpg");
				%>
				
			}
		}
		</script>
	</head>
	<body>
	<form action="#" method=post name=prdtform enctype="multipart/form-data">
		<label>제안 이름: </label>
		<input type=text name=prdtName>
		<label>제안 내용: </label>
		<!--  <input type=text name=prdtContents> -->
		<textArea name=prdtContents rows="5"></textArea>
		<label>파일: </label>
		<input type=file name=prdtFile>
		<input type="button" value='제안' onclick="formCheck()">
	</form>
 	</body>
</html>
 