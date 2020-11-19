
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="phase2project.DatabaseConnection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>

<h2 align="center"><font><strong>CLASS AND SUBJECT LIST</strong></font></h2>
<table align="center" cellpadding="5" cellspacing="5" border="1">
<tr>

</tr>
<tr bgcolor="cyan">
<td><b>CLASS</b></td>
<td><b>SUBJECT 1</b></td>
<td><b>SUBJECT 2</b></td>
<td><b>SUBJECT 3</b></td>
<td><b>SUBJECT 4</b></td>
<td><b>SUBJECT 5</b></td>
</tr>

<%
ResultSet resultSet = null;

try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	String std_Master = "SELECT * FROM classdetails";
	
	resultSet = st.executeQuery(std_Master);
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
