<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<!DOCTYPE HTML>
<html>
<!-- 
Template Name: Metronic - Responsive Admin Dashboard Template build with Twitter Bootstrap 3.0
Version: 1.5.2
Author: KeenThemes
Website: http://www.keenthemes.com/
Purchase: http://themeforest.net/item/metronic-responsive-admin-dashboard-template/4021469?ref=keenthemes
-->
<!--[if IE 8]> <html lang="en" class="ie8 no-js"> <![endif]-->
<!--[if IE 9]> <html lang="en" class="ie9 no-js"> <![endif]-->
<!--[if !IE]><!--> <!--<![endif]-->
<!-- BEGIN HEAD -->
<head>
<!--    <meta charset="utf-8" /> -->
   <title>登陆页面</title>
   <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
   <meta content="width=device-width, initial-scale=1.0" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />
   <meta name="MobileOptimized" content="320"/>
   <!-- BEGIN GLOBAL MANDATORY STYLES -->          
   <link href="${ctx}css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/bootstrap-rtl.min.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/uniform.default.css" rel="stylesheet" type="text/css"/>
   <!-- END GLOBAL MANDATORY STYLES -->
   <!-- BEGIN PAGE LEVEL STYLES --> 
   <link rel="stylesheet" type="text/css" href="${ctx}css/select2_metro_rtl.css" />
   <!-- END PAGE LEVEL SCRIPTS -->
   <!-- BEGIN THEME STYLES --> 
   <link href="${ctx}css/style-metronic-rtl.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/style-rtl.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/style-responsive-rtl.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/plugins-rtl.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/default-rtl.css" rel="stylesheet" type="text/css" id="style_color"/>
   <link href="${ctx}css/login-soft-rtl.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/custom-rtl.css" rel="stylesheet" type="text/css"/>
   <!-- END THEME STYLES -->
   <link rel="shortcut icon" href="${ctx}image/favicon.ico" />
   <script type="text/javascript">var ctx = '${ctx}';</script>
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="login" style="overflow-x:hidden">
   <!-- BEGIN LOGO -->
   <div class="logo">
