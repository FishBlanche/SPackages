<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="/common/header.jsp"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
   <title>Metronic | Form Stuff - Form Validation</title>
   <meta http-equiv="X-UA-Compatible" content="IE=edge">
   <meta content="width=device-width, initial-scale=1.0" name="viewport" />
   <meta content="" name="description" />
   <meta content="" name="author" />
   <meta name="MobileOptimized" content="320">
   <!-- BEGIN GLOBAL MANDATORY STYLES -->          
   <link href="${ctx}css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/uniform.default.css" rel="stylesheet" type="text/css"/>
   <!-- END GLOBAL MANDATORY STYLES -->
   <!-- BEGIN PAGE LEVEL STYLES --> 
   <link rel="stylesheet" type="text/css" href="${ctx}css/select2_metro.css" />
   <link rel="stylesheet" type="text/css" href="${ctx}css/bootstrap-wysihtml5.css" />
   <!-- END PAGE LEVEL SCRIPTS -->
   <!-- BEGIN THEME STYLES --> 
   <link href="${ctx}css/style-metronic.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/style.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/style-responsive.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/plugins.css" rel="stylesheet" type="text/css"/>
   <link href="${ctx}css/default.css" rel="stylesheet" type="text/css" id="style_color"/>
   <link href="${ctx}css/custom.css" rel="stylesheet" type="text/css"/>
   <!-- END THEME STYLES -->
   <link rel="shortcut icon" href="favicon.ico" />
   <style type="text/css">
	   body {
			background-color: aliceblue;
		}
		
   </style>
