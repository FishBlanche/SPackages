<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%><%@ include file="/common/header.jsp"%><!DOCTYPE HTML><html><head>	<title>项目名    |   用户信息</title>	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">	<meta content="width=device-width, initial-scale=1.0" name="viewport" />	<meta content="" name="description" />	<meta content="" name="author" />	<!-- BEGIN GLOBAL MANDATORY STYLES -->	<link href="${ctx}css/bootstrap.min.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/font-awesome.min.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/style-metro.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/style.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/style-responsive.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/default.css" rel="stylesheet" type="text/css" id="style_color"/>	<link href="${ctx}css/uniform.default.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/bootstrap-fileupload.css" rel="stylesheet" type="text/css" />	<link href="${ctx}css/chosen.css" rel="stylesheet" type="text/css" />	<link href="${ctx}css/profile.css" rel="stylesheet" type="text/css" />	<!-- END PAGE LEVEL STYLES -->	<link rel="shortcut icon" href="${ctx}image/favicon.ico" /></head><body class="page-header-fixed" style="background-color:#fff">	<!-- BEGIN CONTAINER -->   		<!-- BEGIN PAGE -->		<div class="page-content" style="margin-left:0px;margin-top:42px">			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->			<div id="portlet-config" class="modal hide">			</div>			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->			<!-- BEGIN PAGE CONTAINER-->			<div class="container-fluid">				<!-- BEGIN PAGE HEADER-->				<div class="row-fluid">					<div class="span12">						<!-- BEGIN PAGE TITLE & BREADCRUMB-->						<h3 class="page-title">							用户信息						</h3>						<ul class="breadcrumb">							<li>								<i class="icon-home"></i>								<a href="d_part1.jsp">初始页</a> 								<i class="icon-angle-right"></i>							</li>							<li>								<a href="#">demo3</a>								<i class="icon-angle-right"></i>							</li>							<li><a href="#">表单1</a></li>						</ul>						<!-- END PAGE TITLE & BREADCRUMB-->					</div>				</div>				<!-- END PAGE HEADER-->				<!-- BEGIN PAGE CONTENT-->				<div class="row-fluid profile">					<div class="span12">						<!--BEGIN TABS-->						<div class="tabbable tabbable-custom tabbable-full-width">							<ul class="nav nav-tabs">								<li  class="active"><a href="#tab_1_1" data-toggle="tab">个人信息</a></li>								<li><a href="#tab_1_2" data-toggle="tab">修改信息</a></li>							</ul>							<div class="tab-content">								<!--end tab-pane-->								<div class="tab-pane profile-classic row-fluid active" id="tab_1_1">									<div class="span2"><img src="${ctx}image/profile-img.png" alt="" /></div>									<ul class="unstyled span10">										<li><span>用户名:</span>test</li>										<li><span>姓:</span>某</li>										<li><span>名:</span>帅哥</li>										<li><span>国家:</span>布吉岛</li>										<li><span>生日:</span>19XX.XX.XX</li>										<li><span>Email:</span> <a href="#">XXX@XXX</a></li>										<li><span>手机号码:</span>XXXXXX</li>										<li><span>其他:</span>占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！占位符！</li>									</ul>								</div>								<!--tab_1_1-->								<div class="tab-pane row-fluid profile-account" id="tab_1_2">									<div class="row-fluid">										<div class="span12">											<div class="span3">												<ul class="ver-inline-menu tabbable margin-bottom-10">													<li class="active">														<a data-toggle="tab" href="#tab_1-1">														<i class="icon-cog"></i>修改基本信息 </a>														<span class="after"></span>                                    													</li>													<li class=""><a data-toggle="tab" href="#tab_2-2"><i class="icon-picture"></i>修改头像</a></li>													<li class=""><a data-toggle="tab" href="#tab_3-3"><i class="icon-lock"></i>修改密码</a></li>												</ul>											</div>											<div class="span9">												<div class="tab-content">													<div id="tab_1-1" class="tab-pane active">														<div style="height: auto;" id="accordion1-1" class="accordion collapse">															<form action="#">																<label class="control-label">姓</label>																<input type="text" placeholder="某" class="m-wrap span8" />																<label class="control-label">名</label>																<input type="text" placeholder="帅哥" class="m-wrap span8" />																<label class="control-label">手机号</label>																<input type="text" placeholder="XXXXX" class="m-wrap span8" />																<label class="control-label">邮箱</label>																<input type="text" placeholder="XXX@XXX" class="m-wrap span8" />																																<label class="control-label">其他</label>																<textarea class="span8 m-wrap" rows="3"></textarea>																<div class="submit-btn">																	<a href="#" class="btn green">保存</a>																	<a href="#" class="btn">取消</a>																</div>															</form>														</div>													</div>													<div id="tab_2-2" class="tab-pane">														<div style="height: auto;" id="accordion2-2" class="accordion collapse">															<form action="#">																<div class="controls"><!-- 																	<div class="thumbnail" style="width: 291px; height: 170px;"> --><%-- 																		<img src="${ctx}image/AAAAAA&amp;text=no+image" alt="" /> --%><!-- 																	</div> -->																</div>																<div class="space10"></div>																<div class="fileupload fileupload-new" data-provides="fileupload">																	<div class="input-append">																		<div class="uneditable-input">																			<i class="icon-file fileupload-exists"></i> 																			<span class="fileupload-preview"></span>																		</div>																		<span class="btn btn-file">																		<span class="fileupload-new">选择文件</span>																		<span class="fileupload-exists">修改</span>																		<input type="file" class="default" />																		</span>																		<a href="#" class="btn fileupload-exists" data-dismiss="fileupload">删除</a>																	</div>																</div>																<div class="clearfix"></div>																<div class="space10"></div>																<div class="submit-btn">																	<a href="#" class="btn green">提交</a>																	<a href="#" class="btn">取消</a>																</div>															</form>														</div>													</div>													<div id="tab_3-3" class="tab-pane">														<div style="height: auto;" id="accordion3-3" class="accordion collapse">															<form action="#">																<label class="control-label">原密码</label>																<input type="password" class="m-wrap span8" />																<label class="control-label">新密码</label>																<input type="password" class="m-wrap span8" />																<label class="control-label">确认新密码</label>																<input type="password" class="m-wrap span8" />																<div class="submit-btn">																	<a href="#" class="btn green">修改密码</a>																	<a href="#" class="btn">取消</a>																</div>															</form>														</div>													</div>												</div>											</div>											<!--end span9-->                                   										</div>									</div>								</div>							</div>						</div>						<!--END TABS-->					</div>				</div>				<!-- END PAGE CONTENT-->			</div>			<!-- END PAGE CONTAINER--> 		</div>		<!-- END PAGE -->    	<!-- END CONTAINER -->	<script src="${ctx}js/jquery-1.10.2.min.js" type="text/javascript"></script>	<script src="${ctx}js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>	<script src="${ctx}js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      	<script src="${ctx}js/bootstrap.min.js" type="text/javascript"></script>	<!--[if lt IE 9]>	<script src="${ctx}js/excanvas.min.js"></script>	<script src="${ctx}js/respond.min.js"></script>  	<![endif]-->   	<script src="${ctx}js/jquery.blockui.min.js" type="text/javascript"></script>  	<script src="${ctx}js/jquery.cookie.min.js" type="text/javascript"></script>	<script src="${ctx}js/jquery.uniform.min.js" type="text/javascript" ></script>	<script type="text/javascript" src="${ctx}js/bootstrap-fileupload.js"></script>	<script type="text/javascript" src="${ctx}js/chosen.jquery.min.js"></script>	<script src="${ctx}js/app.js"></script>      	<script>		jQuery(document).ready(function() {       		   // initiate layout and plugins		   App.init();		});	</script></body><!-- END BODY --></html>