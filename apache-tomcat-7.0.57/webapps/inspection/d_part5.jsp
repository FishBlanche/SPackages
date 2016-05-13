<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<!DOCTYPE HTML>
<html>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head>
	<meta charset="utf-8" />
	<title>项目名    |   拓扑</title>
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
	<link rel="shortcut icon" href="${ctx}image/favicon.ico" />
	<style>
	.link { 
	stroke:green; 
	stroke-linejoin:bevel;
	stroke-width:2px;
}
.link_error{
    stroke:red;
    stroke-linejoin:bevel;
	stroke-width:2px;
}
/*.link-path{
	stroke:blue;
    stroke-linejoin:bevel;
	stroke-width:10px;
}*/
.nodetext {
    font: 12px sans-serif;
    -webkit-user-select:none;
    -moze-user-select:none;
    stroke-linejoin:bevel;     
}
@media screen and (min-width:480px){
#topo{
    width:400px;
    height:300px;
    border:0px solid gray;
    border-radius:5px;
    position:relative;
}
}
@media screen and (min-width:768px){
#topo{
    width:650px;
    height:500px;
    border:0px solid gray;
    border-radius:5px;
    position:relative;
}
}
@media screen and (min-width:992px){
#topo{
    width:850px;
    height:650px;
    border:0px solid gray;
    border-radius:5px;
    position:relative;
}
}
@media screen and (min-width:1200px){
#topo{
    width:950px;
    height:730px;
    border:0px solid gray;
    border-radius:5px;
    position:relative;
}
}
@media screen and (min-width:1600px){
#topo{
    width:1200px;
    height:800px;
    border:0px solid gray;
    border-radius:5px;
    position:relative;
}
}
@-webkit-keyframes translate
{
	0%	{-webkit-transform:translate(null,null);}
	10%	{-webkit-transform:translate(null,null);}
	20%	{-webkit-transform:translate(null,null);}
	30%	{-webkit-transform:translate(null,null);}
	40%	{-webkit-transform:translate(null,null);}
	50%	{-webkit-transform:translate(null,null);}
	60%	{-webkit-transform:translate(null,null);}
	70%	{-webkit-transform:translate(null,null);}
	80%	{-webkit-transform:translate(null,null);}
	90%	{-webkit-transform:translate(null,null);}
	100%{-webkit-transform:translate(null,null);}
}
@-moz-keyframes translate
{
	0%	{-moz-transform:translate(null,null);}
	10%	{-moz-transform:translate(null,null);}
	20%	{-moz-transform:translate(null,null);}
	30%	{-moz-transform:translate(null,null);}
	40%	{-moz-transform:translate(null,null);}
	50%	{-moz-transform:translate(null,null);}
	60%	{-moz-transform:translate(null,null);}
	70%	{-moz-transform:translate(null,null);}
	80%	{-moz-transform:translate(null,null);}
	90%	{-moz-transform:translate(null,null);}
	100%{-moz-transform:translate(null,null);}
}
@-o-keyframes translate
{
	0%	{-o-transform:translate(null,null);}
	10%	{-o-transform:translate(null,null);}
	20%	{-o-transform:translate(null,null);}
	30%	{-o-transform:translate(null,null);}
	40%	{-o-transform:translate(null,null);}
	50%	{-o-transform:translate(null,null);}
	60%	{-o-transform:translate(null,null);}
	70%	{-o-transform:translate(null,null);}
	80%	{-o-transform:translate(null,null);}
	90%	{-o-transform:translate(null,null);}
	100%{-o-transform:translate(null,null);}
}
@-ms-keyframes translate
{
	0%	{-ms-transform:translate(null,null);}
	10%	{-ms-transform:translate(null,null);}
	20%	{-ms-transform:translate(null,null);}
	30%	{-ms-transform:translate(null,null);}
	40%	{-ms-transform:translate(null,null);}
	50%	{-ms-transform:translate(null,null);}
	60%	{-ms-transform:translate(null,null);}
	70%	{-ms-transform:translate(null,null);}
	80%	{-ms-transform:translate(null,null);}
	90%	{-ms-transform:translate(null,null);}
	100%{-ms-transform:translate(null,null);}
}
/*
@keyframes translate{
	0%	{transform:translate(null,null);}
	10%	{transform:translate(null,null);}
	20%	{transform:translate(null,null);}
	30%	{transform:translate(null,null);}
	40%	{transform:translate(null,null);}
	50%	{transform:translate(null,null);}
	60%	{transform:translate(null,null);}
	70%	{transform:translate(null,null);}
	80%	{transform:translate(null,null);}
	90%	{transform:translate(null,null);}
	100%{transform:translate(null,null);}
}
*/
#path {
    -webkit-animation-duration: 5s;
    -webkit-animation-timing-function: linear;
    -webkit-animation-name:"translate";
    -webkit-animation-iteration-count: 1;
    width: 15px;
	height: 15px;
	position: absolute;
