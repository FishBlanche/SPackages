<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<title>U_demo | Log Management</title>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />
<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="${ctx}css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx}css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<!-- 小标题css -->
<link href="${ctx}css/style-metro.css" rel="stylesheet" type="text/css" />
<!-- buttom css -->
<link href="${ctx}css/style.css" rel="stylesheet" type="text/css" />
<link rel="stylesheet" href="${ctx}js/treetable/stylesheets/screen.css"
	media="screen" />
<link rel="stylesheet"
	href="${ctx}js/treetable/stylesheets/jquery.treetable.css" />
<link rel="stylesheet"
	href="${ctx}js/treetable/stylesheets/jquery.treetable.theme.default.css" />
<link rel="stylesheet" href="${ctx}ztree/css/zTreeStyle/zTreeStyle.css"
	type="text/css" />
<link rel="stylesheet" href="${ctx}ztree/css/demo.css" type="text/css" />
<link rel="stylesheet" type="text/css" media="all" href="${ctx}css/daterangepicker-bs3.css"/>
<style>
.input{height:30px}
		@media(min-width:460px){
    		.table{font-size:0.5em}
    	}
    	
    	@media(min-width:7640px){
    		.table{font-size:0.8em}
    	}
    	
    	@media(min-width:980px){
    		.table{font-size:1em}
    	}
    	
    	@media(min-width:1200px){
    		.table{font-size:1.2em}
    	}
 .table td{
		       font-size: 90%;
		}
