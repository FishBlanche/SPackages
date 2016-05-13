<%@ page language="java" contentType="text/html; charset=UTF-8"    pageEncoding="UTF-8"%><%@ include file="/common/header.jsp"%><!DOCTYPE html><html ><head>	<title>项目名    |   用户管理</title>	<meta content="width=device-width, initial-scale=1.0" name="viewport" />	<meta content="" name="description" />	<meta content="" name="author" />	<!-- BEGIN GLOBAL MANDATORY STYLES -->	<link href="${ctx}css/bootstrap.min.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/font-awesome.min.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/style-metro.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/style.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/style-responsive.css" rel="stylesheet" type="text/css"/>	<link href="${ctx}css/default.css" rel="stylesheet" type="text/css" id="style_color"/>	<link href="${ctx}css/uniform.default.css" rel="stylesheet" type="text/css"/>	<!-- END GLOBAL MANDATORY STYLES -->	<!-- BEGIN PAGE LEVEL STYLES -->	<link rel="stylesheet" type="text/css" href="${ctx}css/select2_metro.css" />	<link rel="stylesheet" href="${ctx}css/DT_bootstrap.css" />	<!-- END PAGE LEVEL STYLES -->	<link rel="shortcut icon" href="${ctx}image/favicon.ico" />	<link rel="stylesheet" href="${ctx}ztree/css/zTreeStyle/zTreeStyle.css" type="text/css"/>	<link rel="stylesheet" href="${ctx}ztree/css/demo.css" type="text/css"/>	<style >		.input{height:30px}		@media(min-width:460px){    		.table{font-size:0.5em}    	}    	    	@media(min-width:7640px){    		.table{font-size:0.8em}    	}    	    	@media(min-width:980px){    		.table{font-size:1em}    	}    	    	@media(min-width:1200px){    		.table{font-size:1.2em}    	}    	 .table td{		       font-size: 90%;		}	</style></head><!-- END HEAD --><!-- BEGIN BODY --><body class="page-header-fixed" style="background-color:#fff">	<!-- BEGIN CONTAINER -->	<div class="page-content" style="margin-left:0px;padding-top:1.5%;margin-top:42px;">		<!-- BEGIN PAGE -->		<div class="container-fluid">				<div class="row-fluid">					<div class="span12">						<!-- BEGIN PAGE TITLE & BREADCRUMB-->						<h3 class="page-title">							用户管理						</h3>						<ul class="breadcrumb">							<li>								<i class="icon-home"></i>								<a style="text-decoration:none" href="#">系统管理</a> 								<i class="icon-angle-right"></i>							</li>								<li><a style="text-decoration:none" href="#">用户管理</a></li>						</ul>						<!-- END PAGE TITLE & BREADCRUMB-->					</div>				</div>										<div class="portlet box blue">							<div class="portlet-title">								<div class="caption"><i class="icon-edit"></i>用户列表</div>								<div class="tools">									<a href="javascript:;" class="collapse"></a>																	</div>							</div>							<div class="portlet-body">								<div class="clearfix">									<div class="btn-group">										<button id="sample_editable_1_new" class="btn green">										添加用户 <i class="icon-plus"></i>										</button>									</div>									<div class="btn-group"  style="display: none;">									<a href="#UserModal" role="button" class="btn" data-toggle="modal"   id="accreditUser" >授权</a> 									</div>								</div>								<table class="table table-striped table-hover table-bordered" id="sample_editable_1">									<thead>										<tr>											<th>用户名</th>											<th>密码</th>											<th>授权</th>											<th>编辑</th>											<th>删除</th>										</tr>									</thead>									<tbody>										<c:forEach var="l" items="${list}" varStatus="statusName">											<tr class="">											    <input type="hidden" value="${l.userid }" />												<td>${l.userName}</td>												<td class="hidden-480">******</td>												<td><a style="text-decoration:none" class="accredit" href="javascript:accredit('${l.userid}');"><i class="icon-user icon-large" title="授权"></i></a></td>												<td><a style="text-decoration:none" class="edit" href="javascript:;"><i class="icon-edit icon-large" title="编辑"></i></a></td>												<td><a style="text-decoration:none" class="delete" href="javascript:;"><i class="icon-remove-sign icon-large"  title="删除"></i></a></td>											</tr>										</c:forEach> 									</tbody>								</table>							</div>						</div>						<!-- END EXAMPLE TABLE PORTLET-->												        <!-- 授权页面 -->				       <div id="UserModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 450px;margin-top: 10%;">  				            <div class="modal-header" style="margin-left: 5%;">  				                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>  				                <h3 id="myModalLabel" style="font-weight: 600;">用户授权</h3>  				            </div>  				            <div class="modal-body" style="margin-left: 10%;">  									<ul id="RoleTree" class="ztree" style="width:335px;margin-left:-10px"></ul>				            </div>  				            <div class="modal-footer">  				                <button class="btn" data-dismiss="modal" aria-hidden="true" id="closeGrantBtn">关闭</button>  				                <button class="btn btn-primary"  onclick="grant();">保存</button>  				            </div>  				        </div>				        				        <div style="display: none">				        	<form id="grantForm" method="post" >				        		<input id="ids"  name="ids"  type="hidden"/>				        		<input id="roleIds"  name="roleIds"  type="hidden"/>				        	</form>				        </div>					</div></div>	<!-- END CONTAINER -->	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->	<!-- BEGIN CORE PLUGINS -->	<script src="${ctx}js/jquery-1.10.2.min.js" type="text/javascript"></script>	<script src="${ctx}js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->	<script src="${ctx}js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      	<script src="${ctx}js/bootstrap.min.js" type="text/javascript"></script>	<!--[if lt IE 9]>	<script src="${ctx}js/excanvas.min.js"></script>	<script src="${ctx}js/respond.min.js"></script>  	<![endif]-->   	<script src="${ctx}js/jquery.slimscroll.min.js" type="text/javascript"></script>	<script src="${ctx}js/jquery.blockui.min.js" type="text/javascript"></script>  	<script src="${ctx}js/jquery.cookie.min.js" type="text/javascript"></script>	<script src="${ctx}js/jquery.uniform.min.js" type="text/javascript" ></script>	<!-- END CORE PLUGINS -->	<!-- BEGIN PAGE LEVEL PLUGINS -->	<script type="text/javascript" src="${ctx}js/select2.min.js"></script>	<script type="text/javascript" src="${ctx}js/jquery.dataTables.js"></script>	<script type="text/javascript" src="${ctx}js/DT_bootstrap.js"></script>	<!-- END PAGE LEVEL PLUGINS -->	<!-- BEGIN PAGE LEVEL SCRIPTS -->	<script src="${ctx}js/app.js"></script>	<script src="${ctx}js/table-editable.js"></script>    	<script>	var abc = '${pageContext.request.contextPath}/';		jQuery(document).ready(function() {       		   App.init();		   TableEditable.init();		});	</script><!-- END BODY --><script type="text/javascript">var _gaq = _gaq || [];_gaq.push([ "_setAccount", "UA-37564768-1" ]);_gaq.push([ "_setDomainName", "keenthemes.com" ]);_gaq.push([ "_setAllowLinker", true ]);_gaq.push([ "_trackPageview" ]);(function() {    var ga = document.createElement("script");    ga.type = "text/javascript";    ga.async = true;    ga.src = ("https:" == document.location.protocol ? "https://" :"http://") + "stats.g.doubleclick.net/dc.js";    var s = document.getElementsByTagName("script")[0];    s.parentNode.insertBefore(ga, s);})();</script><script type="text/javascript" src="${ctx }ztree/js/jquery.ztree.core-3.5.js"></script><script type="text/javascript" src="${ctx }ztree/js/jquery.ztree.excheck-3.5.js"></script><script type="text/javascript" >//打开授权页面	//以下是处理授权部分的js		var setting_sq = {			check: {				enable: true			},			data: {				simpleData: {					enable: true				}			}		};				var resource = new Array();		var user_id;		function accredit(id){					user_id = id;				resource.length = 0;				$.post("${ctx}app/sysUserController/getAllToJson/"+id,"",function(data){					if(data!=null){						var list = data;						for(var i=0;i<list.length;i++){							if(list.parent_id==''){								list.parent_id = 0;							}							//判断是否已经被授权							if(list[i].is_check){								resource.push({'id':list[i].id,'pId':list[i].parent_id,'name':list[i].name,open:true,checked:true});							}else{								resource.push({'id':list[i].id,'pId':list[i].parent_id,'name':list[i].name,open:true,checked:false});							}													}						//先清空						document.getElementById("RoleTree").innerHTML="";						$.fn.zTree.init($("#RoleTree"), setting_sq, resource);					}				},'json'); 					 document.getElementById("accreditUser").click();		}					function grant(){		var ids = "";		var zTree = $.fn.zTree.getZTreeObj("RoleTree");		var checkCount = zTree.getCheckedNodes(true);		for(var i=0;i<checkCount.length;i++){			ids+=checkCount[i].id+",";		}		$("#ids").val(user_id);		$("#roleIds").val(ids);	  	var data = $("#grantForm").serialize();		$.post('${ctx}app/sysUserController/grant', data, function(result) {			if (result) {				$("#closeGrantBtn").click();				alert("授权成功");				return true;			} else {				alert("授权失败");				return false;			}		}, "JSON");	}</script></body></html>