<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin-Home</title>
<style>
 .header-container {
	background-color: Red;
	
}
.header-list {
	display: flex;
	justify-content: space-around;
	background-color: Cyan;
	padding: 5px;
}
.header-item {
	padding: 5px;
	background-color: white;
}
</style>
</head>
<body>
<div class="header-container">
	<ul class="header-list" style="list-style-type:none;">
		<li class="header-item"><a href="studentMasterList.jsp">Student List</a></li>
		<li class="header-item"><a href="teacherMasterList.jsp">Teacher List</a></li>
		<li class="header-item"><a href="classMasterList.jsp" >Class List</a></li>
		<li class="header-item"><a href="addStudent.jsp" >Add Student</a></li>
		<li class="header-item"><a href="addTeacher.jsp" >Add Teacher</a></li>
		<li class="header-item"><a href="assignTeacher.jsp" >Assign</a></li>
		<li class="header-item"><a href="index.html">Logout</a></li>
	</ul>
	</div>
</body>
<script>

</script>
</html>