</style>
</head>
<body class="page-header-fixed" style="background: #fff" id="rulebody">
	<!-- BEGIN HEADER -->
	<!-- END SIDEBAR -->
	<!-- BEGIN PAGE -->
	<div class="page-content" style="margin-left: 0px; padding-top: 1.5%;margin-top: 42px;">
		<!-- BEGIN PAGE CONTAINER-->
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">日志管理</h3>
					<ul class="breadcrumb">
						<li><i class="icon-home"></i> <a
							style="text-decoration: none" href="#">系统管理</a> <i
							class="icon-angle-right"></i></li>
						<li><a style="text-decoration: none" href="#">日志管理</a></li>
					</ul>
				</div>
			</div>
			<!-- END PAGE HEADER-->

			<div class="portlet box blue" id="rulelist">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-reorder"></i>日志列表
					</div>
					<div class="tools">
						<a href="javascript:;" class="collapse"></a> 
					</div>

				</div>
				<div class="portlet-body">
					<div class="clearfix">
						<div id="search">
							<!-- 					分页查询 -->
							<div id="search_left" style="float: left">
							    <span>操作时间：</span><img src="/inspection/image/ii.png" height=33px width=37px style="margin-top:-10px"/>
										<input type="text" style="height: 33px;width: 300px;margin-left:-5px;" name="reservation" id="reservationtime"
										class="form-control" value="${reservationtime}" />
								
								<input type="button" class="btn green" value="查询"
									onclick="javascript:searchLog();"
									style="margin-bottom: 8px; font-weight: 800"> <input
									type="button" class="btn green" value="清空输入框"
									onclick="javascript:clearInput();"
									style="margin-bottom: 8px; font-weight: 800">
							</div>
							<div id="search_right" style="float: right">
								<input type="button" class="btn green" value="清空日志"
									onclick="javascript:removeAllLog(event);"
									style="margin-bottom: 8px; font-weight: 800" /> <a
									href="javascript:;" class="collapse"></a> <a
									href="javascript:;" class="remove" style="margin-left: 10px;"></a>
							</div>
						</div>
					</div>
					<div id="sample_editable_1_filter" class="dataTables_filter">
						<table class="table table-striped table-hover table-bordered"
							id="sample_editable_1">
							<!-- 					<table id="example-advanced" class="list"> -->
							<thead>
								<tr>
									<th>用户名</th>
									<th>操作时间</th>
									<th>操作内容</th>
									<th>操作IP</th>
									<th>删除</th>
								</tr>
							</thead>
							<tbody>

								<c:forEach var="l" items="${loglist}" varStatus="i">
									<tr data-tt-id='${l.id }' name='${l.id }' value="${l.id }">
										<input type="hidden" value="${l.id }" />
										<td>${l.operate_name}</td>

										<td><fmt:formatDate value="${l.operate_time}" type="both" /></td>
										<td>${l.content}</td>
										<td>${l.operate_ip}</td>
										<td><a style="text-decoration: none" href="#"
											onclick="javascript:removeLog('${l.id}');"><i
												class="icon-remove-sign icon-large" title="删除"></i></a></td>
									</tr>
								</c:forEach>

							</tbody>
						</table>
					</div>
					<!-- 显示分页条 -->
					<div id="pager" style="text-align: right; margin-right: 10px;">
						<a href="${ctx}app/sysLogController/toJsp?logCurr=1"
							style="cursor: pointer; text-decoration: none;">首页</a> <a
							href="${ctx}app/sysLogController/toJsp?logCurr=${logCurr>1?logCurr-1:1}&reservationtime=${reservationtime}"
							style="cursor: pointer; text-decoration: none;"><img alt=""
							src="${ctx}image/pre.png"></a>
						<span class="label label-sm label-success" id="currPa"></span> <a
							href="${ctx}app/sysLogController/toJsp?logCurr=${logCurr<logAll?logCurr+1:logAll}&reservationtime=${reservationtime}"
							style="cursor: pointer; text-decoration: none;"><img alt=""
							src="${ctx}image/next.png"></a> <a
							href="${ctx}app/sysLogController/toJsp?logCurr=${logAll}&reservationtime=${reservationtime}"
							style="cursor: pointer; text-decoration: none;">尾页</a> <a
							style="cursor: pointer; text-decoration: none;"><span>共${logAll}页</span></a>
					</div>
				</div>
			</div>
		</div>


	</div>
	<script src="${ctx}js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="${ctx}js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${ctx}js/index.js" type="text/javascript"></script>
	<script src="${ctx}/js/treetable/vendor/jquery.js"></script>
	<script src="${ctx}/js/treetable/vendor/jquery-ui.js"></script>
	<script src="${ctx}/js/treetable/javascripts/src/jquery.treetable.js"></script>
	<script src="${ctx}js/app.js"></script>
	<script type="text/javascript" src="${ctx}js/moment.js"></script>
	<script type="text/javascript" src="${ctx}js/datetime.js"></script> 
	<%-- <script type="text/javascript"
		src="${ctx}/My97DatePicker/WdatePicker.js"></script> --%>
	<script>
		jQuery(document).ready(function() {
			App.init();
			document.getElementById("currPa").innerHTML = '${logCurr}';
		});
		$(document).ready(function() {
			$('#reservationtime').daterangepicker({
				timePicker: true,
				timePickerIncrement: 30,
				format: 'YYYY/MM/DD hh:mm:ss'
			},
			function(start, end, label) {
				console.log(start.toISOString(), end.toISOString(), label);
			});
		});
		$("#example-advanced").treetable({
			expandable : true
		});
		// Highlight selected row
		$("#example-advanced tbody").on("mousedown", "tr", function() {
			$(".selected").not(this).removeClass("selected");
			$(this).toggleClass("selected");
		});
		// Drag & Drop Example Code
		$("#example-advanced .file, #example-advanced .folder").draggable({
			helper : "clone",
			opacity : .75,
			refreshPositions : true,
			revert : "invalid",
			revertDuration : 300,
			scroll : true
		});

		$("#example-advanced .folder").each(
				function() {
					$(this).parents("#example-advanced tr").droppable(
							{
								accept : ".file, .folder",
								drop : function(e, ui) {
									var droppedEl = ui.draggable.parents("tr");
									$("#example-advanced").treetable("move",
											droppedEl.data("ttId"),
											$(this).data("ttId"));
								},
								hoverClass : "accept",
								over : function(e, ui) {
									var droppedEl = ui.draggable.parents("tr");
									if (this != droppedEl[0]
											&& !$(this).is(".expanded")) {
										$("#example-advanced").treetable(
												"expandNode",
												$(this).data("ttId"));
									}
								}
							});
				});

		//删除方法
		function removeLog(id) {
			if (confirm("confirm delete?")) {
				$.post('${ctx}app/sysLogController/deleteLog?id=' + id, "",
						function(result) {
							if (result) {
								location.reload();
							} else {
								alert("delete failed");
							}
						});
			}
		}

		//清空日志
		function removeAllLog(event) {
			if (confirm("confirm delete all？")) {
				$.post('${ctx}app/sysLogController/deleteAll/', "", function(
						result) {
					if (result) {
						location.reload();
					} else {
						alert("delete failed");
					}
				});
			}
		}

		//查询日志
		function searchLog() {
			var reservationtime = $("#reservationtime").val();
			if (reservationtime == "" || reservationtime == null) {
				alert("请输入时间");
				$("#reservationtime").focus();
				return false;
			}
			window.location.href = '${ctx}app/sysLogController/toJsp?reservationtime='
					+ reservationtime;
		}

		//清空输入框
		function clearInput() {
			// 			alert("clear");
			
			document.getElementById("reservationtime").value = "";
			window.location.href = '${ctx}app/sysLogController/toJsp';
		}
	</script>

</body>
</html>