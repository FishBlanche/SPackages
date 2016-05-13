<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
<title>项目名 | 教师出勤信息管理</title>
<meta content="width=device-width, initial-scale=1.0" name="viewport" />
<meta content="" name="description" />
<meta content="" name="author" />

<!-- BEGIN GLOBAL MANDATORY STYLES -->
<link href="${ctx}css/bootstrap.min.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx}css/bootstrap-responsive.min.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx}css/font-awesome.min.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx}css/style-metro.css" rel="stylesheet" type="text/css" />
<link href="${ctx}css/style.css" rel="stylesheet" type="text/css" />
<link href="${ctx}css/style-responsive.css" rel="stylesheet"
	type="text/css" />
<link href="${ctx}css/default.css" rel="stylesheet" type="text/css"
	id="style_color" />
<link href="${ctx}css/uniform.default.css" rel="stylesheet"
	type="text/css" />
<!-- END GLOBAL MANDATORY STYLES -->
<!-- BEGIN PAGE LEVEL STYLES -->
<link rel="stylesheet" type="text/css"
	href="${ctx}css/select2_metro.css" />
<link rel="stylesheet" href="${ctx}css/DT_bootstrap.css" />
<!-- END PAGE LEVEL STYLES -->
<link rel="shortcut icon" href="${ctx}image/favicon.ico" />
<%-- 	<link rel="stylesheet" href="${ctx}ztree/css/zTreeStyle/zTreeStyle.css" type="text/css"/> --%>
<link rel="stylesheet" href="${ctx}ztree/css/demo.css" type="text/css" />
<style>

@media ( min-width :460px) {
	.table {
		font-size: 0.5em
	}
}

@media ( min-width :7640px) {
	.table {
		font-size: 0.8em
	}
}

@media ( min-width :980px) {
	.table {
		font-size: 1em
	}
}

@media ( min-width :1200px) {
	.table {
		font-size: 1.2em
	}
}

.table td {
	font-size: 90%;
}

#sample_editable_1_wrapper {
	margin-top: 1%;
}
</style>
</head>
<!-- END HEAD -->

<!-- BEGIN BODY -->
<body class="page-header-fixed" style="background-color: #fff">
	<!-- BEGIN CONTAINER -->
	<div class="page-content"
		style="margin-left: 0px; padding-top: 1.5%; margin-top: 42px;">
		<!-- BEGIN PAGE -->
		<div class="container-fluid">
			<div class="row-fluid">
				<div class="span12">
					<!-- BEGIN PAGE TITLE & BREADCRUMB-->
					<h3 class="page-title">学生信息导入</h3>
					<ul class="breadcrumb">
						<li><i class="icon-home"></i> <a
							style="text-decoration: none" href="${ctx}index.jsp">学生信息导入</a></li>

					</ul>
					<!-- END PAGE TITLE & BREADCRUMB-->
				</div>
			</div>

			<div class="portlet box blue">
				<div class="portlet-title">
					<div class="caption">
						<i class="icon-edit"></i>学生信息列表
					</div>
					<div class="tools">
						<a href="javascript:;" class="collapse"></a>

					</div>
				</div>
				<div class="portlet-body">
					<div class="clearfix">
					
					
					<div class="btn-group"  >
						<a href="#studentModal" role="button" class="btn green" style="text-decoration:none;" data-toggle="modal"   id="studentBtn" >导入学生信息</a> 
					</div>
				
					

					<div class="btn-group" style="margin-left: 75% !important;" >
						<button class="btn green" onclick="batchDel()"
									style="color: white; font-weight: 600;">批量删除</button>
					</div>
