<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@taglib  prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<script>
function goBack() {
    window.history.back()
}
</script>

<meta http-equiv="Content-Type"content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
tabletrth{
	color: white;
	background-color: black;
}
</style>
</head>
<body>
<center>
<h1 font style="color:red">Your Saved Application UserName and Password is</h1>
<c:if test="${!empty userList}">
<table border="1">
	<th>User Name</th>
	<th>password</th>
	<c:forEach items="${userList}" var="user">
			<tr><td><c:out value="${user.apsUserName}"/></td>
			<td><c:out value="${user.apsPassword}"/></td></tr>
	</c:forEach>
</table>
</c:if>
<h1><button onclick="goBack()">Go Back</button></h1>
</center>
</body>
</html>
