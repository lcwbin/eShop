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
<script src="${pageContext.request.contextPath }/js/angular.min.js"></script>
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
		  	  <form ng-app="myApp" name="register_Form" ng-submit="registerForm()" ng-controller="validateFiled" novalidate> 
				 <div class="  register-top-grid">
					<h3>会员注册</h3>
					<div class="mation">
						<span>用户名</span>
						<input type="text" name="username" ng-model="member.username" required> 
						<span style="color:red" ng-show="register_Form.username.$dirty && register_Form.username.$invalid || register_Form.submitted">
  							<span ng-show="register_Form.username.$error.required">请填写你的用户名</span>
						</span>
					
						<span>密码</span>
						<input type="password" name="password" ng-model="member.password" required> 
						<span style="color:red" ng-show="register_Form.password.$dirty && register_Form.password.$invalid || register_Form.submitted">
  							<span ng-show="register_Form.password.$error.required">请填写你的密码</span>
						</span>
					 
						<span>确认密码</span>
						<input type="password" name="confirmPassword" ng-model="confirmPassword" required> 
						<span style="color:red" ng-show="register_Form.confirmPassword.$dirty && register_Form.confirmPassword.$invalid || register_Form.submitted">
  							<span ng-show="register_Form.confirmPassword.$error.required">请填写你的密码</span>
						</span> 
						
						<span>邮箱</span>
						<input type="email" name="email" ng-model="member.email" required> 
						<span style="color:red" ng-show="register_Form.email.$dirty &&register_Form.email.$invalid || register_Form.submitted">
						  	<span ng-show="register_Form.email.$error.required">请填写你的邮箱地址</span>
						  	<span ng-show="register_Form.email.$error.email">邮箱格式不正确</span>
						</span> 
					</div>	
					<div class="register-but">
					   <input type="submit" value="提交">
					   <div class="clearfix"> </div>
					</div>	
					
					 <pre>
				        {{ member }}
				    </pre>							    
				</form>
				
				<script type="text/javascript">
					var app = angular.module("myApp", []);
					
					app.controller('validateFiled', ['$scope','$http', function($scope,$http) {
						$scope.member = {};
				        $scope.submitted = false;
				        $scope.registerForm = function() {
				            if ($scope.register_Form.$valid) {
				            	$http.post('addMembers.action', $scope.member.username).success(function(data){
				            		alert(data);
				            	});
				            } else {
				                $scope.register_Form.submitted = true;				            	
				            }
				        }
				    }]);
				</script>
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