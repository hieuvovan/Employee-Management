<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
	<link rel="stylesheet" href="../css/trangchu.css">
	<script src="../jquery/jquery-3.5.1.min.js"></script>
	<script src="../js/bootstrap.min.js"></script>
<title>Quản lý nhân sự</title>
</head>
<body>
	<%
    if (request.getSession().getAttribute("email") != null) {
        response.sendRedirect("QuanLyNhanSu");
    }
	%>
	<div class = "header">
		<h1>Hệ Thống Quản Lí Nhân Sự</h1>
		</div>
		<div class ="navbar">
		 <a href="../views/home.jsp" target="main">Hướng dẫn sử dụng</a>
  		 <a href="../views/Home_nv.jsp" target="main">Quản lí nhân viên</a>
  		 <a href="../views/Home_nv.jsp" target="main">Tìm Kiếm</a>
  		 <a href="dangnhap" class="login">Đăng Nhập</a>
		</div>
    <div class="main">
        <iframe src="../views/home.jsp" width="100%" height="700px" name="main" style ="padding-top: 20px;"></iframe>
    </div>
</body>
</html>