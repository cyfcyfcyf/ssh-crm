<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Frameset//EN" "http://www.w3c.org/TR/1999/REC-html401-19991224/frameset.dtd">
<HTML>
	<HEAD>
	<META http-equiv=Content-Type content="text/html; charset=utf-8">
	<link href="css/regist.css" rel="stylesheet" type="text/css" />
	<script type="text/javascript">
		window.onload = function() {
			if (window.parent != window) {// 如果是在框架中
				//就让框架页面跳转到登陆页面
				window.parent.location.href = "${pageContext.request.contextPath}/login.jsp";
			}
		};
	</script>
	</HEAD>
	<body>
		<div class="login_box">
			<div class="login_l_img"><img src="img/login-img.png" /></div>
			<div class="login">
				<div class="login_logo">
					<a href="javascript:void(0);"><img src="img/login_logo.png" /></a>
				</div>
				<div class="login_name">
					<p>用户注册</p>
				</div>

				<form action="${pageContext.request.contextPath}/UserAction_regist" method=post>
					<input name="user_code" type="text" id="user_code" placeholder="登陆名" />
					<input name="user_password" type="password" id="user_password" placeholder="密码" />
					<input name="user_name" type="text" id="user_name" placeholder="昵称" />
					<input value="注册" type="submit" style="width:100%;float:right" type="button">
				</form>
				<font color="red"><s:property value="error" /></font>

			</div>
			<div class="copyright">飞鹏软件有限公司 版权所有©2016-2018 技术支持电话：000-00000000</div>
		</div>
	</body>
</HTML>
