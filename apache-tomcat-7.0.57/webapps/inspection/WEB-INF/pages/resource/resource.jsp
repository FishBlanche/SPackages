<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<!DOCTYPE html>
<html >
<head>
	<title>U_demo    |   权限管理</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>	
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1"/><!-- 如有Google Chrome Frame，则ie可以使用Webkit引擎及V8引擎进行排版及运算，否则ie文档模式最新 -->
	<meta content="" name="description" />
	<meta content="" name="author" />
	<!-- BEGIN GLOBAL MANDATORY STYLES -->
	<link href="${ctx}css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/font-awesome.min.css" rel="stylesheet" type="text/css"/><!-- 小标题css -->
	<link href="${ctx}css/style-metro.css" rel="stylesheet" type="text/css"/><!-- buttom css -->
	<link href="${ctx}css/style.css" rel="stylesheet" type="text/css"/>
	<link rel="stylesheet" href="${ctx}js/treetable/stylesheets/screen.css" media="screen" />
    <link rel="stylesheet" href="${ctx}js/treetable/stylesheets/jquery.treetable.css" />
    <link rel="stylesheet" href="${ctx}js/treetable/stylesheets/jquery.treetable.theme.default.css" />
    <link rel="stylesheet" href="${ctx}ztree/css/zTreeStyle/zTreeStyle.css" type="text/css"/>
	<link rel="stylesheet" href="${ctx}ztree/css/demo.css" type="text/css"/>
    <style>
         #example-advanced th{
	    font-weight:600;
	    }
        #example-advanced{font-size:1em}
    	td
    	{
    		border-top: 1px solid #ddd;
    		border-left: 1px solid #ddd;
    		height:36px;
    	    line-height: 20px;
    		padding: 8px;
    		text-align: left;
    		word-break: keep-all;white-space:nowrap;
    	}
    	


    </style>
