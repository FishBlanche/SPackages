<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<!DOCTYPE html>
<html >
<head>
	<title>U_demo    |   角色管理</title>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>	
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
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
    	.th{
    		backgrounde-color:#000;
    	} 
    	  #example-advanced th{
	    font-weight:600;
	    } 
    	body{
    		background-color:aliceblue;
    	}
    	
        #example-advanced{
        	font-size:1em
        }
    	@media screen and(min-width:460px){
    		#example-advanced{font-size:0.5em}
    	}
    	
    	@media screen and(min-width:764px){
    		#example-advanced{font-size:0.8em}
    	}
    	
    	@media screen and(min-width:980px){
    		#example-advanced{font-size:1em}
    	}
    	
    	@media screen and(min-width:1200px){
    		#example-advanced{font-size:1.2em}
    	}
    	td
    	{
    		border-top: 1px solid #ddd;
    		border-left: 1px solid #ddd;
    		height:36px;
    	    line-height: 20px;
    		padding: 8px;
    		text-align: left;
    	}
    	.normalEvenTD{
			background: #DFD8D8;
		}
		.normalOddTD{
			background: #FFFFFF;
		}
		.hoverTD{
			background-color: #eafcd5;
			height: 18px;
			text-align: center;
			font-size: 12px;
		}
		.trSelected{
			background-color: #51b2f6;
			height: 18px;
			text-align: center;
			font-size: 12px;
		}
    </style>
