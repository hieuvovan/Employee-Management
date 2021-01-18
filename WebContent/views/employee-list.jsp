<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>DANH SÁCH NHÂN VIÊN</title>
<!-- <link rel="stylesheet" href="../css/button.css"> -->
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
	<div class = "container">
		<h1 align="center">Quản Lí Danh Sách Nhân Viên</h1>
		<hr/>
		
		<p>${NOTIFICATION}</p>
		
		<p>
			<button class = "btn btn-primary" onclick="window.location.href = 'views/employee-form.jsp'">Thêm nhân viên</button>
		</p>
	
		<table class = "table table-bordered" id="datatable">
			<thead>
				<tr class = "thead-light">
					<th>Họ và tên</th>
					<th>Bộ phận</th>
					<th>Ngày sinh</th>
					<th>Giới tính</th>
					<th>Hành động</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${list}" var="employee">
					<tr>
						<td>${employee.name}</td>
						<td>${employee.department}</td>
						<td>${employee.dob}</td>
						<td>${employee.sex}</td>
						<td> 
							<%-- <a href = "${pageContext.request.contextPath}/EmployeeController?action=EDIT&id=${employee.id}" class="btn btn-primary stretched-link">
								<!-- <span class="glyphicon glyphicon-trash"></span> --> Sửa
							</a>  --%> 
							<button type="button" class="btn btn-info" onclick="window.location.href = '${pageContext.request.contextPath}/EmployeeController?action=EDIT&id=${employee.id}'">
								Sửa
							</button>
							
							<button type="button" class="btn btn-danger" onclick="window.location.href = '${pageContext.request.contextPath}/EmployeeController?action=DELETE&id=${employee.id}'">
								Xóa
							</button>
							<%-- <a href = "${pageContext.request.contextPath}/EmployeeController?action=DELETE&id=${employee.id}"  class="stretched-link text-danger">
								 <!-- <span class="glyphicon glyphicon-trash"></span> --> Xóa 
							</a>  --%>
						</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
<script src="../jquery/jquery-3.5.1.min.js"></script>
<script src="../js/bootstrap.min.js"></script>
<script>
	$(document).ready(function(){
		$("#datatable").DataTable();
	})
</script>
</body>
</html>