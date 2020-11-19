<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>ADD NEW</title>
<style>
 .header-container {
	background-color: blue;
}
.header-list {
	display: flex;
	justify-content: space-around;
	background-color: blue;
	padding: 5px;
}
.header-item {
	padding: 5px;
	background-color: white;
}
</style>
</head>
<h1>ADD NEW TEACHER</h1>
<body>
<form name="addTeacher" action="addNewTeacher.jsp" method="post">
  <label for="fname">Name:</label>
  <input type="text" id="fname" name="tch_Name"><br><br>
   <label for="gender">Gender:</label>
  <input type="text" id="gender" name="tch_Gender"><br><br>
    <button type= "submit"> Save </button>
</form>
	
</body>
</html>
