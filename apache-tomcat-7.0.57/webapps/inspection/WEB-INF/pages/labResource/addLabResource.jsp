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
                  实验室资源编辑
               </h3>
               <ul class="page-breadcrumb breadcrumb" style="margin-left: 42px;">
                  <li>
                     <i class="icon-home"></i>
                     <a href="${ctx}index.jsp"  target="_blank">实验室资源编辑</a>                     
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
               <div class="portlet box blue" style="margin-bottom: 2px;">
                  <div class="portlet-title">
                     <div class="caption"><i class="icon-reorder"></i>实验室资源编辑</div>
                     <div class="tools">
                        <a href="javascript:;" class="collapse"></a>
                     </div>
                  </div>
                  <div class="portlet-body ">
                  <span style="font-size: 15;">实验室资源名:</span><input type="text" id="labname" name="labname" value="${rname}" style="height: 30px;"/>
						<!-- 编辑器 -->
<!-- 						<script id="editor" type="text/plain" style="width:100%;height:50%;"></script> -->
						<textarea name="editor" id="editor" style="width:100%;height:50%;"></textarea>
                  </div>
                  <form  id="content_form" action="${ctx}app/addLabResourceController/add" method="post">
                  		<input type="hidden"  name="id"  value="${id}">
                  		
                  		<input type="hidden" id="r_name"  name="r_name" />
                  		<input type="hidden" id="r_intro"  name="r_intro"/>
                  </form>
               </div>
                       <button class="btn btn-primary" type="button"  onclick="add()" >保存</button>
                       <button class="btn btn-primary" type="button"  onclick="returnBack()" style="margin-left: 20px;">返回列表</button>
<!--                        <a href="" style="margin-left: 1%;text-decoration: none;"><font style="font-weight: 900;font-size: 18;color: white;"></font></a> -->
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
      var ue = UE.getEditor('editor',{
    	     //这里可以选择自己需要的工具按钮名称,此处仅选择如下五个
          //focus时自动清空初始化时的内容
          autoClearinitialContent:true
      });
      var value = '${message}';
      ue.addListener("ready", function () {
    	  	ue.setContent(value);
      });
    
    //保存
    function add(){
    	
    	$("#r_intro").val(UE.getEditor('editor').getContent());
    	$("#r_name").val($("#labname").val());
        if ($("#labname").val() == null || $("#labname").val() == "") {
            alert("内容不能为空");
            $("#labname").focus();
            return;
        }
        if ($("#r_intro").val() == null || $("#r_intro").val() == "") {
            alert("内容不能为空");
            return;
        }
       $("#content_form").submit();
    }

    function returnBack(){
    	window.location.href='${ctx}app/labResourceController/tojsp';
    }
   </script>
   <!-- END JAVASCRIPTS -->  
</body>
</html>