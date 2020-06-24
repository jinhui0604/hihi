<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%	request.setCharacterEncoding("utf-8"); %>

<jsp:useBean id="userDAO" class="User.UserDAO"/>
<jsp:useBean id="user" class="User.User"/>

<jsp:setProperty property="*" name="user"/>

<%
	boolean bool = userDAO.update(user);

	if(bool){
%>
	<script>
		alert("수정 성공");
		location.href = "seller_home.jsp";
	</script>	
<% } else { %>

	<script>
		alert("수정 실패!\n관리자에 문의바람");
		history.back();
	</script>	
<%
	}
%>
