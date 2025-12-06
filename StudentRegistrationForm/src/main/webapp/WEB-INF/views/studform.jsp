
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Registration Form</title>


	<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	padding: 40px;
}

.container {
	width: 420px;
	margin: auto;
	background: #fff;
	padding: 25px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px #aaa;
}

h1 {
	text-align: center;
	color: #333;
	margin-bottom: 25px;
}

ul {
	list-style-type: none;
	padding: 0;
}

li {
	margin-bottom: 15px;
}

label {
	font-weight: bold;
	display: block;
	margin-bottom: 5px;
	color: #222;
}

input[type="text"],
select {
	width: 100%;
	padding: 8px;
	border: 1px solid #ccc;
	border-radius: 5px;
	font-size: 14px;
}

input[type="radio"], input[type="checkbox"] {
	margin-right: 5px;
}

input[type="submit"] {
	background-color: #4CAF50;
	color: white;
	padding: 10px;
	width: 100%;
	border: none;
	border-radius: 5px;
	cursor: pointer;
	font-size: 16px;
}

input[type="submit"]:hover {
	background-color: #45a049;
}
</style>


</head>
<body>
	<div class="container">
		<h1>Student Registration Form</h1>

	<form:form action="save" method="post" modelAttribute="stud">

		<ul>
			<li>
			<label>First Name:</label>
			<form:input path="fname" placeholder="Enter first Name: " />
			</li>

			<li>
			<label>Last Name:</label> 
			<form:input path="lname" placeholder="Enter Last Name: " /></li>
			<li>
			
			<label>Gender:</label>
			<form:radiobutton path="gender" value="Male" />Male<br>
			<form:radiobutton path="gender" value="Female" />Female
			</li>


			<li>
			 <label>Courses:</label>
			 <form:checkbox path="courses" value="C" />C<br>
			 <form:checkbox path="courses" value="CPP" />CPP<br>
			 <form:checkbox path="courses" value="Java" />JAVA<br> 
			 <form:checkbox	path="courses" value="Python" />PYTHON <br>
			 </li>

			<li><label>Year of Passing:</label>
					<form:select path="year">
					<form:option value="2023" label="2023" />
					<form:option value="2024" label="2024" />
					<form:option value="2025" label="2025" /> 
				</form:select></li>

			<li>
			<input type="submit" value="REGISTER">
			</li>
			
		</ul>

	</form:form>

</body>
</html>
