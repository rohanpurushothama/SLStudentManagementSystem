
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="phase2project.DatabaseConnection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>
<%String selectedClass = request.getParameter("classkey"); 
ResultSet resultSet = null;%>


<!-- FOR STUDENT IN CLASS LIST -->

<h2 align="center"><font><strong>STUDENT LIST</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">

<tr bgcolor="cyan">
<td><b>STUDENT ID</b></td>
<td><b>STUDENT NAME</b></td>
<td><b>STUDENT LOCATION</b></td>
<td><b>STUDENT GENDER</b></td>
<td><b>STUDENT CLASS</b></td>
</tr>

<%
try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	String classSelectionStd = "SELECT * FROM studentdetails WHERE className = ";
	
	resultSet = st.executeQuery(classSelectionStd + "'" +selectedClass+ "'");
	while(resultSet.next()){
		%>
<tr bgcolor="white">

	<td><%=resultSet.getString("std_Id") %></td>
	<td><%=resultSet.getString("std_Name") %></td>
	<td><%=resultSet.getString("std_Location") %></td>
	<td><%=resultSet.getString("std_Gender") %></td>
	<td><%=resultSet.getString("className") %></td>

</tr>
<%
	}
	}
catch(SQLException e){
out.println(e);
}
%>

</table>

<!-- FOR TEACHER IN CLASS LIST -->

<h2 align="center"><font><strong>TEACHERS LIST OF CLASS </strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">

<tr bgcolor="cyan">
<td><b>TEACHER ID</b></td>
<td><b>CLASS</b></td>
</tr>

<%

try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	// classPreparation = " SELECT teacherdetails.tch_Id, teacherdetails.tch_Name, teacherdetails.tch_Gender, teacherclassdetails.teacherid, teacherclassdetails.className FROM teacherdetails INNER JOIN  teacherclassdetails ON teacherdetails.tch_Id = teacherclassdetails.teacherid;";
	String classSelectionTch = " SELECT * FROM teacherclassdetails WHERE className = ";
	//st.executeQuery(classPreparation);
	resultSet = st.executeQuery(classSelectionTch + "'" +selectedClass+ "'");
	while(resultSet.next()){
		%>
<tr bgcolor="white">
	<td><%=resultSet.getString("teacherid") %></td>
	<td><%=resultSet.getString("className") %></td>
</tr>
<%
	}
	}	
catch(SQLException e){
out.println(e);
}
%>

</table>

<!-- FOR SUBJECTS IN CLASS -->

<h2 align="center"><font><strong>SUBJECT LIST OF CLASS </strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">

<tr bgcolor="cyan">
<td><b>CLASS</b></td>
<td><b>SUBJECT 1</b></td>
<td><b>SUBJECT 2</b></td>
<td><b>SUBJECT 3</b></td>
<td><b>SUBJECT 4</b></td>
<td><b>SUBJECT 5</b></td>

</tr>

<%


try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	String classSelectionclass = "SELECT * FROM classdetails WHERE className = ";
	
	resultSet = st.executeQuery(classSelectionclass + "'" +selectedClass+ "'");
	while(resultSet.next()){
		%>
<tr bgcolor="white">
	<td><%=resultSet.getString("className") %></td>
	<td><%=resultSet.getString("subject_1") %></td>
	<td><%=resultSet.getString("subject_2") %></td>
	<td><%=resultSet.getString("subject_3") %></td>
	<td><%=resultSet.getString("subject_4") %></td>
	<td><%=resultSet.getString("subject_5") %></td>
</tr>
<%
	}
	}	
catch(SQLException e){
out.println(e);
}
%>

</table>


</html>