<!-- 								style="border: 1px solid rgb(204, 204, 208); background-color: rgb(245, 244, 244); float: right; margin-right: 65%; height: 4%; padding: 10 11 4 10;"> -->
<!-- 								<button onclick="batchDel()" -->
<!-- 									style="height: 30px; background-color: rgb(71, 124, 239); color: white; font-weight: 600;">批量删除</button> -->
<!-- 							</div> -->
<!-- 						</div> -->


					</div>
					<table class="table table-striped table-hover table-bordered"
						id="sample_editable_1">
						<thead>
							<tr>
								<th>学生学号</th>
								<th>学生姓名</th>
								<th>学生班级</th>
								<th>删除</th>
							</tr>
						</thead>
						<tbody id="tablebody">
							<c:forEach var="l" items="${list}" varStatus="statusName">
								<tr class="">
									<input type="hidden" value="${l.id }" />
									<td>${l.num}</td>
									<td>${l.name}</td>
									<td>${l.grade}</td>
									<td><input type="checkbox" name="ischeck" value="${l.id}"
										onclick="chk(this)" /></td>
								</tr>
							</c:forEach>
						</tbody>
					</table>
				</div>
			</div>
		</div>
		
			        <!-- 导入页面 -->
				       <div id="studentModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="margin-top: 10%;">  
				            <div class="modal-header" style="margin-left: 5%;">  
				                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>  
				                <h3 id="myModalLabel" style="font-weight: 600;">导入学生信息</h3>  
				            </div>  
								<form id="form1" action="${ctx}app/studentInfoController/exportfile" method="post" onsubmit="return check();"
									enctype="multipart/form-data">
				            <div class="modal-body" style="margin-left: 10%;">  
								<div style="border: 1px solid rgb(204, 204, 208); width: 90%;height: 50px; background-color: rgb(245, 244, 244);  padding-top: 10px;">
									<div id="filediv" style="position: absolute; z-index: 1;">
									
									<span style="font-weight: 600; margin-left: 2%; color: rgb(0, 71, 255);">导入学生信息:</span>
										
										<input type="text" id="acceptfile" style="width: 38%; height: 32px;" />

									<button id="browseBtn"
										style="height: 30px; background-color: rgb(71, 124, 239); color: white; font-weight: 600;margin-left: 10px;">浏览文件</button>
									<div style="z-index: 10; opacity: 0; margin-left: 72%; margin-top: -8%; width: 19%;">
										<input type="file" id="file" name="file" onchange="changefile()" style="position: relative; width: 90%;" />
									</div>
									</div>
							</div>
				            </div>  
				            <div class="modal-footer">  
				                <button id="submitBtn" type="submit"
											style="height: 35px;font-size: 16;background-color: rgb(71, 124, 239);color: white;font-weight: 600;margin-right: 2%;">确定</button>
				                <button data-dismiss="modal" aria-hidden="true" id="closeGrantBtn" style="height: 35px;font-size: 16;background-color: rgb(71, 124, 239);color: white;font-weight: 600;margin-right: 8%;"">关闭</button>  
				            </div>  
								</form>
				        </div>
		
	</div>
	<!-- END CONTAINER -->

	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<%-- <script type="text/javascript"
		src="${ctx}My97DatePicker/WdatePicker.js"></script> --%>
	<script src="${ctx}js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery-migrate-1.2.1.min.js"
		type="text/javascript"></script>
	<!-- IMPORTANT! Load jquery-ui-1.10.1.custom.min.js before bootstrap.min.js to fix bootstrap tooltip conflict with jquery ui tooltip -->
	<script src="${ctx}js/jquery-ui-1.10.1.custom.min.js"
		type="text/javascript"></script>
	<script src="${ctx}js/bootstrap.min.js" type="text/javascript"></script>

	<script src="${ctx}js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.blockui.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.uniform.min.js" type="text/javascript"></script>
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


		function check() {
			var arr = document.getElementById("acceptfile").value;
			if (arr == null || arr == "") {
				alert("请选择要导入的文件!");
				$("#browseBtn").focus();
				return false;
			}
			var str = arr.split(".");
			var ext = str[1].toLowerCase();
			if (ext != "xls" && ext != "xlsx") {
				alert("请选择要正确的excel文件!");
				$("#browseBtn").focus();
				return false;
			}
		}

		function del(id) {
			if (confirm("确定删除?")) {
				$.post('${ctx}app/studentInfoController/delete?id=' + id + '',
						'', function() {
							location.reload();
						});
			}
		}

		var str = new Array();
		function batchDel() {
			// 			$.ajax({
			// 				traditional: true//这个设置为true，data:{"steps":["qwe","asd","zxc"]}会转换成steps=qwe&steps=asd&...
			// 				});
			if(str.length==0){
				alert("请选择要删除的信息!");
			}else{
				if (confirm("确定删除?")) {
					$.post('${ctx}app/studentInfoController/batchDel', {
						"att" : str
					}, function() {
						location.reload();
					});
				}
			}
		}

		function chk(obj) {
			var val = obj.value;
			if (obj.checked) {
				if (str[i] != val) {
					str.push(val);
				}
			} else {
				for (var i = 0; i < str.length; i++) {
					if (str[i] == val) {
						str.remove(val);
					}
				}
			}

		}

		function changefile() {
			var val = document.getElementById("file").value;
			var temp = val.split("\\");
			var name = temp[temp.length - 1];
			document.getElementById("acceptfile").value = name;
		}
	</script>
	<!-- END BODY -->

	<script type="text/javascript">
		
	</script>
</body>
</html>