<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<link href="${pageContext.request.contextPath}/css/index.css" rel="stylesheet">
<link href="${pageContext.request.contextPath}/css/bootstrap.min.css" rel="stylesheet">
<script src="${pageContext.request.contextPath}/js/bootstrap.min.js"></script>
<script src="${pageContext.request.contextPath}/jquery/jquery-3.5.1.min.js"></script>
<meta charset="UTF-8">
<title>Đăng Nhập</title>
</head>
<body>
 <%
 		
         String email=(String)session.getAttribute("email");
        
        //redirect user to home page if already logged in
        if(email!=null){
            response.sendRedirect("QuanLyNhanSu");
        }
 
        String status=request.getParameter("status");
        
        if(status!=null){
        	if(status.equals("false")){
        		   out.print("Incorrect login details!");	           		
        	}
        	else{
        		out.print("Some error occurred!");
        	}
        } 
        Cookie[] listCookie = request.getCookies();
        String user = "";
        String pass = "";
        int co = 0;
        if(listCookie != null){
           while(co < listCookie.length){
             if(listCookie[co].getName().equals("user")){
               user = listCookie[co].getValue();
              }
             if(listCookie[co].getName().equals("pass")){
               pass = listCookie[co].getValue();
              }
             co++;
           }
     
         }
        %>
        ${error}
<div class="container">
    <div class="row">
        <div class="col-md-6">
            <div class="card">
                <form class="box" action="loginprocess" method="post">
                <div class="imgcontainer">
    				<img src="${pageContext.request.contextPath}/images/admin.jpg" alt="Avatar" class="avatar">
 				 </div>
                    <h1>Đăng Nhập</h1>
                    <p class="text-muted"> Tài khoản: admin</p> 
                    <p class="text-muted"> Mật khẩu: 123</p> 
                    <input type="text" name="email" placeholder="Tài khoản" required class="form-control"  value="<%out.print(user);%>"> 
                    <input type="password" name="password" placeholder="Mật khẩu" required class="form-control" value="<%out.print(pass);%>"> 
					<input type="checkbox" name="chkRemember" value="ON" /><h6>Ghi nhớ đăng nhập</h6>
                    <input type="submit" name="" value="Đăng nhập">
                </form>
            </div>
        </div>
    </div>
</div>
</body>
</html>