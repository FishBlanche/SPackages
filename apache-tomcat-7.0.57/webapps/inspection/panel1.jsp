<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link href="${ctx}css/panel.css" rel="stylesheet" type="text/css" />
<style>
html { overflow-x:hidden; }
html { overflow-y:hidden; }

</style>


</head>
<body>
<div id="formbackground" style="z-index:-100;position:absolute;top:0;left:0;right:0;background-size:100% 100%;">
<img src="/inspection/image/welcome page/back3.png" style="width:100%;height:100%"></div>
<div style="align:center;position:absolute;margin-top:1;left:0;right:0;background-size:100% 100%;">
<table height="100%" width="100%" border="0" cellspacing="0" cellpadding="0" >
  <tr >
     <td colspan="2" width="100%" height="49">
     <table cellspacing="0"   border="0" cellspacing="0" cellpadding="0" height="49" width="100%">
     <tr>
         <td></td>
     </tr>
     </table>
      </td>
  </tr>
  
  <tr >
      <td width="20%">
      <table width="100%"  border="0" cellspacing="0" cellpadding="1">
      
       <tr >
  <td  >
  <div  id="div3" style="background-image:url('/inspection/image/welcome page/003.png')"  >
  <div  id="div1" style="margin-top:0"></div>
      <div   id="div2">  视频监测系统</div>
          </div>
          </td>
          </tr>
          <tr>
       <td >
  <div  id="div3" style="background-image:url('/inspection/image/welcome page/back01.png')"  >
  <div  id="div1" style="margin-top:0"></div>
      <div   id="div2" > RFID智能自行车智能管理系统 </div>
          </div>
          </td>
          </tr>
          <tr>
           <td >
  <div  id="div3" style="background-image:url('/inspection/image/welcome page/003.png')"  >
  <div  id="div1" style="margin-top:0"></div>
      <div   id="div2" > 城市智能停车管理及引导系统</div>
          </div>
          </td>
          </tr>
          <tr>
           <td >
  <div  id="div3" style="background-image:url('/inspection/image/welcome page/003.png')"  >
  <div  id="div1" style="margin-top:0"></div>
      <div   id="div2" >  实践教学巡查系统 </div>
          </div>
          </td>
          </tr>
          <tr>
           <td >
  <div  id="div3" style="background-image:url('/inspection/image/welcome page/003.png')"  >
  <div  id="div1" style="margin-top:0"></div>
      <div   id="div2" >  视频监测系统 </div>
          </div>
          </td>
          </tr>
      </table>
      
      
      
      </td>
      
     
      
     <td width="80%" rowspan="6"> </td>
       
</tr>
   </table>
</div>
<script type="text/javascript">
$(function(){
    $('#formbackground').height($(window).height());
    $('#formbackground').width($(window).width());
});
</script>

 <script language="javascript">
        function dowith() {
          
            var img = document.getbyID ("img1");
            if (img.src == "/inspection/image/welcome page/sn2.png") {
                img.src = "/inspection/image/welcome page/sn1.png";
             
            }
            else if (img.src == "/inspection/image/welcome page/sn1.png") {
                img.src = "/inspection/image/welcome page/sn2.png";
               
            }
        }
    </script>
</body>
</html>