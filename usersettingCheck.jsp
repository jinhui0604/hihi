
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ page import="User.User" %>
<%@ page import="User.UserDAO" %>

<html>
<head>
    <title>계정 관리</title>
    
  	<%
		String userID=null;
		String userPass=null;
		
		//User user=null;
		int result=-99;
		
		if(session.getAttribute("userID")!=null){
			userID=(String)session.getAttribute("userID");
			//userPass=(String)session.getAttribute("userPass");
			
			UserDAO dao=new UserDAO();
			userPass=dao.getUserPass(userID);
			
			
			
		}
	
	%>
    
    
    <script type="text/javascript">
        // 비밀번호 미입력시 경고창
        function checkValue(){
        	
        	var fm=document.form;
        	var pass=document.form.password.value;
        	
            if(pass==""){
                alert("비밀번호를 입력하지 않았습니다.");
                //return false;
            }
            else{
            	if(!pass.equals(userPass)){
                	alert("비밀번호가 틀렸습니다.");
                	//return false;
                }
                else if(pass.equals(userPass)){
                	//script.println("location.href='usersetting.jsp'");
                	fm.submit();
                	//return true;
                }
            }
        }
    </script>
    
    


</script>
    
    
</head>
<body>
 
    <br><br>
    <b><font size="6" color="gray">내 정보</font></b>
    <br><br><br>
 
    <form name="form" method="post" action="usersetting.jsp">
 
        <table>
            <tr>
                <td bgcolor="skyblue">비밀번호</td>
                <td><input type="password" name="password" maxlength="50"></td>
            </tr>
        </table>
        
        <br> 
        
        <input type="button" value="확인" onclick="checkValue()"/> 
    </form>
</body>
</html>
