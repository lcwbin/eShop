<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>会员注册</title>
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
				
				
				<div class="header-bottom-right">					
					<div class="account"><a href="login.html"><span> </span>个人中心</a></div>
						<ul class="login">
							<li><a href="login.html"><span> </span>登录</a></li> |
							<li ><a href="register.html">注册</a></li>
						</ul>
					<div class="cart"><a href="#"><span> </span>购物车</a></div>
				</div>
			</div>
		</div>
		
	</div>
	<!---->
	<div class="container">		
		
		<div class="register">
		  	  <form> 
				 <div class="  register-top-grid">
					<h3>会员注册</h3>
					<div class="mation">
						<span>用户名</span>
						<input type="text"> 
					
						<span>密码</span>
						<input type="text"> 
					 
						<span>确认密码</span>
						<input type="text"> 
					</div>
					 <div class="clearfix"> </div>
					   <a class="news-letter" href="#">
						 <label class="checkbox"><input type="checkbox" name="checkbox" checked=""><i> </i>Sign Up</label>
					   </a>
				 </div>
				     <div class="  register-bottom-grid">
							<div class="mation">
								<span>手机</span>
								<input type="text">
								<span>短信验证码</span>
								<input type="text">
							</div>
					 </div>
				</form>
				<div class="register-but">
				   <form>
					   <input type="submit" value="提交">
					   <div class="clearfix"> </div>
				   </form>
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