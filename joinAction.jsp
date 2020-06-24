<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="User.UserDAO" %>
<%@ page import="java.io.PrintWriter" %>
<% request.setCharacterEncoding("UTF-8"); %>
<jsp:useBean id="user" class="User.User" scope="page"/>
<jsp:setProperty name="user" property="userID"/>
<jsp:setProperty name="user" property="userPass"/>
<jsp:setProperty name="user" property="userName"/>
<jsp:setProperty name="user" property="userBirth"/>
<jsp:setProperty name="user" property="userNumber"/>
<jsp:setProperty name="user" property="userMail"/>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>짤독닷컴</title>
</head>
<body>
	<%
	String password=user.getUserPass();
	int num1=0;int num2=0;int num3=0;
		for(int i=0;i<password.length();i++){
			char str=password.charAt(i);
			if(Character.isDigit(str))
				num1+=1;
			else if(Character.isAlphabetic(str))
				num2+=1;
			else if(str=='@'||str=='!'||str=='~'||str=='%'||str=='&')
				num3+=1;
		}
	if(user.getUserID()==null || user.getUserPass()==null|| user.getUserName()==null
	|| user.getUserNumber()==null|| user.getUserBirth()==null|| user.getUserMail()==null){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('입력되지 않은 정보가 있습니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(!(user.getUserPass().equals(request.getParameter("userPassCheck")))){
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('비밀번호가 서로 다릅니다.')");
		script.println("history.back()");
		script.println("</script>");
	}
	else if(num1==0||num2==0||num3==0){
				PrintWriter script=response.getWriter();
				script.println("<script>");
				script.println("alert('비밀번호는 영어 대/소문자,숫자,특수문자(@,!,~,%,&)를 포함하여야 합니다.')");
				script.println("history.back()");
				script.println("</script>");
	}
	else{
	UserDAO userDAO=new UserDAO();
	int result=userDAO.join(user);
	if(result==-1){	//아이디가 이미 있는 경우
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('이미 존재하는 아이디입니다.')");
		script.println("history.back()");
		script.println("</script>");
		}
	else{
		PrintWriter script=response.getWriter();
		script.println("<script>");
		script.println("alert('회원가입이 완료되었습니다.')");
		script.println("location.href='main.jsp'");
		script.println("</script>");
	}
	
}
	
	%>
</body>
</html>