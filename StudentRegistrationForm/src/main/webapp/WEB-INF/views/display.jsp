<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Student Details</title>

<style>
body {
	font-family: Arial, sans-serif;
	background-color: #f2f2f2;
	padding: 40px;
}

.container {
	width: 450px;
	margin: auto;
	background: white;
	padding: 25px;
	border-radius: 10px;
	box-shadow: 0px 0px 10px #aaa;
}

h1 {
	text-align: center;
	color: #333;
	margin-bottom: 20px;
}

table {
	width: 100%;
	border-collapse: collapse;
	font-size: 16px;
}

th, td {
	text-align: left;
	padding: 10px;
	border-bottom: 1px solid #ddd;
}

th {
	width: 40%;
	color: #333;
}

td {
	color: #555;
}

.highlight {
	color: #2e8b57;
	font-weight: bold;
}

a {
	display: block;
	text-align: center;
	margin-top: 20px;
	text-decoration: none;
	color: #4CAF50;
	font-weight: bold;
}

a:hover {
	color: #2e8b57;
}
</style>
</head>

<body>
	<div class="container">
		<h1>Student Details</h1>
		<table>
			<tr>
				<th>First Name:</th>
				<td class="highlight">${stud.fname}</td>
			</tr>
			<tr>
				<th>Last Name:</th>
				<td class="highlight">${stud.lname}</td>
			</tr>
			<tr>
				<th>Gender:</th>
				<td class="highlight">${stud.gender}</td>
			</tr>
			<tr>
				<th>Courses:</th>
				<td class="highlight"><c:forEach var="course"
						items="${stud.courses}">
						${course}<br>
					</c:forEach></td>
			</tr>
			<tr>
				<th>Year Of Passing:</th>
				<td class="highlight">${stud.year}</td>
			</tr>
		</table>

		<a href="open">← Register Another Student</a>
	</div>
</body>
</html>
