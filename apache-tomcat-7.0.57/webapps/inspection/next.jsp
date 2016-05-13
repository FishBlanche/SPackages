<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<!DOCTYPE HTML>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>

<title>u_demo | 模板</title>
<meta http-equiv="X-UA-Compatible" content="IE=edge" />
<meta content="width=device-width, initial-scale=1.0" name="viewport"/>
<meta content="" name="description"/>
<meta content="" name="author"/>
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="${ctx}css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}css/next/simple-line-icons.min.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}css/next/bootstrap.min.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}css/uniform.default.css" rel="stylesheet" type="text/css"/>
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link href="${ctx}css/next/select2.css" rel="stylesheet" type="text/css"/>
<!-- END PAGE LEVEL SCRIPTS -->
<!-- BEGIN THEME STYLES -->
<link href="${ctx}css/next/components.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}css/next/plugins.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}css/next/layout.css" rel="stylesheet" type="text/css"/>
<link href="${ctx}css/next/default.css" rel="stylesheet" type="text/css"/>
<!-- END THEME STYLES -->

</head>
<body class="page-header-fixed ">
<!-- BEGIN HEADER -->
<div class="page-header navbar navbar-fixed-top">
	<!-- BEGIN HEADER INNER -->
	<div class="page-header-inner">
		<!-- BEGIN LOGO -->

		<!-- END LOGO -->
		<!-- BEGIN RESPONSIVE MENU TOGGLER -->
		<div class="menu-toggler responsive-toggler" data-toggle="collapse" data-target=".navbar-collapse">
		</div>
		<!-- END RESPONSIVE MENU TOGGLER -->
		<!-- BEGIN TOP NAVIGATION MENU -->
		
		<!-- END TOP NAVIGATION MENU -->
	</div>
	<!-- END HEADER INNER -->
