<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import =  "phase2project.DatabaseConnection"  %>
<%@page import =  "java.sql.*"  %>
<%@page import =  "java.sql.Connection"  %>

<%
String tch_Name = request.getParameter("tch_Name");
String tch_Gender = request.getParameter("tch_Gender");



try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	st.executeUpdate("insert into teacherdetails (tch_Name, tch_Gender) values('"+ tch_Name +"','"+tch_Gender+"')");
	response.sendRedirect("AdminHome2.jsp");
}
catch(SQLException e){
out.println(e);
}

/* public void insertData() {
//String insertQry = "insert into studentdetails ('"+std_Name+"','"+std_Id+"','"+std_Location+"','"+std_Gender+"','"+std_Class+"')";

try{
	int result = st.excecuteUpdate(insertQry);
} catch(SQLException e){
	e.pointStackTrace();
}
}
 */ 
%>