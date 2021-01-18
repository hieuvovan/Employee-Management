<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/form.css">
</head>
<body >
<%
request.setCharacterEncoding("UTF-8");
response.setCharacterEncoding("UTF-8");
%>
<%
        String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("index.jsp");
        }
    %>
	<div class = "container">
		<div class="float-right">
		</div>
		<h1 >Nhập thông tin</h1>
		<hr/>
		
		<div class = "row">
			<div class = "col-md-4">
				<form action = "${pageContext.request.contextPath}/EmployeeController" method="POST" >
				
					<div class = "form-group">
						<label for="formGroupExampleInput"><strong>Họ và tên</strong></label>
						<input type = "text" required class = "form-control" name = "name" placeholder = "Họ và tên" value = "${employee.name}"/>
					</div>
				
					<div class = "form-group">
						<label for="formGroupExampleInput"><strong>Ngày sinh</strong></label>
						<input type = "date" required class = "form-control" name = "dob" placeholder = "Ngày sinh" value = "${employee.dob}"/>
					</div>
				
					<div class="form-group">
						<label for="formGroupExampleInput"><strong>Bộ phận</strong></label>
					  	<%-- <input type = "text" class = "form-control" name = "department" placeholder = "Bộ phận" value = "${employee.department}"/> --%>
					  	<select name="department" required class="form-control">
					  	 	<option value="${employee.department}">${employee.department}</option>
							<option value="Phòng kế hoạch tài chính">Phòng kế hoạch tài chính</option>
 							<option value="Phòng công tác sinh viên">Phòng công tác sinh viên</option>
  							<option value="Phòng đào tạo">Phòng đào tạo</option>
  							<option value="Phòng công nghệ thông tin">Phòng công nghệ thông tin</option>
						</select>
					</div>
					
					<div class="form-group">
						<label for="formGroupExampleInput"><strong>Giới tính</strong></label>
						<input type="radio" required id="male" name="gender" value="Nam">
  						<label for="male">Nam</label>
  						<input type="radio" required id="female" name="gender" value="Nữ">
  						<label for="female">Nữ</label>
 						<input type="radio" required id="other" name="gender" value="Khác">
  						<label for="other">Khác</label>
					</div>
				
					<input type = "hidden" name = "id" value = "${employee.id}"/>
					<span>
					<button type = "submit" class="btn btn-success">Lưu</button>
					<a href = "${pageContext.request.contextPath}/EmployeeController?action=LIST" class="btn btn-primary">Quay lại</a>
					</span>
				</form>
			</div>
		</div>
	</div>
	

<script src="../jquery/jquery-3.5.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
</body>
</html>