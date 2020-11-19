
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="phase2project.DatabaseConnection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>

<h2 align="center"><font><strong>TEACHER MASTER LIST</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="cyan">
<td><b>TEACHER ID</b></td>
<td><b>TEACHER NAME</b></td>
<td><b>TEACHER GENDER</b></td>
</tr>

<%
ResultSet resultSet = null;

try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	String std_Master = "SELECT * FROM teacherdetails";
	
	resultSet = st.executeQuery(std_Master);
	while(resultSet.next()){
		%>
<tr bgcolor="white">

	<td><%=resultSet.getString("tch_Id") %></td>
	<td><%=resultSet.getString("tch_Name") %></td>
	<td><%=resultSet.getString("tch_Gender") %></td>
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
