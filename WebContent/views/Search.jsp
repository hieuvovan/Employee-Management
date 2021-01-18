<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
</head>
<body>
<%
        String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("index.jsp");
        }
    %>
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
%>
	<div style="width: 50%; margin: 0 auto;">
		<h1 align="center">Tìm kiếm nhân viên</h1>
		<form method="POST" action="SearchProcess.jsp"> 
			Nhập tên: <input type="text" name="name" class="form-control">
			<br> <input type="submit" value="Tìm" class="btn btn-success">
		</form>
	</div>
	<script src="../jquery/jquery-3.5.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>