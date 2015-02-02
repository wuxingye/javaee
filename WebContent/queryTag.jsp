<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://xingye.shu/taglib" prefix="mytag"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<mytag:query user="root" url="jdbc:mysql://localhost:3306/weixin"
		pass="wugroup" driver="com.mysql.jdbc.Driver" sql="select * from user" />
</body>
</html>