<%--       <img src="${ctx}image/logo-big.png" alt="" />  --%>
   </div>
   <!-- END LOGO -->
   <!-- BEGIN LOGIN -->
   <div class="content">
      <!-- BEGIN LOGIN FORM -->
      <form id="login" class="login-form" action="index.html" method="post">
         <h3 class="form-title"  style="text-align:center;">用户登录</h3>
         <div class="alert alert-error hide">
            <button class="close" data-dismiss="alert"></button>
            <span></span>
         </div>
         <div class="form-group">
            <!--ie8, ie9 does not support html5 placeholder, so we just show field title for that-->
            <label class="control-label visible-ie8 visible-ie9">用户名</label>
            <div class="input-icon">
               <i class="icon-user"></i>
               <input class="form-control placeholder-no-fix" type="text" autocomplete="off" placeholder="用户名" name="userName" id="login_code"/>
            </div>
         </div>
         <div class="form-group">
            <label class="control-label visible-ie8 visible-ie9">密码</label>
            <div class="input-icon">
               <i class="icon-lock"></i>
               <input class="form-control placeholder-no-fix" type="password" autocomplete="off" placeholder="密   码" name="password"  id="login_password"/>
            </div>
         </div>
         <div class="form-actions">
            <label class="checkbox" style="float:left">
            <input type="checkbox" name="remember" value="1" id="saveCookie" onclick="getcheck()"/> 记住我
            </label>
            <button type="submit" class="btn blue pull-left" style="text-align:center;" >登录<i class="m-icon-swapright m-icon-white"></i>
            </button>            
         </div>

      </form>
      <!-- END LOGIN FORM -->        

   </div>
   <!-- END LOGIN -->
   <!-- BEGIN COPYRIGHT -->
   <div class="copyright">
      Copyright © 2015 苏州市职业大学. All Rights Reserved. 
   </div>
   <!-- END COPYRIGHT -->
   <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
   <!-- BEGIN CORE PLUGINS -->   
   <!--[if lt IE 9]>
   <script src="assets/plugins/respond.min.js"></script>
   <script src="assets/plugins/excanvas.min.js"></script> 
   <![endif]-->   
   <script src="${ctx}js/jquery-1.10.2.min.js" type="text/javascript"></script>
   <script src="${ctx}js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
   <script src="${ctx}js/bootstrap.min.js" type="text/javascript"></script>
   <script src="${ctx}js/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
   <script src="${ctx}js/jquery.slimscroll.min.js" type="text/javascript"></script>
   <script src="${ctx}js/jquery.blockui.min.js" type="text/javascript"></script>  
   <script src="${ctx}js/jquery.cookie.min.js" type="text/javascript"></script>
   <script src="${ctx}js/jquery.uniform.min.js" type="text/javascript" ></script>
   <!-- END CORE PLUGINS -->
   <!-- BEGIN PAGE LEVEL PLUGINS -->
   <script src="${ctx}/js/jquery.validate.min.js" type="text/javascript"></script>
   <script src="${ctx}/js/jquery.backstretch.min.js" type="text/javascript"></script>
   <script type="text/javascript" src="${ctx}/js/select2.min.js"></script>
   <!-- END PAGE LEVEL PLUGINS -->
   <!-- BEGIN PAGE LEVEL SCRIPTS -->
   <script src="${ctx}/js/app.js" type="text/javascript"></script>
   <script src="${ctx}/js/login-soft.js" type="text/javascript"></script>
   <script src="${ctx}/js/jquery.cookie.js" type="text/javascript"></script>
   <script src="${ctx}/js/jquery.base64.js" type="text/javascript"></script>
         
   <!-- END PAGE LEVEL SCRIPTS --> 
   <script>
      jQuery(document).ready(function() {     
        App.init();
        Login.init();
        
      });
   </script>
   <script>
   getCookie();
   function setCookie(){ //设置cookie
  	 var loginCode = $("#login_code").val(); //获取用户名信息
  	 var pwd = $("#login_password").val(); //获取登陆密码信息
  	 var checked = $("#saveCookie");//获取“是否记住密码”复选框
  	 if(checked && checked.length > 0){ //判断是否选中了“记住密码”复选框
  		$.cookie("login_code",loginCode);//调用jquery.cookie.js中的方法设置cookie中的用户名
  	 	$.cookie("pwd",$.base64.encode(pwd));//调用jquery.cookie.js中的方法设置cookie中的登陆密码，并使用base64（jquery.base64.js）进行加密
  	 }else{ 
  	    $.cookie("pwd", null); 
  	 }	
 	} 
  function getCookie(){ //获取cookie
	  	 var loginCode = $.cookie("login_code"); //获取cookie中的用户名
	  	 var pwd =  $.cookie("pwd"); //获取cookie中的登陆密码
	  	 if(pwd){//密码存在的话把“记住用户名和密码”复选框勾选住
	  		$("#saveCookie").attr("checked","true");
	  	 }
	  	 if(loginCode){//用户名存在的话把用户名填充到用户名文本框
	  		$("#login_code").val(loginCode);
	  	 }
	  	 if(pwd){//密码存在的话把密码填充到密码文本框
	  		$("#login_password").val($.base64.decode(pwd));
	  	 }
	}
  
  function getcheck(){
	  var x = document.getElementById('saveCookie').checked;
	  if(x==false){
		  console.log("删cookie");
	  }
	  else{
		  setCookie();
		  console.log("写cookie");
	  }
  }
  
  $(function(){
      $('#login_password').bind('keypress',function(event){
          if(event.keyCode == "13")    
          {
              	console.log('你输入的密码为：' + $('#login_password').val());
          		var data = $("#login").serialize();
				$.post(''+ctx+'app/loginController/login', data, function(result) {
					if (result.success) {
		                window.location.href = "index.jsp";
					} else {
						alert("用户名或密码错误");
					}
				}, "JSON");
          }
      });
  });
   </script>
   <!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>