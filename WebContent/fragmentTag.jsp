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
	<mytag:fragment>
		<jsp:attribute name="fragment">
		<mytag:helloWorld />
	</jsp:attribute>
	</mytag:fragment>
	<br />
	<mytag:fragment>
		<jsp:attribute name="fragment">
		${pageContext.request.remoteAddr}
	</jsp:attribute>
	</mytag:fragment>
</body>
</html>