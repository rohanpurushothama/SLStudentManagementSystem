
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="phase2project.DatabaseConnection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>


<html>


<%String studentId = request.getParameter("studentid"); 
System.out.println(studentId);%>


<h2 align="center"><font><strong>STUDENT DETAILS</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="cyan">
<td><b>STUDENT ID</b></td>
<td><b>STUDENT NAME</b></td>
<td><b>STUDENT LOCATION</b></td>
<td><b>STUDENT GENDER</b></td>
<td><b>STUDENT CLASS</b></td>
</tr>

<%
ResultSet resultSet = null;

try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	String std_Master = "SELECT * FROM studentdetails WHERE std_Id = ";
	
	resultSet = st.executeQuery(std_Master + "'" +studentId+ "'");
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
out.println("Enter Correct Student ID" + e);
}
%>

</table>
</html>
