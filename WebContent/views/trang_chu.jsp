	<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
	<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
	<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<!-- <link rel="stylesheet" href="../css/bootstrap.min.css"> -->
		<link rel="stylesheet" href="../css/trangchu.css">
		<script src="../jquery/jquery-3.5.1.min.js"></script>
		<script src="../js/bootstrap.min.js"></script>
		<title>HỆ THỐNG QUẢN LÍ NHÂN SỰ </title>
	</head>
	<body>
		<div class = "header">
		<h1>Hệ Thống Quản Lí Nhân Sự</h1>
		</div>
		<div class ="navbar">
		 <a href="../views/home.jsp" target="main">Hướng dẫn sử dụng</a>
  		 <a href="${pageContext.request.contextPath}/EmployeeController?action=LIST" target = "main">Quản lí nhân viên</a>
  		 <a href="../views/Search.jsp" target="main">Tìm Kiếm</a>
  		 
  		 <a href="logoutprocess?logout=ok"" class = "logout"> Đăng Xuất</a>
  		 <a class = "logout" id="welcome"><%out.print(request.getSession().getAttribute("email"));%>,</a>
		</div>
    <div class="main">
        <iframe src="../views/home.jsp" width="100%" height="700px" name="main" style ="padding-top: 20px;"></iframe>
    </div>
  <!-- <div class="footer">
    <p class="copyright">© 2020 Hieu Vo Van @ Information Technology Faculty.</p>
  </div> -->
	</body>
	</html>