</div>
<!-- END HEADER -->
<div class="clearfix">
</div>
<!-- BEGIN CONTAINER -->
<div class="page-container">
	<!-- BEGIN SIDEBAR -->
	
	<!-- END SIDEBAR -->
	<!-- BEGIN CONTENT -->
	<div class="page-content-wrapper">
		<div class="page-content">
			<!-- BEGIN SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			
			<!-- /.modal -->
			<!-- END SAMPLE PORTLET CONFIGURATION MODAL FORM-->
			<!-- BEGIN STYLE CUSTOMIZER -->
			
			<!-- END STYLE CUSTOMIZER -->
			<!-- BEGIN PAGE HEADER-->
			
			<!-- END PAGE HEADER-->
			<!-- BEGIN PAGE CONTENT-->
			<div class="row">
				<div class="col-md-12">
					<div class="portlet box blue" id="form_wizard_1">
						<div class="portlet-title">
							<div class="caption">
								<i class="fa fa-gift"></i> 安装/配置 - <span class="step-title">
								Step 1 of 4 </span>
							</div>
							<div class="tools hidden-xs">
								<a href="javascript:;" class="collapse">
								</a>
								<a href="#portlet-config" data-toggle="modal" class="config">
								</a>
								<a href="javascript:;" class="reload">
								</a>
								<a href="javascript:;" class="remove">
								</a>
							</div>
						</div>
						<div class="portlet-body form">
							<form action="#" class="form-horizontal" id="submit_form">
								<div class="form-wizard">
									<div class="form-body">
										<ul class="nav nav-pills nav-justified steps">
											<li>
												<a href="#tab1" data-toggle="tab" class="step">
												<span class="number">
												1 </span>
												<span class="desc">
												<i class="fa fa-check"></i> 步骤一 </span>
												</a>
											</li>
											<li>
												<a href="#tab2" data-toggle="tab" class="step">
												<span class="number">
												2 </span>
												<span class="desc">
												<i class="fa fa-check"></i> 步骤二 </span>
												</a>
											</li>
											<li>
												<a href="#tab3" data-toggle="tab" class="step active">
												<span class="number">
												3 </span>
												<span class="desc">
												<i class="fa fa-check"></i> 步骤三 </span>
												</a>
											</li>
											<li>
												<a href="#tab4" data-toggle="tab" class="step">
												<span class="number">
												4 </span>
												<span class="desc">
												<i class="fa fa-check"></i> 完成 </span>
												</a>
											</li>
										</ul>
										<div id="bar" class="progress progress-striped" role="progressbar">
											<div class="progress-bar progress-bar-success">
											</div>
										</div>
										<div class="tab-content">
											<div class="alert alert-danger display-none">
												<button class="close" data-dismiss="alert"></button>
												您有信息填写错误，请查看！
											</div>
											<div class="alert alert-success display-none">
												<button class="close" data-dismiss="alert"></button>
												您填写成功！
											</div>
											<div class="tab-pane active" id="tab1">
												<h3 class="block">步骤一：请填写</h3>
												<div class="form-group">
													<label class="control-label col-md-3">用户名 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="text" class="form-control" name="username"/>
														<span class="help-block">
														请填写用户名 </span>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">密码 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="password" class="form-control" name="password" id="submit_form_password"/>
														<span class="help-block">
														请填写密码 </span>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">再次输入密码 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="password" class="form-control" name="rpassword"/>
														<span class="help-block">
														请再次输入密码 </span>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">邮箱地址 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="text" class="form-control" name="email"/>
														<span class="help-block">
														请填写邮箱地址 </span>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab2">
												<h3 class="block">步骤二：请填写</h3>
												<div class="form-group">
													<label class="control-label col-md-3">姓名 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="text" class="form-control" name="fullname"/>
														<span class="help-block">
														请填写姓名 </span>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">电话号码 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="text" class="form-control" name="phone"/>
														<span class="help-block">
														请填写电话号码 </span>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">性别 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<div class="radio-list">
															<label>
															<input type="radio" name="gender" value="M" data-title="Male"/>
															男 </label>
															<label>
															<input type="radio" name="gender" value="F" data-title="Female"/>
															女 </label>
														</div>
														<div id="form_gender_error">
														</div>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">地址 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="text" class="form-control" name="address"/>
														<span class="help-block">
														请填写家庭地址 </span>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">城镇 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="text" class="form-control" name="city"/>
														<span class="help-block">
														请填写城镇 </span>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">国家</label>
													<div class="col-md-4">
														<select name="country" id="country_list" class="form-control">
															<option value=""></option>
															<option value="AF">中国</option>
														</select>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">备注</label>
													<div class="col-md-4">
														<textarea class="form-control" rows="3" name="remarks"></textarea>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab3">
												<h3 class="block">步骤三：请填写</h3>
												<div class="form-group">
													<label class="control-label col-md-3">临时文件目录 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="text" class="form-control" name="card_name"/>
														<span class="help-block">
														</span>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">校验字节 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="text" class="form-control" name="card_number"/>
														<span class="help-block">
														</span>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">备份数 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="text" placeholder="" class="form-control" name="card_cvc"/>
														<span class="help-block">
														</span>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">最小文件块 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<input type="text" placeholder="最小文件块大小" maxlength="7" class="form-control" name="card_expiry_date"/>
														<span class="help-block">
														1M </span>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">安全设置 <span class="required">
													* </span>
													</label>
													<div class="col-md-4">
														<div class="checkbox-list">
															<label>
															<input type="checkbox" name="payment[]" value="1" data-title="黑名单"/> 黑名单 </label>
															<label>
															<input type="checkbox" name="payment[]" value="2" data-title="白名单"/> 白名单 </label>
														</div>
														<div id="form_payment_error">
														</div>
													</div>
												</div>
											</div>
											<div class="tab-pane" id="tab4">
												<h3 class="block">你选择的配置</h3>
												<h4 class="form-section">步骤一</h4>
												<div class="form-group">
													<label class="control-label col-md-3">用户名:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="username">
														</p>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">邮箱地址:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="email">
														</p>
													</div>
												</div>
												<h4 class="form-section">步骤二</h4>
												<div class="form-group">
													<label class="control-label col-md-3">名字:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="fullname">
														</p>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">性别:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="gender">
														</p>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">电话号码:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="phone">
														</p>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">地址:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="address">
														</p>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">乡镇:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="city">
														</p>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">国家:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="country">
														</p>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">备注:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="remarks">
														</p>
													</div>
												</div>
												<h4 class="form-section">步骤三</h4>
												<div class="form-group">
													<label class="control-label col-md-3">临时文件目录:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="card_name">
														</p>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">校验字节:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="card_number">
														</p>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">备份数:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="card_cvc">
														</p>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">最小文件块:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="card_expiry_date">
														</p>
													</div>
												</div>
												<div class="form-group">
													<label class="control-label col-md-3">安全设置:</label>
													<div class="col-md-4">
														<p class="form-control-static" data-display="payment">
														</p>
													</div>
												</div>
											</div>
										</div>
									</div>
									<div class="form-actions fluid">
										<div class="row">
											<div class="col-md-12">
												<div class="col-md-offset-3 col-md-9">
													<a href="javascript:;" class="btn default button-previous">
													<i class="m-icon-swapleft"></i> 上一步 </a>
													<a href="javascript:;" class="btn blue button-next">
													下一步 <i class="m-icon-swapright m-icon-white"></i>
													</a>
													<a href="javascript:;" class="btn green button-submit">
													完成 <i class="m-icon-swapright m-icon-white"></i>
													</a>
												</div>
											</div>
										</div>
									</div>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTENT-->
		</div>
	</div>
	<!-- END CONTENT -->
