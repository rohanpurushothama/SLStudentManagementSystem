
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@page import="phase2project.DatabaseConnection"%>
<%@page import="java.sql.*"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.ResultSet"%>
<!DOCTYPE html>
<html>

<h2 align="center"><font><strong>Assign Teacher to class</strong></font></h2>

<form action="teacherAssignDB.jsp" method="post">
<select name= "teacherkey">
<option value="">--Please choose the teacher--</option>
<%
try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	String teacherName = "SELECT * FROM teacherdetails";	
	

	ResultSet rsteacher= st.executeQuery(teacherName);
	while(rsteacher.next()){
		%>

	<option  value="<%=rsteacher.getString("tch_Id") %>"><%=rsteacher.getString("tch_Name") %></option>

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

<%

try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	String className = "SELECT * FROM classdetails";
	ResultSet rsclass= st.executeQuery(className);
	while(rsclass.next()){
		%>

	<input type="checkbox" name="className" value="<%=rsclass.getString("className") %>">
  <label for="vehicle1"><%=rsclass.getString("className") %></label><br>

<%
	}
	rsclass.close();
	}
catch(SQLException e){
out.println(e);
}
%>
  <button type= "submit"> Save </button>
  </form>

</html>