</head>
<body class="page-header-fixed" style="background:#fff"  id="rulebody">
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
							角色管理
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a style="text-decoration:none" href="#">系统管理</a> 
								<i class="icon-angle-right"></i>
							</li>	
							<li><a style="text-decoration:none" href="#">角色管理</a></li>
						</ul>
					</div>
				</div>
				<!-- END PAGE HEADER-->
				
				<div class="portlet box blue" id="rulelist">
					<div class="portlet-title">
						<div class="caption"><i class="icon-reorder"></i>角色列表</div>
						<div class="tools">
									<a href="javascript:;" class="collapse"></a>									
						</div>

					</div>
					<div class="portlet-body">
							<div class="clearfix">
								<div class="btn-group"  style="display: none;">
									<a href="#myModal" role="button" class="btn green" data-toggle="modal"   id="addRole" style="text-decoration:none;">添加角色<i class="icon-plus"></i></a> 
								</div>
								<div class="btn-group"  style="display: none;">
									<a href="#RoleModal" role="button" class="btn" data-toggle="modal"   id="accreditRole" >授权</a> 
								</div>
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
										<li onclick="acc();">
											<a href="#">
											 授权 </a>
										</li>
										<li class="divider">
										</li>
										<li onclick="del();">
											<a href="#">
											 删除 </a>
										</li>
							
									</ul>
								</div>
							</div>
							<table id="example-advanced"  class="list">
								<thead>
									<tr>
										<th>角色名</th>
										<th>排序号</th>										
										<th>上级角色</th>
										<th>编辑</th>
										<th>授权</th>
										<th>删除</th>
									</tr>
								</thead>
								<tbody>
								
									<c:forEach var="l"  items="${list}"  varStatus="i" >
											<c:if test="${ l.parent_id eq ''}">
												<tr data-tt-id='${l.id }'  data-tt-parent-id='${l.parent_id }' onclick="choosetr(this);" name='${l.id }'>
													<td><span><i class="icon-user-md"></i>${l.name}</span></td>
													<td>${l.seq }</td>
													<td>${l.sysRole.name}</td>
													<td><a style="text-decoration:none" href="#" onclick="javascript:editRole('${l.id}');"><i class="icon-edit icon-large" title="编辑"></i></a></td>
													<td><a style="text-decoration:none" href="#"  onclick="javascript:accredit('${l.id}')"><i class="icon-user icon-large" title="授权"></i></a></td>
													<td><a style="text-decoration:none" href="#" onclick="javascript:removeRole('${l.id}');"><i class="icon-remove-sign icon-large"  title="删除"></i></a></td>
												</tr>												
											</c:if>
											<c:if test="${ l.parent_id != ''}">
												<tr data-tt-id='${l.id }'  data-tt-parent-id='${l.parent_id }' onclick="choosetr(this);" name='${l.id }'>
													<td><span><i class="icon-user"></i>${l.name}</span></td>
													<td>${l.seq }</td>
													<td>${l.sysRole.name}</td>
													<td><a style="text-decoration:none" href="#" onclick="javascript:editRole('${l.id}');"><i class="icon-edit icon-large" title="编辑"></i></a></td>
													<td><a style="text-decoration:none" href="#"  onclick="javascript:accredit('${l.id}')"><i class="icon-user icon-large" title="授权"></i></a></td>
													<td><a style="text-decoration:none" href="#" onclick="javascript:removeRole('${l.id}');"><i class="icon-remove-sign icon-large"  title="删除"></i></a></td>
												</tr>
											</c:if>									
									</c:forEach>
									
								</tbody>
							</table>
					</div>
				</div>			
		</div>
		
		<!-- 新增和编辑页面 -->
		<div id="myModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 450px;margin-top: 10%;">  
            <div class="modal-header">  
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>  
                <h1 id="myModalLabel">添加/编辑角色</h1>  
            </div> 
            <div class="modal-body" style="margin-left: 10%;">  
		        <form action="" method="post" name="form1" id="form1">
		        	<input  type="hidden"  id="sid" name="id" />
		            <dl>
		                <dd><span class="title">角&nbsp;&nbsp;色&nbsp;&nbsp;名：</span><input class="reg_input" name="name" id="name"  type="text"  style="width: 200px;height: 27px;"/><span id="rn" class="onshow"></span></dd>
		                <dd><span class="title">排&nbsp;&nbsp;序&nbsp;&nbsp;号：</span><input class="reg_input" name="seq" id="seq"  type="text"  style="width: 200px;height: 27px;"/><span id="rp" class="onshow"></span></dd>
		                <dd><span class="title">上级角色：</span>
		                	<input  type="hidden"  id="pid" name="pid" />
			                <input class="reg_input"  id="pname"  name="pname" type="text" style="position: absolute;z-index: 1;width: 200px;height: 27px;"  onclick="showRole();" />
			                <ul id="treeRole" class="ztree"  style="position: absolute;z-index: 2;float: left;display: none;width: 188px;margin-left: 75px;margin-top: 8px;" ></ul>
		                <span id="fr" class="onshow"></span><img style="float:right;margin-right:70px;padding-top:5px;" src="${ctx}image/cut_red.png" onclick="javascript:clearin();"/></dd>
		                <dd style="margin-top: 20px;"><span class="title">备&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;注：</span>
		                <textarea rows="5" cols="5"  name="remark"  id="remark" style="width:200px;margin-left:2px"></textarea><span id="no" class="onshow"></span></dd>
		            </dl>
		        </form>   
            </div>  
            <div class="modal-footer">  
                <button class="btn" data-dismiss="modal" aria-hidden="true" id="closeBtn">关闭</button>  
                <button class="btn btn-primary"  onclick="saveRole();">保存</button>  
            </div>  
        </div>
        
        
        <!-- 授权页面 -->
       <div id="RoleModal" class="modal hide fade" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true" style="width: 450px;margin-top: 10%;">  
            <div class="modal-header" style="margin-left: 5%;">  
                <button type="button" class="close" data-dismiss="modal" aria-hidden="true"></button>  
                <h3 id="myModalLabel" style="font-weight: 600;">角色授权</h3>  
            </div>  
            <div class="modal-body" style="margin-left: 10%;">  
					<ul id="ResourceTree" class="ztree" style="margin-left:-10px;width:335px;"></ul>
            </div>  
            <div class="modal-footer">  
                <button class="btn" data-dismiss="modal" aria-hidden="true" id="closeGrantBtn">关闭</button>  
                <button class="btn btn-primary"  onclick="grant();">保存</button>  
            </div>  
        </div>
        
        <!-- 这是一个隐藏在form，用来提交授权数据 -->
        <div style="display: none;">
        	<form id="grantForm" method="post" >
        			<input id="id"  name="id"  type="hidden" />
        			<input id="resourceIds"  name="resourceIds"  type="hidden" />
        	</form>
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
    	  $("#remark").html("");
    	  document.getElementById("addRole").click();
      }
      
      
      //保存方法
      function saveRole(){
    	  //验证
	  		var name = $("#name").val();
	  		if(name=="" || name==null){
	  			alert("角色名不能为空");
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
			$.post('${ctx}app/sysRoleController/add', data, function(result) {
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
      function removeRole(id){
    	  	if(confirm("确定删除?")){
    			$.post('${ctx}app/sysRoleController/delete/'+id, "", function(result) {
    				if (result) {
    					location.reload();
    					return true;
    				} else {
    					alert("角色删除失败");
    					return false;
    				}
    			}, "JSON");
    	  	}

      }
      
      //修改方法
      function editRole(id){
			$.post('${ctx}app/sysRoleController/getSysRoleById/'+id, '', function(result) {
				if (result!=null) {
					$("#sid").val(result.id);
					$("#name").val(result.name);
					$("#seq").val(result.seq);
					$("#pid").val(result.parent_id);
					$("#pname").val(result.parent_name);
					$("#remark").html(result.remark);
					document.getElementById("addRole").click();
					return true;
				} else {
					alert("无法获取数据");
					return false;
				}
			},"json");
      }
      
</script>
<script type="text/javascript" src="${ctx }ztree/js/jquery.ztree.core-3.5.js"></script>
<script type="text/javascript" src="${ctx }ztree/js/jquery.ztree.excheck-3.5.js"></script>
<script type="text/javascript">
//以下是处理选择上级角色部分js
var setting = {
		data: {
			simpleData: {
				enable: true
			}
		}
	};
	
	var resource = new Array();		
	function showRole(){			
		if(document.getElementById("treeRole").innerHTML==''){
			$.post("${ctx}app/sysRoleController/getAllToJson","",function(data){
				if(data!=null){
					var list = data;
					for(var i=0;i<list.length;i++){
						if(list.parent_id==''){
							list.parent_id = 0;
						}
						resource.push({'id':list[i].id,'pId':list[i].parent_id,'name':list[i].name,'icon':'${ctx}ztree/css/zTreeStyle/img/diy/person.jpg',click:"disRole('"+list[i].id+"','"+list[i].name+"');"});
					}
					$.fn.zTree.init($("#treeRole"), setting, resource);
				}
			},'json'); 
		}
		document.getElementById("treeRole").style.display="";

	}
	
	function disRole(id,name){
		document.getElementById("pid").value = id;
		document.getElementById("pname").value = name;
		document.getElementById("treeRole").style.display="none";
	}
	
	
	
	//以下是处理授权部分的js
		var setting_sq = {
			check: {
				enable: true
			},
			data: {
				simpleData: {
					enable: true
				}
			}
		};
	
		
		var resource2 = new Array();
		var role_id;
		function accredit(id){	
				role_id = id;
				resource2.length = 0;
				$.post("${ctx}app/sysRoleController/getAllJsonForGrant/"+id,"",function(data){
					if(data!=null){
						var list = data;
						for(var i=0;i<list.length;i++){
							if(list.parent_id==''){
								list.parent_id = 0;
							}
							//判断是否已经被授权
							if(list[i].ischeck){
								resource2.push({'id':list[i].id,'pId':list[i].parent_id,'name':list[i].name,open:true,checked:true});
							}else{
								resource2.push({'id':list[i].id,'pId':list[i].parent_id,'name':list[i].name,open:true,checked:false});
							}
							
						}
						//先清空
						document.getElementById("ResourceTree").innerHTML="";
						$.fn.zTree.init($("#ResourceTree"), setting_sq, resource2);
					}
				},'json'); 		
			 document.getElementById("accreditRole").click();
		}
	
		
	//授权
	function grant(){
		var ids = "";
		var zTree = $.fn.zTree.getZTreeObj("ResourceTree");
		var checkCount = zTree.getCheckedNodes(true);
		for(var i=0;i<checkCount.length;i++){
			ids+=checkCount[i].id+",";
		}
		$("#id").val(role_id);
		$("#resourceIds").val(ids);
	  	var data = $("#grantForm").serialize();
		$.post('${ctx}app/sysRoleController/grant', data, function(result) {
			if (result) {
				$("#closeGrantBtn").click();
				alert("授权成功");
				return true;
			} else {
				alert("授权失败");
				return false;
			}
		}, "JSON");
	}
	
	function clearin(){
    	document.getElementById('pid').value= null;
    	document.getElementById('pname').value= null;
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
function acc(){
	if(choosetrt == null){
		alert("请选择角色再进行授权");
	}else{
		accredit(choosetrt);
	}
}

function edi(){
	if(choosetrt == null){
		alert("请选择角色再进行编辑");
	}else{
		editRole(choosetrt);
	}
}

function del(){
	if(choosetrt == null){
		alert("请选择角色再进行删除");
	}else{
		removeRole(choosetrt);
	}
}
</script>



</body>
<!-- END BODY -->
</html>