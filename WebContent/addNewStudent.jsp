<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import =  "phase2project.DatabaseConnection"  %>
<%@page import =  "java.sql.*"  %>
<%@page import =  "java.sql.Connection"  %>

<%
String std_Name = request.getParameter("std_Name");
String std_Location = request.getParameter("std_Location");
String std_Gender = request.getParameter("std_Gender");
String className = request.getParameter("className");


try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	st.executeUpdate("insert into studentdetails (std_Name, std_Location, std_Gender, className) values('"+std_Name+"','"+std_Location+"','"+std_Gender+"','"+className+"')");
	response.sendRedirect("AdminHome2.jsp");
}
catch(SQLException e){
out.println(e);
}
 
%>