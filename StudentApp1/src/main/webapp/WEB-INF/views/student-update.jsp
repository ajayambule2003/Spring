<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>UPDATE</title>
<link rel="stylesheet"
	href="<c:url value='/css/student-update.css'/>">

</head>
<body>

	<h1>STUDENT UPDATE FORM</h1>



	<hr>
	<form:form action="${pageContext.request.contextPath }/students/update"
		method="get" modelAttribute="stud">
		<label> Id</label>
		<form:input path="id" readonly="true" />
		<br>
		<label> Name</label>
		<form:input path="name" />
		<br>
		<label> Marks</label>
		<form:input path="marks" />
		<br>
		<input type="submit" value="UPADTE">

	</form:form>


</body>
</html>