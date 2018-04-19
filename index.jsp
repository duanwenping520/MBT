<%@page import="com.synesoft.ump.domain.model.SysParam"%>
<%@page import="com.synesoft.ump.domain.model.UserOrgInf"%>
<%@page import="com.synesoft.common.context.CommonResourceHelper"%>
<%@page import="com.synesoft.common.*"%>
<%@page import="com.synesoft.common.constants.ContextConst"%>
<%@page import="com.synesoft.ump.domain.model.UserInf"%>
<%@page import="com.synesoft.ump.domain.model.OrgInf"%>
<%@page import="com.synesoft.common.utils.*"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title><tiles:insertAttribute name="title"/></title>
		<tiles:insertAttribute name="header"/>
		<style type="text/css">
			html {
				height: 100%;
			}
		</style>
		<script type="text/javascript">
			$(function(){
				var h = document.body.clientHeight - 101 - 28;
				$("#myFrame").attr("height",h);
				$("#header1").css("width",document.body.clientWidth);
				$("#header2").css("width",document.body.clientWidth);
				$("#header3").css("width",document.body.clientWidth);
				$(document).click(function() {
					$(".dropdown-toggle").parent().removeClass('open');
				});
			});
			// 退出系统
			function logout() {
				if (confirm('是否确定退出系统？')) {
					top.window.location="${pageContext.request.contextPath}/logout";
				}
			}
		</script>
	</head>
	<body style="height:100%; overflow-x: hidden; overflow-y: hidden;" onunload="top.window.location='${pageContext.request.contextPath}/logout';">
		<%
			// 获取当前用户
			UserInf user = ContextConst.getCurrentUser();
			OrgInf orgInf = ContextConst.getOrgInfByUser();
			if(orgInf==null){
				response.sendRedirect(request.getServletContext().getContextPath());
			}
			if(user != null && !"".equals(user.getUserid()) && !"".equals(user.getPassword())) {
				if(orgInf != null) {
					user.setLoginorg(user.getLoginorg().trim());
					pageContext.setAttribute("user", user);
					pageContext.setAttribute("orgInf", orgInf);
					String nowWorkDate=DateUtil.getNowOutputDate();
					String menuDisplay=((SysParam)CommonResourceHelper.getSysParam("UMP","MENU_DISPLAY")).getParamVal();
		%>
	
	<div id="id_showMsg" style="display: none"> 
		<br /><br />
		<div id="id_result">
			<t:messagePanel messagesAttributeName="errmsg" messagesType="error" />
			<t:messagePanel messagesAttributeName="infomsg" messagesType="info" />
			<t:messagePanel messagesAttributeName="successmsg" messagesType="success" />
			<spring:hasBindErrors name="loginForm" >
				<form:form commandName="loginForm">
					<div class="alert alert-error">
						<form:errors path="*" cssStyle="color:red"></form:errors>
					</div>
				</form:form>
			</spring:hasBindErrors>
		</div>
		<br />
	</div>
	
	<div class="container-fluid">
		<div class="navbar navbar-fixed-top" style="background-color: #eee;">
			<div class="row-fluid main_header_tb1" style="height:<%if("1".equals(menuDisplay)||"3".equals(menuDisplay)){ %>60px;<%}else{%>30px<%}%>margin:0px;position: relative;" id="header1">
				<%-- <div class="span3" style="margin-left:2px; width:181px;margin-top:7px;margin-bottom:5px;position: relative;float: left;">
					<img src="${pageContext.request.contextPath}/resources/vendor/img/logo.jpg" style="display:block;">
				</div> --%>
				<div class="span5" style="margin-left:2px;position: relative;float: left;padding:0;white-space:nowrap;overflow:hidden;">
					<h2 style="color: #EFEFED; font-size: 20px;" ><tiles:insertAttribute name="title"/></h2>
				</div>
	   			
	   			<div style="margin-top:0px;margin-right:1px;position:relative;float:right;padding:0;white-space:nowrap;overflow:hidden;">
	        		<table align="right" border="0" cellspacing="0" cellpadding="0"  style="font-size: 9pt;" >
	          			<tr>
		          			<td width="21px" ><img src="${pageContext.request.contextPath}/resources/vendor/img/index.gif" width="20" /></td>
		          			<td nowrap >
		          				<a target="_menuTarget" href="rightFrame" style="color: #EFEFED;">首页</a>
		          				&nbsp;&nbsp;
		          			</td>
		          			<td width="21px" ><img src="${pageContext.request.contextPath}/resources/vendor/img/return.gif" width="20" /></td>
		          			<td nowrap >
		          				<a href="javascript:logout();" style="color: #EFEFED;">退出</a>
		          				&nbsp;&nbsp;
		        			</td>
		        		</tr>
	      			</table><br><br>
	      			<table border="0" cellspacing="0" cellpadding="0" style="font-size: 9pt;" align="right">
						<tr>
							<td nowrap>
						     	<span class="STYLE1">操作员ID:</span>
						     	<span class="STYLE2"><%=user.getUserid() %></span>
						     	&nbsp;&nbsp;&nbsp;&nbsp;
						     	<span class="STYLE1">操作员名称:</span>
						     	<span class="STYLE2"><%=user.getUsername() %></span>
						     	&nbsp;&nbsp;&nbsp;&nbsp;
						     	<span class="STYLE1">当前系统日期:</span>
				     			<span class="STYLE2"><%=nowWorkDate%></span>
						     	&nbsp;&nbsp;&nbsp;&nbsp;
							</td>
						</tr>
					</table>
				</div>
			</div>
			<!-- 1-显示头部菜单，2-显示左侧菜单，3-显示头部菜单和左侧菜单 --> 
			<%if("1".equals(menuDisplay)||"3".equals(menuDisplay)){ %>
			<div class="row-fluid"   id="header3">
				<div class="span12">
	    			<div class="navbar-inner" >
	    				<%=ContextConst.getMenuList() %> 
	    			</div>
	    		</div>
	   		</div>
			<%}%>
		</div>
	</div>
	
	<div style="<%if("1".equals(menuDisplay)||"3".equals(menuDisplay)){ %>margin-top:105px;<%}else{%>margin-top:65px;<%} %>">
		<iframe id="myFrame" src="main" width="100%" frameborder="0"></iframe>
	</div>
	<%}} %>
</body>
</html>
	