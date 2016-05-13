<%@ page language="java" pageEncoding="UTF-8"
	contentType="text/html; charset=UTF-8"%>
${msg}
<script type="text/javascript" charset="utf-8">
	try{parent.$.messager.progress('close');}catch(e){}
	var href=window.location.href;
	href=href.substring(0,href.indexOf("app"))+"login.jsp";
	window.location.href=href;
</script>