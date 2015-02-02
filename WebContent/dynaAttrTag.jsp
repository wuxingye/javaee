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
<h2>下面显示的是自定义标签中的内容</h2>
<h4>制定两个属性</h4>
<mytag:dynaAttr name="crazyit" url="crazyit.org"/><br/>
<h4>指定四个属性</h4>
<mytag:dynaAttr 书名="疯狂java讲义" 价格="99.0" 出版时间="2008年" 描述="java图书"/><br/> 
</body>
</html>