</head>
<body class="page-header-fixed"  style="background:#fff" id="rulebody">
	<!-- BEGIN HEADER -->
		<!-- END SIDEBAR -->
		<!-- BEGIN PAGE -->
		<div class="page-content" style="margin-left:0px;padding-top:1.5%;margin-top:42px;">
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">  
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->
						<h3 class="page-title">
							资源管理
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a style="text-decoration:none" href="#">系统管理</a> 
								<i class="icon-angle-right"></i>
							</li>	
							<li><a style="text-decoration:none" href="#">资源管理</a></li>
						</ul>
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<div class="row-fluid">
				<div class="span12">
				<div class="portlet box blue" id="rulelist">
					<div class="portlet-title">
						<div class="caption"><i class="icon-reorder"></i>资源列表</div>
						<div class="tools">
									<a style="text-decoration:none" href="javascript:;" class="collapse"></a>
						</div>
					</div>
					<div class="portlet-body">
							<div class="clearfix">

								<div class="btn-group" style="float:right">
									<a role="button" class="btn green" href="#" data-toggle="dropdown" style="text-decoration:none">
									操作
									</a>
									<ul class="dropdown-menu pull-right">
										<li onclick="openAdd();">
											<a href="#">
											 添加 </a>
										</li>
										<li class="divider">
										</li>
										<li onclick="edi();">
											<a href="#">
											 编辑 </a>
										</li>
										<li class="divider">
										</li>
										<li onclick="del();">
											<a href="#">
											 删除 </a>
										</li>
							
									</ul>
								</div>
								<div class="btn-group"  style="display: none;">
										<a style="text-decoration:none" href="#myModal" role="button" class="btn green" data-toggle="modal"  id="addResource" style="text-decoration:none;">添加资源<i class="icon-plus"></i></a>
								</div>
							</div>
							<table id="example-advanced">
								<thead>
									<tr >
										<th>资源名称</th>
										<th>资源类型</th>
										<th>排序号</th>
										<th>编辑</th>
										<th>删除</th>
									</tr>
									
								</thead>
								<tbody>
								
									<c:forEach var="l"  items="${list}"  varStatus="i" >
													<tr data-tt-id='${l.id }'  data-tt-parent-id='${l.parent_id }' onclick="choosetr(this);" name='${l.id }'>
													<td><span><i class='${l.icon}'></i>${l.name}</span></td>
													<td><c:if test="${l.resourceType == 0 }">菜单</c:if><c:if test="${l.resourceType == 1 }">功能</c:if></td>
													<td>${l.seq}</td>
													<td><a style="text-decoration:none" href="#" onclick="editResource('${l.id}');"><i class="icon-edit icon-large" title="编辑"></i></a></td>
													<td><a style="text-decoration:none" href="#" onclick="javascript:removeResource('${l.id}');"><i class="icon-remove-sign icon-large"  title="删除"></i></a></td></tr>												
									</c:forEach>
									
								</tbody>
							</table>
					</div>
				</div>	</div></div>		
		</div>
		
		<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width:365px;margin-top: 10%">  
            <div class="modal-header">  
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>  
                <h1 id="myModalLabel">添加/编辑资源</h1>  
            </div>  
            <div class="modal-body" style="margin-left:20px">  
		        <form action="" method="post" name="form1" id="form1">
		        		<input  type="hidden"  id="rid" name="id"/>
		            <dl>
		                <dd><span class="title">资源名称：</span><input class="reg_input" name="name" id="name"  type="text" style="height:28px" /><span id="rn" class="onshow"></span></dd>
		                <dd><span class="title">资源路径：</span><input class="reg_input" name="url" id="url"  type="text" style="height:28px" /><span id="rp" class="onshow"></span></dd>
		                <dd><span class="title">上级资源：</span>
		                	<input  type="hidden"  id="pid" name="pid" />
			                <input class="reg_input"  id="pname"  name="pname" type="text" style="position: relative;z-index: 1;height:28px;margin-left:-4px;"  onclick="showResource();" />
			                <ul id="treeDemo" class="ztree"  style="position: absolute;z-index: 2;float: right;display: none;margin-left:75px" ></ul>
		                <span id="fr" class="onshow"></span>
		                <img style="float:right;margin-right:10px;padding-top:5px;" src="${ctx}image/cut_red.png" onclick="javascript:clearin();"/>
		                </dd>     

		                <dd><span class="title">资源图标：</span>
		                	<input type="hidden" id="sid" name="sid"/>
		                	<input  class="reg_input" type="text"  name="iconCls" style="position:relative;height:28px;margin-left:-3.5px" id="iconCls" onclick="showicon();"/>
							<div id="icondiv" style="position: fixed;z-index:2;float: right;display: none;margin-left:80px;margin-top: -10px;border: 1px solid #617775;background: #f0f6e4;width:205px;height:150px;overflow-y:scroll;overflow-x:hidden;margin-left:77px;">
							<jsp:include page="icon.jsp" flush="true"></jsp:include>
							</div></dd>	
	                	<dd><span class="title">资源类型：</span>
			                <select class="reg_input" style="width: 206px;margin-left:-4px;"  name="resourceType" id="resourceType">
			                	<option value="0">菜单</option>
			                	<option value="1">功能</option>
			                </select>
		                <span id="rt" class="onshow"></span></dd>
		                	
		                <dd><span id="so" class="onshow"></span></dd>
		                <dd><span class="title" style="width:75px">排&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;序：</span><input  class="reg_input" type="text" id="seq" name="seq" style="margin-left:2px;height:28px"/><span id="so" class="onshow"></span></dd>
		                <dd><span class="title" style="width:75px">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</span><input class="reg_input" name="remark" type="text" id="remark" style="margin-left:2px;height:28px"  /><span id="no" class="onshow"></span></dd>
		            </dl>

		        </form>   
            </div>  
            <div class="modal-footer">  
                <button class="btn" data-dismiss="modal" aria-hidden="true" id="closeBtn">关闭</button>  
                <button class="btn btn-primary"  onclick="saveResource();">保存</button>  
            </div>  
        </div>
	</div>
	<script src="${ctx}js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="${ctx}js/bootstrap.min.js" type="text/javascript"></script>
	<script src="${ctx}js/index.js" type="text/javascript"></script> 
	<script src="${ctx}/js/treetable/vendor/jquery.js"></script>
    <script src="${ctx}/js/treetable/vendor/jquery-ui.js"></script>
    <script src="${ctx}/js/treetable/javascripts/src/jquery.treetable.js"></script>
    <script src="${ctx}js/table-editable.js"></script>
    <script src="${ctx}js/app.js"></script>
   	<script>
	jQuery(document).ready(function() {       
		   App.init();
		   TableEditable.init();
		});
      $("#example-advanced").treetable({ expandable: true });
      // Highlight selected row
      $("#example-advanced tbody").on("mousedown", "tr", function() {
        $(".selected").not(this).removeClass("selected");
        $(this).toggleClass("selected");
      });
      // Drag & Drop Example Code
      $("#example-advanced .file, #example-advanced .folder").draggable({
        helper: "clone",
        opacity: .75,
        refreshPositions: true, // Performance?
        revert: "invalid",
        revertDuration: 300,
        scroll: true
      });

      $("#example-advanced .folder").each(function() {
        $(this).parents("#example-advanced tr").droppable({
          accept: ".file, .folder",
          drop: function(e, ui) {
            var droppedEl = ui.draggable.parents("tr");
            $("#example-advanced").treetable("move", droppedEl.data("ttId"), $(this).data("ttId"));
          },
          hoverClass: "accept",
          over: function(e, ui) {
            var droppedEl = ui.draggable.parents("tr");
            if(this != droppedEl[0] && !$(this).is(".expanded")) {
              $("#example-advanced").treetable("expandNode", $(this).data("ttId"));
            }
          }
        });
      });
      
      //打开新增窗口
      function openAdd(){
    	  document.getElementById("form1").reset();
    	  document.getElementById("rid").value="";
    	  document.getElementById("addResource").click();
      }      
      
      //保存方法
      function saveResource(){
	  		//验证
	  		var name = $("#name").val();
	  		if(name=="" || name==null){
	  			alert("资源名称不能为空");
	  			$("#name").focus();
	  			return false;
	  		}
	  		var seq = $("#seq").val();
	  		if(seq=="" || seq==null || isNaN(seq)){
	  			alert("排序号不能为空且必须为数字");
	  			$("#seq").focus();
	  			return false;
	  		}
	  		//保存
    	  	var data = $("#form1").serialize();
			$.post('${ctx}app/sysResourceController/addResource', data, function(result) {
				if (result) {
					$("#closeBtn").click();
					location.reload();
					return true;
				} else {
					alert("资源保存失败");
					return false;
				}
			}, "JSON");
      }
      
      //删除方法
      function removeResource(id){
    	  	if(confirm("确定删除?")){
    			$.post('${ctx}app/sysResourceController/delete/'+id, "", function(result) {
    				if (result) {
    					location.reload();
    					return true;
    				} else {
    					alert("资源删除失败");
    					return false;
    				}
    			}, "json");
    	  	}
      }
      
   //打开修改页面 
  function editResource(id){
		$.post('${ctx}app/sysResourceController/getSysResourceById/'+id, "", function(data) {
			if (data) {
				$("#rid").val(data.id);
				$("#name").val(data.name);
				$("#url").val(data.url);
				$("#pid").val(data.parent_id);
				$("#pname").val(data.parent_name);
				$("#resourceType").val(data.resourceType);
				$("#iconCls").val(data.icon);
				$("#seq").val(data.seq);
				$("#remark").val(data.remark);
				document.getElementById("addResource").click();
			} else {
				alert("资源删除失败");
				return false;
			}
		}, "json");
  }
