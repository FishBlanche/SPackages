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
<%-- 	<link href="${ctx}css/default.css" rel="stylesheet" type="text/css" id="style_color"/> --%>
<%-- 	<link href="${ctx}css/uniform.default.css" rel="stylesheet" type="text/css"/> --%>
	<!-- END GLOBAL MANDATORY STYLES -->
	<!-- BEGIN PAGE LEVEL STYLES -->
	<link rel="stylesheet" type="text/css" href="${ctx}css/select2_metro.css" />
	<link rel="stylesheet" href="${ctx}css/DT_bootstrap.css" />
	<!-- END PAGE LEVEL STYLES -->
<%-- 	<link rel="shortcut icon" href="${ctx}image/favicon.ico" /> --%>
<%-- 	<link rel="stylesheet" href="${ctx}ztree/css/zTreeStyle/zTreeStyle.css" type="text/css"/> --%>
	<link rel="stylesheet" href="${ctx}ztree/css/demo.css" type="text/css"/>
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
							实验室资源管理
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a style="text-decoration:none" href="${ctx}index.jsp">实验室资源管理</a> 
							</li>	
							
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
		
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-edit"></i>实验室资源列表</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body">	
								<div class="clearfix">
						<div class="btn-group">
							<a href="${ctx}app/addLabResourceController/tojsp?id=open" role="button" class="btn green"
								data-toggle="modal" id="addDriver" style="text-decoration: none">增加资源<i class="icon-plus"></i>
							</a>
						</div>
					</div>	
						 <table class="table table-striped table-hover table-bordered"
						id="sample_editable_1">
						<thead>
							<tr>
								<th>资源名</th>
								<th>Edit</th>
								<th>Delete</th>
							</tr>
						</thead>
						<tbody id="tablebody">
								<c:forEach var="l" items="${list}" varStatus="statusName">
								<tr class="">
									<input type="hidden" value="${l.id }" />
									<td>${l.r_name}</td>
<%-- 									<td>${l.category}</td> --%>
									<td><a href="${ctx}app/addLabResourceController/tojsp?id=${l.id}"
										id="editDriver" style="text-decoration: none"
										onclick="edit('${l.id}')"><i class="icon-edit icon-large"
											title="Edit"></i></a></td>
									<td><a style="text-decoration: none" href="#"
										onclick="javascript:del('${l.id}');"><i
											class="icon-remove-sign icon-large" title="Delete"></i></a></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
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
	
<%-- 	<script src="${ctx}js/jquery.slimscroll.min.js" type="text/javascript"></script> --%>
<%-- 	<script src="${ctx}js/jquery.blockui.min.js" type="text/javascript"></script>   --%>
<%-- 	<script src="${ctx}js/jquery.cookie.min.js" type="text/javascript"></script> --%>
<%-- 	<script src="${ctx}js/jquery.uniform.min.js" type="text/javascript" ></script> --%>
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
	
		function del(id) {
			if (confirm("confirm delete?")) {
				$.post('${ctx}app/labResourceController/delete?id=' + id + '',
						'', function(data) {
							if (data==1) {
								location.reload();
							} else {
								alert("delete failed");
							}
						});
			}
		}
	</script>
<!-- END BODY -->

<script type="text/javascript" >


</script>
</body>
</html>