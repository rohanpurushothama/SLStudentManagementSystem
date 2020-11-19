<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="phase2project.DatabaseConnection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>

<h2 align="center"><font><strong>CLASS REPORT</strong></font></h2>

<form action="classReport.jsp" method="post">
<select name= "classkey">
<option value="">--Please choose the class--</option>
<%
try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	String className = "SELECT * FROM classdetails";
	ResultSet rsteacher= st.executeQuery(className);
	while(rsteacher.next()){
		%>

	<option  value="<%=rsteacher.getString("className") %>"><%=rsteacher.getString("className") %></option>


<%
	}
	rsteacher.close();
	}
catch(SQLException e){
out.println(e);
}
%>
</select>
<br><br>

	<button type="submit" >Submit</button>



</form>


</html>
