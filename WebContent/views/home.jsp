<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Home</title>
    <link rel="stylesheet" href="../css/home.css">
</head>
<body>
<%-- <%
    if (request.getSession().getAttribute("email") == null) {
        response.sendRedirect("../index.jsp");
        return;
    }
%> --%>
    <%-- <h1>Xin chào, <% out.print(request.getSession().getAttribute("email"));%></h1> --%>
    <h1 align="center">Hướng Dẫn Sử Dụng Trang Web</h1>
    <h3>I. Đăng nhập</h3>
    <p> - Để sử dụng trang web, đầu tiên ta phải <strong>Đăng nhập</strong>.<br>
    	- Người dùng click chọn mục <strong>Đăng nhập</strong>, sau đó tiến hành đăng nhập với Tài khoản là: <strong>admin</strong>, Mật khẩu:<strong>123</strong> .
    </p> 
    <hr style="height:2px;border-width:0;color:gray;background-color:gray">
    <h3>II. Quản lí nhân viên</h3>
    <p> - Sau khi đăng nhập thành công, tại màn hình sau khi đăng nhập, người dùng click chọn <strong>Quản lí nhân viên</strong> để:<br>
			1. Xem danh sách nhân viên: Khi người dùng click chọn <strong>Quản lí nhân viên</strong> thì danh sách nhân viên sẽ được hiển thị.<br>
			2. Thêm nhân viên: Tại mục <strong>Quản lí nhân viên</strong> -> chọn <strong>Thêm nhân viên</strong> -> Điền và lựa chọn các thông tin -> nhấn <strong>Lưu</strong>.
				Nếu muốn hủy bỏ -> nhấn <strong>Quay lại</strong><br>
			3. Sửa thông tin nhân viên: Ở bảng danh sách nhân viên, tại trường <strong>Hành động</strong> -> chọn <strong>Sửa</strong>-> Điền và lựa chọn các thông tin -> nhấn <strong>Lưu</strong>.
				Nếu muốn hủy bỏ  -> nhấn <strong>Quay lại</strong><br>
			4. Xóa nhân viên:  Ở bảng danh sách nhân viên, tại trường <strong>Hành động</strong> -> chọn <strong>Xóa</strong>. Ngay lập tức sẽ xóa nhân viên đã chọn    	
    </p>
    <hr style="height:2px;border-width:0;color:gray;background-color:gray">
    <h3>III. Tìm kiếm</h3>
    <p>Tại màn hình sau khi đăng nhập, người dùng click chọn <strong>Tìm kiếm</strong> -> nhập tên nhân viên muốn tìm -> chọn <strong>Tìm</strong>. Kết quả sẽ hiển thị theo dạng bảng. </p>
    <hr style="height:2px;border-width:0;color:gray;background-color:gray">
    <h3>IV. Đăng xuất</h3>
    <p>Người dùng click chọn <strong>Đăng xuất</strong> để đăng xuất tài khoản ra khỏi hệ thống. </p>
</body>
</html>
