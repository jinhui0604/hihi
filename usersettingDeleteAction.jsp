<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8"); %>
<%@ page import="java.io.PrintWriter" %>

<jsp:useBean id="userDAO" class="User.UserDAO"/>
<jsp:useBean id="user" class="User.User"/>

<jsp:setProperty property="*" name="user"/>

<%
	String userID=(String)session.getAttribute("userID");
	boolean bool = userDAO.delete(userID);

	if(bool){
%>
		<script>
		alert("탈퇴 성공");
		location.href="main.jsp";
		</script>
		
<% 
 } else { %>

	<script>
		alert("탈퇴 실패!\n관리자에 문의바람");
		history.back();
	</script>	
<%
	}
%>