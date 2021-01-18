<%@page import="java.nio.ByteBuffer"%>
<%@page import="java.nio.charset.Charset"%>
<%@page import="java.nio.charset.CharsetEncoder"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.sql.ResultSet"%>
<%@ include file="DatabaseAccess.jsp"%>
<%@ include file="header.jsp" %>
<% response.setContentType("text/html;charset=UTF-8");
	request.setCharacterEncoding("UTF-8");%>
<% 
String searchContent = request.getParameter("name");
String queryStr = "";
ResultSet majorRS = null, rs = null;
queryStr = "select * from nhanvien where name like '%" + searchContent + "%'";
rs = st.executeQuery(queryStr); 
%>
<%@ include file="header.jsp"%>
</head>
<body>


<div class="container">
	<h1 align="center">Kết quả tìm kiếm cho <%=request.getParameter("name")%></h1>
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
	<% while (rs.next()) { 
			String staffId = rs.getString("id"); 
			Integer id = Integer.parseInt(staffId);
			String dob = rs.getString("dob");%>
	<tr>
		<td><%= rs.getString("name") %></td>
		<td><%= rs.getString("department") %></td>
		<td><%= dob %></td>
		<td><%= rs.getString("sex") %></td>
		<td> 
			<button type="button" class="btn btn-info" onclick="window.location.href = '${pageContext.request.contextPath}/EmployeeController?action=EDIT&id=<%=id%>'">
								Sửa
			</button>
							
			<button type="button" class="btn btn-danger" onclick="window.location.href = '${pageContext.request.contextPath}/EmployeeController?action=DELETE&id=<%=id%>'">
								Xóa
			</button> 
		</td>
	</tr>
	<% } %>
	</tbody>
</table>
</div>

</body>
</html>