</head>
<body class="page-header-fixed"   style="">
	<div class="page-content" style="margin-left: 0px; padding-top: 1.5%;margin-top: 42px;">
  	   <!-- BEGIN PAGE HEADER-->   
         <div class="row" >
            <div class="col-md-12">
               <!-- BEGIN PAGE TITLE & BREADCRUMB-->
               <h3 class="page-title"  style="margin-left: 41px;">
                 添加 实验记录信息
               </h3>
               <ul class="page-breadcrumb breadcrumb" style="margin-left: 42px;">
                  <li>
                     <i class="icon-home"></i>
                     <a style="text-decoration:none" href="#">添加实验记录信息</a>                  
                  </li>          
               </ul>
               <!-- END PAGE TITLE & BREADCRUMB-->
            </div>
         </div>
    <!-- END PAGE HEADER-->
    <!-- BEGIN PAGE CONTENT-->
         <div class="row"  style="margin-left: 20px;margin-right: 20px;">
            <div class="col-md-12">
               <!-- BEGIN VALIDATION STATES-->          
               <div class="portlet box blue">
                  <div class="portlet-title">
                     <div class="caption"><i class="icon-reorder"></i>实验信息记录</div>
                     <div class="tools">
                        <a href="javascript:;" class="collapse"></a>
                     </div>
                  </div>
                  <div class="portlet-body">
                  <form action="" method="post" id="form1" name="form1">
					<input type="hidden" id="id" name="id" value="${id}"/>
					<input type="hidden" id="testContent"  name="testContent"/>
					<dl>
						<dd>
							<span class="title">实验班级:</span>
							<input
								name="testClass" id="testClass" type="text" value="${Test_message.testClass}"
								style="width: 12%; height: 30px;margin-left:5px" />
								<span id="rn" class="onshow"></span>
							<span class="title" style="margin-left:15px">授课老师:</span>
 							<input
								name="teacherName" id="teacherName" type="text" value="${Test_message.teacherName}"
								style="width: 12%; height: 30px;margin-left:5px;" />
								<span id="rn" class="onshow"></span>
							<span class="title" style="margin-left:15px">应到人数:</span>
							<input
								name="should" id="should" type="text" value="${Test_message.should}"
								style="width: 12%; height: 30px;margin-left:5px" />
								<span id="rn" class="onshow"></span>
							<span class="title" style="margin-left:15px">实到人数:</span>
 							<input
								name="actual" id="actual" type="text" value="${Test_message.actual}"
								style="width: 12%; height: 30px;margin-left:5px" />
								<span id="rn" class="onshow"></span>
							<span class="title" style="margin-left:15px">实验名称:</span>
 							<input
								name="testName" id="testName" type="text" value="${Test_message.testName}"
								style="width: 12%; height: 30px;margin-left:5px" />
								<span id="rn" class="onshow"></span>
						</dd>
						
						<dd>
							<span class="title">缺席名单:</span><textarea name="tList" id="tList" style="margin-left:10px;width:89%">${Test_message.tList}</textarea>
							<span id="rn" class="onshow"></span>
						</dd>
					</dl>
				</form>
						<!-- 编辑器 -->
						<script id="editor" type="text/plain" style="width:100%;height:50%;"></script>
                  </div>
               </div>
                       <button class="btn btn-primary" type="button" onclick="add()">保存</button>
                       <button class="btn btn-primary" type="button" onclick="Back()" style="margin-left: 20px;">关闭</button>
               <!-- END VALIDATION STATES-->
            </div>
         </div>
      </div>
   <!-- BEGIN JAVASCRIPTS(Load javascripts at bottom, this will reduce page load time) -->
   <!-- BEGIN CORE PLUGINS -->   
   <!--[if lt IE 9]>
   <script src="assets/plugins/respond.min.js"></script>
   <script src="assets/plugins/excanvas.min.js"></script> 
   <![endif]-->   
   <script src="${ctx}js/jquery-1.10.2.min.js" type="text/javascript"></script>
   <script src="${ctx}js/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
   <script src="${ctx}js/bootstrap.min.js" type="text/javascript"></script>
   <script src="${ctx}js/twitter-bootstrap-hover-dropdown.min.js" type="text/javascript" ></script>
   <script src="${ctx}js/jquery.slimscroll.min.js" type="text/javascript"></script>
   <script src="${ctx}js/jquery.blockui.min.js" type="text/javascript"></script>  
   <script src="${ctx}js/jquery.cookie.min.js" type="text/javascript"></script>
   <script src="${ctx}js/jquery.uniform.min.js" type="text/javascript" ></script>
   <!-- END CORE PLUGINS -->
   <!-- BEGIN PAGE LEVEL PLUGINS -->
   <script type="text/javascript" src="${ctx}js/jquery.validate.min.js"></script>
   <script type="text/javascript" src="${ctx}js/additional-methods.min.js"></script>
   <script type="text/javascript" src="${ctx}js/select2.min.js"></script>
   <script type="text/javascript" src="${ctx}js/wysihtml5-0.3.0.js"></script> 
   <script type="text/javascript" src="${ctx}js/bootstrap-wysihtml5.js"></script>
   <script type="text/javascript" src="${ctx}js/ckeditor.js"></script>
   <!-- END PAGE LEVEL PLUGINS -->
   <!-- BEGIN PAGE LEVEL STYLES -->
   <script src="${ctx}js/app.js"></script>
   <script src="${ctx}js/form-validation.js"></script> 
   <!-- END PAGE LEVEL STYLES -->    
   <!-- 编辑器 -->
    <script type="text/javascript" charset="utf-8" src="${ctx}js/ueditor/ueditor.config.js"></script>
    <script type="text/javascript" charset="utf-8" src="${ctx}js/ueditor/ueditor.all.min.js"> </script>
    <!--建议手动加载语言，避免在ie下有时因为加载语言失败导致编辑器加载失败-->
    <!--这里加载的语言文件会覆盖你在配置项目里添加的语言类型，比如你在配置项目里配置的是英文，这里加载的中文，那最后就是中文-->
    <script type="text/javascript" charset="utf-8" src="${ctx}js/ueditor/zh-cn/zh-cn.js"></script>
   <script>
      jQuery(document).ready(function() {   
         // initiate layout and plugins
         App.init();
         FormValidation.init();
      });
      
    //实例化编辑器
      var ue = UE.getEditor('editor');
      var value = '${message}';
      ue.addListener("ready", function () {
    	  	ue.setContent(value);
      });
    
    //保存
    function add(){
    	//验证
  		var testClass = $("#testClass").val();
  		if(testClass=="" || testClass==null){
  			alert("实验班级不能为空！");
  			$("#testClass").focus();
  			return false;
  		}
  		var teacherName = $("#teacherName").val();
  		if(teacherName=="" || teacherName==null){
  			alert("授课老师不能为空！");
  			$("#teacherName").focus();
  			return false;
  		}
  		var should = $("#should").val();
  		if(should=="" || should==null){
  			alert("应到人数不能为空！");
  			$("#should").focus();
  			return false;
  		}
  		if(!/^[0-9]*$/.test(should)){  
  	        alert("应到人数必须是数字!"); 
  	        $("#should").focus();
			return false;
  	    } 
  		var actual = $("#actual").val();
  		if(actual=="" || actual==null){
  			alert("实到人数不能为空！");
  			$("#actual").focus();
  			return false;
  		}
  		if(!/^[0-9]*$/.test(actual)){  
  	        alert("实到人数必须是数字!"); 
  	        $("#actual").focus();
			return false;
  	    } 
  		if(should < actual){
  			alert("实到人数应该小于应到人数！");
  		    $("#actual").focus();
 			return false;
  		}
  		var testName = $("#testName").val();
  		if(testName=="" || testName==null){
  			alert("实验名称不能为空！");
  			$("#testName").focus();
  			return false;
  		}
  		var tList = $("#tList").val();
  		if(tList=="" || tList==null){
  			alert("缺席人名单不能为空！");
  			$("#tList").focus();
  			return false;
  		}
  		$("#testContent").val(UE.getEditor('editor').getContent());
  		var testContent=UE.getEditor('editor').getContent();
        if (testContent == null || testContent == "") {
            alert("实验记录不能为空！");
            $("#testContent").focus();
  			return false;
        }
  		//保存
  		 form1.action = "add";
         form1.submit();
    }
   
    function Back(){
    	window.location.href='${ctx}app/experimentalController/toJsp';
    }
   </script>
   <!-- END JAVASCRIPTS -->  
</body>
</html>