/* 	top: -7.5px; */
/* 	left: -7.5px; */
	background: #28B779;
	border-radius: 7.5px;
}
	</style>
</head>
<body class="page-header-fixed" style="background-color:#fff">
		<div class="page-content" style="margin-left:0px;margin-top:42px">
			<!-- BEGIN PAGE CONTAINER-->
			<div class="container-fluid">
				<div class="row-fluid">
					<div class="span12">
						<!-- BEGIN PAGE TITLE & BREADCRUMB-->
						<h3 class="page-title">
							初始页<small>demo1</small>
						</h3>
						<ul class="breadcrumb">
							<li>
								<i class="icon-home"></i>
								<a href="d_part1.jsp">初始页</a> 
								<i class="icon-angle-right"></i>
							</li>
							<li><a href="#">demo5</a></li>
						</ul>
						<!-- END PAGE TITLE & BREADCRUMB-->
					</div>
				</div>
				<!-- END PAGE HEADER-->
				<div class="portlet box green">
					<div class="portlet-title">
						<div class="caption"><i class="icon-reorder"></i>状态</div>
						<div class="tools">
									<a href="javascript:;" class="collapse"></a>
									<a href="javascript:;" class="remove"></a>
						</div>
					</div>
					<div class="portlet-body">
						<div id='topo'>
							<div id="path"></div>
						</div>
					</div>
				</div>
			</div>
			<!-- END PAGE CONTAINER-->    
		</div>
	<!-- END FOOTER -->
	<!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
	<!-- BEGIN CORE PLUGINS -->
	<script src="${ctx}js/jquery-1.10.2.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery-ui-1.10.1.custom.min.js" type="text/javascript"></script>      
	<script src="${ctx}js/bootstrap.min.js" type="text/javascript"></script>
	<!--[if lt IE 9]>
	<script src="${ctx}js/excanvas.min.js"></script>
	<script src="${ctx}js/respond.min.js"></script>  
	<![endif]-->   
	<script src="${ctx}js/jquery.slimscroll.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.blockui.min.js" type="text/javascript"></script>  
	<script src="${ctx}js/jquery.cookie.min.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.uniform.min.js" type="text/javascript" ></script>
	<script src="${ctx}js/jquery.flot.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.flot.resize.js" type="text/javascript"></script>
	<script src="${ctx}js/jquery.pulsate.min.js" type="text/javascript"></script>
	<script src="${ctx}js/date.js" type="text/javascript"></script>
	<script src="${ctx}js/app.js" type="text/javascript"></script>
	<script src="${ctx}js/index.js" type="text/javascript"></script>        
	<!-- END PAGE LEVEL SCRIPTS -->  
	<script>
		jQuery(document).ready(function() {    
		   App.init(); // initlayout and core plugins
		   Index.init();
		});
	</script>
	<!-- END JAVASCRIPTS -->
