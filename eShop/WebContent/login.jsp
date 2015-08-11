<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link href="${pageContext.request.contextPath }/css/bootstrap.css" rel="stylesheet" type="text/css" media="all" />
<!--theme-style-->
<link href="${pageContext.request.contextPath }/css/style.css" rel="stylesheet" type="text/css" media="all" />	
<!--//theme-style-->
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!--//fonts-->
<script src="${pageContext.request.contextPath }/js/jquery.min.js"></script>
</head>
<body>
	<!--header-->
	<div class="header">
		<div class="top-header">
			<div class="container">
				<div class="logo">
					<a href="index.html"><img src="${pageContext.request.contextPath }/resources/images/shop-logo.png" alt=" " /></a>
				</div>
			</div>
		</div>
		
	</div>
	<!---->
	<div class="container">
		
      	   <div class="account_grid">
			   <div class=" login-right">
			  	<h3>用户登录</h3>
				<form action="${pageContext.request.contextPath }/memberLogin.action" method="post">
				  <div>
					<span>邮箱<label>*</label></span>
					<input type="text" name="email"> 
				  </div>
				  <div>
					<span>密码<label>*</label></span>
					<input type="text" name="password"> 
				  </div>
				  <a class="forgot" href="#">忘记密码?</a>
				  <input type="submit" value="登录">
			    </form>
			   </div>	
			    <div class=" login-left">
			  	 <h3>新用户注册</h3>
				 <a class="acount-btn" href="register.html">注册新用户</a>
			   </div>
			 </div>
			
	</div>
	<div class="footer">
		<div class="footer-top">
			<div class="container">
				
			</div>
		</div>
		<div class="footer-bottom">
			<div class="container">
				
			</div>
		</div>
	</div>
</body>
</html>