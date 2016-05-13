<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<!DOCTYPE HTML>
<html>
<head>
	<meta charset="utf-8" />
	<title>实践教学巡查管理系统 </title>
	<meta content="width=device-width, initial-scale=1.0" name="viewport" />
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
	<meta content="" name="description" />
	<meta content="" name="author" />
	<link href="${ctx}css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/bootstrap-responsive.min.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/style-metro.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/style.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/style-responsive.css" rel="stylesheet" type="text/css"/>
	<link href="${ctx}css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
	<link href="${ctx}css/uniform.default.css" rel="stylesheet" type="text/css"/>
	<link rel="shortcut icon" href="${ctx}image/favicon.ico" />
</head>
<!-- END HEAD -->
<!-- BEGIN BODY -->
<body class="page-header-fixed page-footer-fixed" style="overflow-y:hidden">
	<!-- BEGIN HEADER -->
	<div class="header navbar navbar-inverse navbar-fixed-top">
		<!-- BEGIN TOP NAVIGATION BAR -->
		<div class="navbar-inner" id="123">
			<div class="container-fluid">
				<!-- BEGIN LOGO -->
				<a class="brand" href="index.jsp" style="width: 500px;margin-top: -7px;">
					<img src="${ctx}image/sz_top.png" alt="logo" style="height:90%;'"/>
				</a>
				<!-- END LOGO -->
				<!-- BEGIN RESPONSIVE MENU TOGGLER -->
				<a href="javascript:;" class="btn-navbar collapsed" data-toggle="collapse" data-target=".nav-collapse" >
					<img src="${ctx}image/menu-toggler.png" alt="" />
				</a> 
				<!-- END RESPONSIVE MENU TOGGLER --> 
				<!-- BEGIN TOP NAVIGATION MENU -->   <!-- 导航信息 -->        
				<ul class="nav pull-right">				
					<!-- BEGIN USER LOGIN DROPDOWN -->
					<li class="dropdown user">
						<a href="#" class="dropdown-toggle" data-toggle="dropdown">
							<img alt="" src="${ctx}image/avatar1_small.jpg" />
							<span class="username">${userName}</span>
							<i class="icon-angle-down"></i>
						</a>
						<ul class="dropdown-menu">
							<li><a href="#" onclick="javascript:$('#iframeid').attr('src','${ctx}d_part3.jsp');"><i class="icon-user"></i>用户信息</a></li>
							<li class="divider"></li>
							<li><a href="javascript:logout();"><i class="icon-key"></i>退出系统</a></li>
						</ul>
					</li>
					<!-- END USER LOGIN DROPDOWN -->
				</ul>
				<!-- END TOP NAVIGATION MENU --> 
			</div>
		</div>
		<!-- END TOP NAVIGATION BAR -->
	</div>
	<!-- BEGIN CONTAINER -->
	<div class="page-container" style="margin-top:0px;margin-bottom:0px">
		<!-- BEGIN SIDEBAR -->
		<div class="page-sidebar nav-collapse collapse">
			<!-- BEGIN SIDEBAR MENU -->   <!-- 菜单栏 -->
			<ul class="page-sidebar-menu"style="margin-top:50px" id="papapa">
				<li>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
					<div class="sidebar-toggler hidden-phone"></div>
					<!-- BEGIN SIDEBAR TOGGLER BUTTON -->
				</li>
				<li class="start active " style="margin-top:5px" >
					<a href="${ctx}index.jsp">
					<i class="icon-home"></i> 
					<span class="title">导航菜单</span>
					<span class="selected"></span>
					</a>
				</li>
			</ul>
			<!-- END SIDEBAR MENU -->
		</div>
		<!-- END SIDEBAR -->
		
		
		<!-- BEGIN PAGE -->
		<div class="page-content">
			<div class="container-fluid" id="123" style="padding-left: 0;padding-right: 0;">
				<iframe id="iframeid" name="iframeid" src="${ctx}d_part1.jsp"  style="width:100%" ></iframe>
			</div>
		</div>
		<!-- END PAGE -->
	</div>
	<!-- END CONTAINER -->
	
	
	<!-- BEGIN FOOTER -->
	<div class="footer" style="height:30px">
		<div class="footer-inner">
			2015 &copy;苏州市职业大学
		</div>
		<div class="footer-tools">
			<span class="go-top">
			<i class="icon-angle-up icon-large"></i>
			</span>
		</div>
	</div>+
	<script src="${ctx}js/jquery.vmap.sampledata.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="${ctx}js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
	<script src="${ctx}js/excanvas.min.js"></script>
	<script src="${ctx}js/respond.min.js"></script>  
	<![endif]-->   
	<script src="${ctx}js/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="${ctx}js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.uniform.min.js" type="text/javascript" ></script>
	<script src="${ctx}js/jquery.flot.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.flot.resize.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.pulsate.min.js" type="text/javascript"></script>
	<script src="${ctx}js/date.js" type="text/javascript"></script>
	<script src="${ctx}js/app.js" type="text/javascript"></script>
