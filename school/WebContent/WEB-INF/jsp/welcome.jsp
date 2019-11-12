<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
	<head>
		<title>Welcome</title>
		<link rel="stylesheet" href="WEB-INF/css/welcome.css">
	</head>
	<body>
		<form action="students" method="post">
			<input type="hidden" name="source" value="welcome">
			<div id = "button">
				<button type="submit" class="btn btn-primary btn-block">Display students</button>
			</div>
		</form>
		<hr />
		<!-- Display Students -->
		<div id="studentslist" class="studentslist_format">
			<c:forEach items="${students}" var="student">
				<br />
 				${student}
			</c:forEach>
		</div>
	</body>
</html>