</div>
<!-- END CONTAINER -->
<!-- BEGIN FOOTER -->
<div class="page-footer">

	<div class="page-footer-tools">
		<span class="go-top">
		<i class="icon-angle-up icon-large"></i>
		</span>
	</div>
</div>
<!-- END FOOTER -->
<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
<!-- BEGIN CORE PLUGINS -->
<!--[if lt IE 9]>
<script src="../../assets/global/plugins/respond.min.js"></script>
<script src="../../assets/global/plugins/excanvas.min.js"></script> 
<![endif]-->
<script src="${ctx}js/jquery-1.10.2.min.js" type="text/javascript"></script>
<script src="${ctx}js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="${ctx}css/next/bootstrap.min.js" type="text/javascript"></script>
<script src="${ctx}css/next/bootstrap-hover-dropdown.min.js" type="text/javascript"></script>
<script src="${ctx}js/jquery.slimscroll.min.js" type="text/javascript"></script>
<script src="${ctx}js/jquery.blockui.min.js" type="text/javascript"></script>
<script src="${ctx}css/next/jquery.cokie.min.js" type="text/javascript"></script>
<script src="${ctx}js/jquery.uniform.min.js" type="text/javascript"></script>
<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="${ctx}js/jquery.validate.min.js" type="text/javascript"></script>
<script src="${ctx}js/additional-methods.min.js" type="text/javascript"></script>
<script src="${ctx}css/next/jquery.bootstrap.wizard.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script src="${ctx}js/select2.min.js" type="text/javascript"></script>
<!-- END PAGE LEVEL PLUGINS -->
<!-- BEGIN PAGE LEVEL SCRIPTS -->
<script src="${ctx}css/next/metronic.js" type="text/javascript"></script>
<script src="${ctx}css/next/layout.js" type="text/javascript"></script>
<script src="${ctx}css/next/form-wizard.js" type="text/javascript"></script>
<!-- END PAGE LEVEL SCRIPTS -->
<script>
jQuery(document).ready(function() {       
   // initiate layout and plugins
   Metronic.init(); // init metronic core components
Layout.init(); // init current layout
   FormWizard.init();
});
</script>
<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>