</script>
<script type="text/javascript" src="${ctx }ztree/js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript">
var setting = {
		data: {
			simpleData: {
				enable: true
			}
		}
	};
	
	var resource = new Array();		
	function showResource(){			
		if(document.getElementById("treeDemo").innerHTML==''){
			$.post("${ctx}app/sysResourceController/getAllJsonData","",function(data){
				if(data!=null){
					var list = data;
					for(var i=0;i<list.length;i++){
						if(list.parent_id==''){
							list.parent_id = 0;
						}
						resource.push({'id':list[i].id,'pId':list[i].parent_id,'name':list[i].name,'icon':null,click:"disResource('"+list[i].id+"','"+list[i].name+"');"});
					}
					$.fn.zTree.init($("#treeDemo"), setting, resource);
				}
			},'json'); 
		}
		document.getElementById("treeDemo").style.display="";

	}
	
	function showicon(){
// 		$("#icondiv").attr("style","display:block");
		var displayul = document.getElementById("icondiv").style.display;
		if(displayul=="none"){
			document.getElementById("icondiv").style.display="block";
		}else{
			document.getElementById("icondiv").style.display="none";
		}
	}
	
	function disResource(id,name){
		document.getElementById("pid").value = id;
		document.getElementById("pname").value = name;
		document.getElementById("treeDemo").style.display="none";
	}

	function geticon(target){
		document.getElementById("sid").value = target.childNodes[0].childNodes[0].className;
		document.getElementById("iconCls").value = target.childNodes[0].childNodes[0].className;
		document.getElementById("icondiv").style.display="none";
	}
	//保存方法
/*     function save(){
		//保存
    	var data = $("#form1").serialize();
		$.post('${ctx}app/sysResourceController/addResource', data, function(result) {
			if (result.success) {
				alert("资源保存成功");
				return true;
			} else {
				alert("资源保存失败");
				return false;
			}
		}, "JSON");
    } */
	
	//清空上级资源
	function clearin(){
    	document.getElementById('pid').value= null;
    	document.getElementById('pname').value= null;
// 		$("#pid").attr("value","");
// 		$("#pname").attr("value","");
	}
</script>
<script type="text/javascript">
var _gaq = _gaq || [];
_gaq.push([ "_setAccount", "UA-37564768-1" ]);
_gaq.push([ "_setDomainName", "keenthemes.com" ]);
_gaq.push([ "_setAllowLinker", true ]);
_gaq.push([ "_trackPageview" ]);
(function() {
    var ga = document.createElement("script");
    ga.type = "text/javascript";
    ga.async = true;
    ga.src = ("https:" == document.location.protocol ? "https://" :"http://") + "stats.g.doubleclick.net/dc.js";
    var s = document.getElementsByTagName("script")[0];
    s.parentNode.insertBefore(ga, s);
})();

</script>

<script>
var choosetrt = null;
function choosetr(target){
	//class中含有select时赋值,即选中赋值
	var dal = $(target)[0].className;
	if(dal.indexOf("selected")>0){
		choosetrt = target.attributes[0].nodeValue;
	}else{
		choosetrt = null;
	}
}


function edi(){
	if(choosetrt == null){
		alert("请选择资源再进行编辑");
	}else{
		editResource(choosetrt);
	}
}

function del(){
	if(choosetrt == null){
		alert("请选择资源再进行删除");
	}else{
		removeResource(choosetrt);
	}
}
</script>
</body>
<!-- END BODY -->
</html>