<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<!DOCTYPE html>
<html >
<head>
	<title>项目名    |  实验记录信息管理</title>
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
							实验记录信息管理
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a style="text-decoration:none" href="#">实验记录信息管理</a> 
							</li>	
							
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
		
						<div class="portlet box blue">
							<div class="portlet-title">
								<div class="caption"><i class="icon-edit"></i>实验记录信息列表</div>
								<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									
								</div>
							</div>
							<div class="portlet-body">	
								<div class="clearfix">
									<div class="btn-group">
										<a href="${ctx}app/experimentalController/tolist" role="button" class="btn green"
											data-toggle="modal" id="add" style="text-decoration: none">添加实验记录信息 <i class="icon-plus"></i>
										</a>
									</div>
								</div>
						        <form id="form1" method="post" action="">					
								<table class="table table-striped table-hover table-bordered" id="sample_editable_1">
									<thead>
										<tr>
											<th>实验班级</th>
											<th>授课老师</th>
											<th>应到人数</th>
											<th>实到人数</th>
											<th>缺席人名单</th>
											<th>实验名称</th>							
											<th>编辑</th>
											<th>删除</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var="l" items="${list}" varStatus="statusName">
											<tr class="">
											    <input type="hidden" value="${l.id }" />
												<td>${l.testClass}</td>
												<td >${l.teacherName}</td>
												<td>${l.should}</td>
												<td>${l.actual}</td>
												<td >${l.tList}</td>
												<td>${l.testName}</td>												
												<td><a href="#myModal" role="button"
							                    	data-toggle="modal" id="edit" style="text-decoration: none" onclick="edit('${l.id}')"><i class="icon-edit icon-large"
											        title="编辑"></i></a></td>
								            	<td><a style="text-decoration: none" 
								             		href="#" onclick="javascript:del('${l.id}');"><i class="icon-remove-sign icon-large"
											        title="删除"></i></a></td>
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
		
	
	</script>
<!-- END BODY -->

<script type="text/javascript" >
function del(id){
	if(confirm("确定删除？")){
	$.post('${ctx}app/experimentalController/delete?id='+id+'','',function(data){
		if(data){
			location.reload();
		}else {
			alert("删除失败！");
		}
	});
}
}
function edit(id){
   window.location.href = '${ctx}app/experimentalController/tolist?id='+ id; 	
	
}
</script>
</body>
</html>