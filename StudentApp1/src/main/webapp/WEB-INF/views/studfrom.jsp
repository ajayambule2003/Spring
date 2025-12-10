<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!--  -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Form</title>
<link rel="stylesheet" href="<c:url value='/css/studfrom.css'/>">

</head>
<body>
	<h1>Registration Page</h1>

	<form:form action="save" method="post" modelAttribute="stud">
		<label> Id: </label>
		<form:input path="id" />
		<br>
		<label>Name: </label>
		<form:input path="name" />
		<br>
		<label>Marks: </label>
		<form:input path="marks" />
		<br>
		<input type="submit" value="save">

	</form:form>
</body>
</html>