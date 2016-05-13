<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<!DOCTYPE html>
<html >
<head>
	<title>项目名    |  教师出勤信息管理</title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta content="" name="description" />
	<meta content="" name="author" />

	<!-- BEGIN GLOBAL MANDATORY STYLES -->
	<link href="${ctx}css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/style.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="${ctx}css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link rel="stylesheet" type="text/css" href="${ctx}css/select2_metro.css" />
	<link rel="stylesheet" href="${ctx}css/DT_bootstrap.css" />
	<!-- END PAGE LEVEL STYLES -->
	<link rel="shortcut icon" href="${ctx}image/favicon.ico" />
	<link rel="stylesheet" href="${ctx}ztree/css/zTreeStyle/zTreeStyle.css" type="text/css"/>
	<link rel="stylesheet" href="${ctx}ztree/css/demo.css" type="text/css"/>
	<link rel="stylesheet" type="text/css" media="all" href="${ctx}css/daterangepicker-bs3.css"/>
	<style >
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
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="page-header-fixed" style="background-color:#fff">
	<!-- BEGIN CONTAINER -->
	<div class="page-content" style="margin-left:0px;padding-top:1.5%;margin-top:42px;">
		<!-- BEGIN PAGE -->
		<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->
						<h3 class="page-title">
							教师出勤信息管理
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a style="text-decoration:none" href="#">教师出勤信息管理</a> 
							</li>	
							
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
		
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-edit"></i>教师出勤信息列表</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body">	
								<div id="sample_editable_1_filter" class="dataTables_filter">
									<div id="searchbtn" >
										<span>教师姓名：</span> <input type="text" id="teacher_name"
											name="teacher_name" value="${teacher_name}"
											style="width: 150px; height: 33px;" />
		
										<span>授课时间：</span><img src="/inspection/image/ii.png" height=33px width=37px style="margin-top:-10px"/>
										<input type="text" style="height: 33px;width: 300px;margin-left:-5px;" name="reservation" id="reservationtime"
										class="form-control" value="${reservationtime}" />
										<span>出勤情况：</span> 								
										<select id="isWork"
											name="isWork" style="width: 67px; height: 33px;margin-bottom:5px">
											<option value="2" selected="selected">全部</option>
											<option value="1" >出勤</option>
											<option value="0" >缺席</option></select>
										<input type="button" class="btn green" value="查询"
											onclick="javascript:search();"
											style="margin-bottom: 10px; margin-left: 5px; font-weight: bold; font-size: 15">
										<input type="button" class="btn green" value="清除"
											onclick="javascript:clearInput();"
											style="margin-bottom: 10px; margin-left: 5px; font-weight: bold; font-size: 15">
									    <input type="button" class="btn green" value="导出"
									        onclick="javascript:uploadFile();"  
									        style="margin-bottom: 10px; margin-left: 5px; font-weight: bold; font-size: 15">
									</div>
						        </div>	
						        <form id="form1" method="post" action="">					
								<table class="table table-striped table-hover table-bordered" id="sample_editable_1">
									<thead>
										<tr>
											<th>教师姓名</th>
											<th>授课班级</th>
											<th>课程名</th>
											<th>授课时间</th>
											<th>出勤情况</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="l" items="${list}" varStatus="statusName">
											<tr class="">
											    <input type="hidden" value="${l.id }" />
												<td>${l.teacherName}</td>
												<td >${l.className}</td>
												<td>${l.courseName}</td>
												<td><fmt:formatDate value="${l.gTime}" type="both" /></td>
												<td><c:if test="${l.isWork==1}">出勤</c:if>
									                <c:if test="${l.isWork==0}">缺席</c:if></td>
											</tr>
										</c:forEach> 
									</tbody>
								</table>
								</form>
							</div>
						</div>		     
					</div>
</div>
	<!-- END CONTAINER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<%-- <script type="text/javascript"
		src="${ctx}My97DatePicker/WdatePicker.js"></script> --%>
	<script src="${ctx}js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="${ctx}js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="${ctx}js/bootstrap.min.js" type="text/javascript"></script>
	
	<script src="${ctx}js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="${ctx}js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.uniform.min.js" type="text/javascript" ></script>
	<script type="text/javascript" src="${ctx}js/moment.js"></script>
	<script type="text/javascript" src="${ctx}js/datetime.js"></script> 
	<script type="text/javascript" src="${ctx}js/select2.min.js"></script>
	<script type="text/javascript" src="${ctx}js/jquery.dataTables.js"></script>
	<script type="text/javascript" src="${ctx}js/DT_bootstrap.js"></script>
	<!-- END PAGE LEVEL PLUGINS -->
	<!-- BEGIN PAGE LEVEL SCRIPTS -->
	<script src="${ctx}js/app.js"></script>
	<script src="${ctx}js/table-editable.js"></script>    
	<script>
	var abc = '${pageContext.request.contextPath}/';
		jQuery(document).ready(function() {       
		   App.init();
		   TableEditable.init();
		});
		var value="${isWork}";
		var obj= document.getElementById("isWork");
		for(i=0;i<obj.length;i++){
			if(obj[i].value==value)
				obj[i].selected = true;
		}
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
	</script>
<!-- END BODY -->

<script type="text/javascript" >
function search() {
	var teacher_name = $("#teacher_name").val();
	var reservationtime = $("#reservationtime").val();
	var isWork = $("#isWork").val();
	if(teacher_name=="" && reservationtime==""){
		alert("查询条件不能为空");
		return false;
	}
	window.location.href = '${ctx}app/attendanceController/toJsp?teacher_name='
			+ teacher_name + '&reservationtime=' + reservationtime + '&isWork='+ isWork;
}

function clearInput() {
	$("#teacher_name").val("");
	$("#reservationtime").val("");
	window.location.href = '${ctx}app/attendanceController/toJsp';
}
//导出
function uploadFile(){
	document.getElementById("form1").action="${ctx}app/attendanceController/control";
	document.getElementById("form1").submit();
	
}

</script>
</body>
</html>