<script type="text/javascript">
var data;
$.ajax({
    url:"${ctx}app/topoController/getLink",    //请求的url地址
    dataType:"json",   //返回格式为json
    async:false,
    //data:{"id":"data"},    //参数值
    type:"POST",   //请求方式
    beforeSend:function(){
        //请求前的处理
    },
    success:function(da){
    	data =da;
    }
    });
			//从数据库获取网络拓扑数据
			function addPoint(id,x,y) {
				pointArray[id] = {'x':x,'y':y};
			}
			//网络拓扑
			function Topology(ele){
			    typeof(ele)=='string' && (ele=document.getElementById(ele));
			    var w=ele.clientWidth,
			        h=ele.clientHeight,
			        self=this;
			    var LayoutModulus = 800/(Math.sqrt(nodes.length));
			    this.force = d3.layout.force().gravity(.05).distance(LayoutModulus).charge(-2*LayoutModulus).size([w, h]);
			    this.nodes=this.force.nodes();
			    this.links=this.force.links();
			    this.clickFn=function(){};
			    this.vis = d3.select(ele).append("svg:svg")
			                 .attr("width", w).attr("height", h).attr("pointer-events", "all");
			    this.force.on("tick", function(x) {
			      self.vis.selectAll("g.node")
			          .attr("transform", function(d) { 
			        	  addPoint(d.id,d.x,d.y);
			        	  return "translate(" + d.x + "," + d.y + ")"; }		          
			          );
			      //坐标
			      self.vis.selectAll("line.link")
			          .attr("x1", function(d) { return d.source.x; })
			          .attr("y1", function(d) { return d.source.y; })
			          .attr("x2", function(d) { return d.target.x; })
			          .attr("y2", function(d) { return d.target.y; });
			    });
			}
			//根据浏览器内核获取规则集
			function findKeyframesRule(rule,browser) {
			    var ss = document.styleSheets;
			    for (var i = 0; i < ss.length; ++i) {
			    	switch(browser){
			    	case "webkit":
			        	for (var j = 0; j < ss[i].cssRules.length; ++j) {
			            	if (ss[i].cssRules[j].type == window.CSSRule.WEBKIT_KEYFRAMES_RULE
			            	 && ss[i].cssRules[j].name == rule) {return ss[i].cssRules[j]; }
			        }
			        break;
			    	case "moz":
				        for (var j = 0; j < ss[i].cssRules.length; ++j) {
				            if (ss[i].cssRules[j].type == window.CSSRule.MOZ_KEYFRAMES_RULE
				             && ss[i].cssRules[j].name == rule) {return ss[i].cssRules[j]; }
				        }
				        break;
			    	case "ms":
				        for (var j = 0; j < ss[i].Rules.length; ++j) {
				            if (ss[i].Rules[j].type == window.Rule.MS_KEYFRAMES_RULE
				             && ss[i].Rules[j].name == rule) {return ss[i].Rules[j]; }
				        }
				        break;
			    	case "o":
				        for (var j = 0; j < ss[i].cssRules.length; ++j) {
				            if (ss[i].cssRules[j].type == window.CSSRule.O_KEYFRAMES_RULE
				             && ss[i].cssRules[j].name == rule) {return ss[i].cssRules[j]; }
				        }
				        break;
			    	}
			    }
			    return null;
			}
			//感知数据路径显示
			function change(anim,dtl) {
				//获取浏览器内核
				var browserPrefix="";
				navigator.sayswho= (function(){
					var N = navigator.appName, ua = navigator.userAgent, tem;
					var M = ua.match(/(opera|chrome|safari|firefox|msie)\/?\s*(\.?\d+(\.\d+)*)/i);
					if(M && (tem = ua.match(/version\/([\.\d]+)/i))!= null) M[2] = tem[1];
						M = M? [M[1], M[2]]: [N, navigator.appVersion,'-?'];
						M = M[0];
					if(M == "Chrome") { browserPrefix = "webkit"; }
					if(M == "Firefox") { browserPrefix = "moz"; }
					if(M == "Safari") { browserPrefix = "webkit"; }
					if(M == "MSIE") { browserPrefix = "ms"; }
					if(M == "Opera") { browserPrefix = "o"; }
				})();
			  var keyframes = findKeyframesRule(anim,browserPrefix),
			      length = keyframes.cssRules.length;
			  //获取关键帧
			  var keyframeString = [];  
			  for(var i = 0; i < length; i ++)
			  {
			    keyframeString.push(keyframes.cssRules[i].keyText);
			  }
			  //去掉帧的百分符
			  var keys = keyframeString.map(function(str) {
			    return str.replace('%', '');
			  });
			  //删除规则集
			  for(var i = 0, j = keyframeString.length; i < j; i ++)
			  {
			    keyframes.deleteRule(keyframeString[i]);
			  }
		 		var da = new Array();
		 		da = ttd.split(",");
		 		if(browserPrefix == "webkit"){
		 		for(i=0;i<da.length;i++){
		 			var key = i*10;
		 			keyframes.insertRule(""+key+"%	{-"+browserPrefix+"-transform:translate("+pointArray[Number(da[i])].x+"px,"+pointArray[Number(da[i])].y+"px);}");
		 		}
		 		// 显示动画
				 path.style.display = "inherit";
				 path.style.webkitAnimationName = anim; 
				 setTimeout(function(){
					// Removes the animation so a new one can be set
					  path.style.webkitAnimationName = "none";
					  // Temporarily hides the circle
					  path.style.display = "none";
				 },dtl);
			  }
			  else if(browserPrefix == "moz"){
	 			  var token,style,sheet,rule,test;
	 			  //创建style对象，并获取关联的sheet对象
	 			  style=document.createElement("style");
	 			  document.head.appendChild(style);
	 			  sheet=style.sheet;
	 			  //创建一个名为test的keyframe（Moz需要前缀）
	 			  var token=window.MozCSSKeyframesRule?"-moz-":"";
	 			  sheet.insertRule("@"+token+"keyframes test {}",0);
	 			  test=sheet.cssRules[0];
	 			  //循环生成每一帧，并添加进test中
	 			var da = new Array();
		 		da = ttd.split(",");
	 			  for(var i=0;i<da.length;i++){
	 			    var x=pointArray[Number(da[i])].x,
	 			        y=pointArray[Number(da[i])].y;
	 			    //创建帧（方法有浏览器差异,保留）
	 			    test.appendRule.call(test,(i*10)+"% {}");
	 			    //设置帧样式
	 			    test.cssRules[i].style.transform=
	 			    test.cssRules[i].style.MozTransform=
	 			      "translateX("+x+"px) translateY("+y+"px)";
	 			  };
	 			    //创建div并添加基本样式
	 			    var div=document.createElement("div");
	 			    document.body.appendChild(div);
	 			    div.style.width="15px";
	 			    div.style.height="15px";
	 			    div.style.position="absolute";
	 			    div.style.top="0px";
	 			    div.style.left="0px";
	 			    div.style.background="teal";
	 			    div.style.borderRadius="7.5px";
	 			    //让div播放test这个动画
	 			    div.style.animation=
	 			    div.style.MozAnimation=
	 			      "test 5s linear 1";
	 			   setTimeout(function(){
	 			    	div.remove();
	 			    },dtl);
			  }
			  //IE10，未实现，保留
			  else if(browserPrefix == "ms"){				  
				  var token,style,sheet,test;
	 			  //创建style对象，并获取关联的sheet对象
	 			  style=document.createElement("style");
	 			  document.head.appendChild(style);
	 			  sheet=style.sheet;
	 			  //创建一个名为test的keyframe
	 			  var token=window.MsCSSKeyframesRule?"-moz-":"";
	 			  sheet.addRule("@"+token+"keyframes test","{}",0);
	 			  test=sheet.Rules[0];
	 			  //循环生成每一帧，并添加进test中
	 			  for(var i=0;i<=10;i++){
	 			    var x=pointArray[Number(da[i])].x,
	 			        y=pointArray[Number(da[i])].y;
	 			    //创建帧（方法有浏览器差异）
	 			    (test.insertRule||test.appendRule).call(test,(i*10)+"% {}");
	 			    //设置帧样式
	 			    test.Rules[i].style.transform=
	 			    test.Rules[i].style.MsTransform=
	 			      "translateX("+x+"px) translateY("+y+"px)";
	 			  };
	 			    //创建div并添加基本样式
	 			    var div=document.createElement("div");
	 			    document.body.appendChild(div);
	 			    div.style.width="15px";
	 			    div.style.height="15px";
	 			    div.style.position="absolute";
	 			    div.style.top="0px";
	 			    div.style.left="0px";
	 			    div.style.background="teal";
	 			    div.style.borderRadius="7.5px";
	 			    //让div播放test这个动画
	 			    div.style.animation=
	 			    div.style.MSAnimation=
	 			      "test 5s linear 1";
	 			    setTimeout(function(){
	 			    	sheet.deleteRule(0);
	 			    },dtl);
			  }
			}
			//增加节点
			Topology.prototype.addNode=function(node){
			    this.nodes.push(node);
			};
			Topology.prototype.addNodes=function(nodes){
			    if (Object.prototype.toString.call(nodes)=='[object Array]' ){
			        var self=this;
			        nodes.forEach(function(node){
			            self.addNode(node);
			        });
			    }
			};
			//增加连线
			Topology.prototype.addLink=function(source,target){
			    this.links.push({source:this.findNode(source),target:this.findNode(target)});
			};
			//增加多个连线
			Topology.prototype.addLinks=function(links){
			    if (Object.prototype.toString.call(links)=='[object Array]' ){
			        var self=this;
			        links.forEach(function(link){
			            self.addLink(link['source'],link['target']);
			        });
			    }
			};
			//查找节点
			Topology.prototype.findNode=function(id){
			    var nodes=this.nodes;
			    for (var i in nodes){
			        if (nodes[i]['id']==id ) return nodes[i];
			    }
			    return null;
			};
			//查找节点所在索引号
			Topology.prototype.findNodeIndex=function(id){
			    var nodes=this.nodes;
			    for (var i in nodes){
			        if (nodes[i]['id']==id ) return i;
			    }
			    return -1;
			};
			//点击事件
			Topology.prototype.setNodeClickFn=function(callback){
			    this.clickFn=callback;
			}
			//更新拓扑图状态信息
			Topology.prototype.update=function(browserPrefix){
			  var link = this.vis.selectAll("line.link")
			      .data(this.links, function(d) {
			    	  return d.source.id + "-" + d.target.id; });
			  link.enter().insert("svg:line", "g.node")
			      .attr("class", function(d){
			    	  return 'link';
			    	  //根据power显示不同的连线，保留
			         //return d['source']['status'] && d['target']['status'] ? 'link' :'link link_error';
			      });
			  link.exit().remove();
			  var node = this.vis.selectAll("g.node")
			      .data(this.nodes, function(d) { return d.id;});
			  var nodeEnter = node.enter().append("svg:g")
			      .attr("class", "node")
			      .call(this.force.drag);
			  //增加图片，可以根据需要来修改
			  //var self=this;
			  nodeEnter.append("svg:image")
			      .attr("class", "path")
			      .attr("xlink:href", function(d){
			         //根据类型来使用图片
			         var src = "";
			         if(d.type=="1"){src="/images/img/HTC.png" ;}//co
			         else if(d.type=="2"){ src="/images/img/HTC2.png" ;}//co2
			         else if(d.type=="3"){src="/images/img/HTS2.png" ;}//so2
			         else if(d.type=="4"){src="/images/img/HT.png" ;}//no2
			         else if(d.type=="5"){src="/images/img/HT.png" ;}//h2s
			         else if(d.type=="6"){src="/images/img/HT.png" ;}//ch4
			         else if(d.type=="7"){src="/images/img/HTD.png" ;}//fenchen
			         else if(d.type=="8"){src="/images/img/HTLO.png" ;}//03
			         else if(d.type=="0"){src="/images/img/HTL.png" ;}//telosb
			         return src;
			         /* return d.type=="0"?src="/images/img/HT.png":
			        	 (d.type=="1"?src="/images/img/HTC.png":
			        	 	(d.type=="2"?src="/images/img/HTC2.png":
			        	 		(d.type=="3"?src="/images/img/HTS2.png":
			        	 			(d.type=="4"?src="/images/img/wireless.png":
			        	 				(d.type=="5"?src="/images/img/wireless.png":
			        	 					(d.type=="6"?src="/images/img/wireless.png":
			        	 						(d.type=="7"?src="/images/img/wireless.png":src="/images/img/wireless.png")))))));*/
			      })
			      .attr("x", "-16px")
			      .attr("y", "-16px")
			      .attr("width", "32px")
			      .attr("height", "32px")
			      .on('click',function(d){
			    	  toShowJsp(d.id);
			      });
			  nodeEnter.append("svg:text")
			      .attr("class", "nodetext")
			      .attr("dx", 8)
			      .attr("dy", -18)
			      .text(function(d) { return d.id ;});
			  this.force.start();
				// Removes the animation so a new one can be set
			  path.style.webkitAnimationName = "none";
			  // Temporarily hides the circle
			  path.style.display = "none";
			};
			var ttd =new Array();
			var dtl;
			function onmessage(mesg) {
					var MSG = mesg.split(",");
					var FP = MSG[1].split(" ");
					var FPD = new Array;
					for(var i=0;i<10;i++){
						if(FP[i]!=null){
							FPD[i]=FP[i];}
						else{
							FPD[i]=FPD[i-1];}
					}
					ttd = MSG[0].concat(",",FPD);
					var temp_ttd = ttd.split(",");
					var path = document.getElementById('path');
					// Removes the animation so a new one can be set
					  path.style.webkitAnimationName = "none";
					  // Temporarily hides the circle
					  path.style.display = "none";
					  // Initializes change function
					dtl = FP.length*500+100;
					  changetopo();
					  setTimeout(function(){
						  change("translate",dtl);
						  },3000);					 
				};
				//根据感知数据更新网络拓扑
				function changetopo(){
					var da = new Array();
					da = ttd.split(",");
					var mylinks = topology.links;
					for(var i=0;i<(da.length-1);i++){
					mylinks.forEach(function(link,index){						
						if(link['source'].id == da[i]){
							if(topology.findNode(da[i])==null||topology.findNode(da[i+1])==null){
								return;
							}
							mylinks.splice(index,1);
							mylinks.push({source:topology.findNode(da[i]),target:topology.findNode(da[i+1])});
							}						
				    });}
					topology.update();
				}
				var pointArray = [];
				var nodes = new Array();
				var links = new Array();
				for(var i=0;i<data.length;i++){
					nodes.push({id:data[i].moteid_id,type:data[i].nodeType});
					//nodes.push({id:data[i].parent_ID});
					//links[i] = {source:data[i].moteid_ID,target:data[i].parent_ID};
				}
				for(var i=0;i<data.length;i++){
					for(var j=0;j<nodes.length;j++){
						if(data[i].parent_ID == nodes[j].id){
							links.push({source:data[i].moteid_id,target:data[i].parent_ID});
						}
						else{continue;}
					}
				}
			topology=new Topology('topo');
			topology.addNodes(nodes);
			topology.addLinks(links);
			topology.update();
			//跳转到数据展示页面
			function toShowJsp(node_id){
				document.getElementById("dataShowFrame").src="${ctx}app/nodeShowController/TopotoDataShow/"+node_id;
				$("#w").window("open");	
			}
</script>
</body>

</html>