<%-- 	<script src="${ctx}js/jquery.vmap.sampledata.js" type="text/javascript"></script>     --%>
	<script src="${ctx}js/index.js" type="text/javascript"></script>
	<script>
		var mainheight;
		var resource1 = new Array();
		var resource2 = new Array();
		//var resource2 = "{";
		jQuery(document).ready(function() {
			App.init(); // initlayout and core plugins
			Index.init();
			//加载菜单
			$.post("${ctx}app/sysResourceController/getMenuByLoginUser","",	function(da) {									
				if (da == 'noSession') {
					window.location.href = '${ctx}login.jsp';
				}
				$.post("${ctx}app/sysResourceController/getMenuByLoginUser","",function(data) {
					if (data != null) {
						var pr = data[0].resource; //顶级菜单
						for (var i = 0; i < pr.length; i++) {
							resource1.push({
								"name" : pr[i].name,
								"url" : pr[i].url,
								"icon" : pr[i].icon,
								"has_children" : pr[i].has_children
							});
									
						}
						var ar = data[0].allRersource;//所有资源
						for (var i = 0; i < ar.length; i++) {
							var temp = ar[i];
							var child = new Array();
							for (var j = 0; j < ar.length; j++) {
								if (temp.id == ar[j].parent_id) {
									child.push({
										"name" : ar[j].name,
										"url" : ar[j].url,
										"icon" : ar[j].icon,
										"has_children" : ar[j].has_children
									});
								
								}
							}
								resource2[temp.name] = child;
						}
								creatmenu(resource1);
					}
				}, "json");	

			}, 'text');

		});
		
		function changeif(demo){
			var src = "d_part"+demo+".jsp";
			$("#iframeid").attr("src","${ctx}"+src+"");
		}
		$("#iframeid").load(function(){
			mainheight = document.body.clientHeight-42;
			$(this).height(mainheight);
		});

		function creatmenu(resource1){
			var ulmenu = $(".page-sidebar-menu");			
			for(var i=0;i<resource1.length;i++){
				var limenu = $(document.createElement("li"));
				if(resource1[i].has_children==0){
					//没有子菜单，有url
					limenu.append("<a href=\"#\" onclick=\"javascript:$(\'#iframeid\').attr(\'src\',\'${ctx}"+resource1[i].url+"\')\"'><i class='"+resource1[i].icon+"'></i><span class='title'>"+resource1[i].name+"</span><span class='arrow'></span></a>");
				}
				else{
					//有子菜单，没有url
					limenu.live('click',function(){
						ormenu(this);
					});
					limenu.append("<a href='javascript:;'><i class='"+resource1[i].icon+"'></i><span class='title'>"+resource1[i].name+"</span><span class='arrow'></span></a>");
				}
				ulmenu.append(limenu);
			}
		}
		
		
				
		//点击判断
		function ormenu(target){
			var	spantitle =$(target).find('.title')[0].innerHTML;
	        for(var key in resource2){  
	            if (spantitle==key){
	            	addmenu(target,resource2[spantitle]);
	            }
	        }
		}
		
		function addmenu(target,key){
			
			var srcElement = $(target);
			var ulElement = $(document.createElement("ul"));
			ulElement.addClass("sub-menu");
			for(var i=0;i<key.length;i++){
				var liElement = $(document.createElement("li"));
				if(key[i].has_children==1){
					//没有子菜单，显示url
					liElement.append("<a href=\"#\" ><i class='"+key[i].icon+"\'></i><span class='title'>"+key[i].name+"</span></a>");
					liElement.live('click',function(){
						ormenu(this);
					});
					ulElement.append(liElement);
				}
				else{
					liElement.append("<a href=\"#\" onclick=\"javascript:$(\'#iframeid\').attr(\'src\',\'${ctx}"+key[i].url+"\')\"><i class='"+key[i].icon+"\'></i><span class='title'>"+key[i].name+"</span></a>");
					ulElement.append(liElement);
				}
			}
			srcElement.append(ulElement);
			
		}
		
		//退出登录
		function logout(){
			$.post("${ctx}app/loginController/logout","",function(data){
					if(data){
						window.location.href="${ctx}login.jsp";
					}else{
						alert("系统退出失败");			
					}
			},"json");			
		}
	</script>
	<!-- END JAVASCRIPTS -->
</body>
<!-- END BODY -->
</html>