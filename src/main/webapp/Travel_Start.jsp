<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		String viewPage = request.getContextPath() + "/list.tv";
		System.out.println("viewPage : " + viewPage); // viewPage : /ex/list.tv
		// http://localhost:8080/ex/list.tv
		response.sendRedirect(viewPage);
	%>

</body>
</html>