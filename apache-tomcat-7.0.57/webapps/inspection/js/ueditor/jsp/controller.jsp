<%@ page language="java" contentType="text/html; charset=UTF-8"
	import="com.baidu.ueditor.ActionEnter"
    pageEncoding="UTF-8"%>
<%@ page trimDirectiveWhitespaces="true" %>
<%

    request.setCharacterEncoding( "utf-8" );
	response.setHeader("Content-Type" , "text/html");
	
	String rootPath = application.getRealPath( "/" );
	//rootPath = rootPath.replace("webapps\\inspection\\", "") + "upload\\";
	//System.out.println("当前读取路径："+rootPath);
	out.write( new ActionEnter( request, rootPath ).exec() );
	
%>