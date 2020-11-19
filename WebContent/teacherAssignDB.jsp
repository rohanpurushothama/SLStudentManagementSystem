<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import =  "phase2project.DatabaseConnection"  %>
<%@page import =  "java.sql.*"  %>
<%@page import =  "java.sql.Connection"  %>
<%@page import =  "java.util.*"  %>
<%@page import =  "java.util.Collection"  %>

<%
String teacherId = request.getParameter("teacherkey");
System.out.println(teacherId);
//String classes="";
//String[] className=request.getParameterValues("className");
List<String> className = Arrays.asList((request.getParameterValues("className")));
ArrayList<String> arrayclassName = new ArrayList<> (className); 
System.out.println(className);


try{
	Connection con = DatabaseConnection.connectToDb();
	Statement st = con.createStatement();
	String sql = " INSERT INTO teacherclassdetails (teacherid, className) VALUES ";
/* 	for(String i: className){
		sql += "( " + teacherId + ", " + className + ");";
	}
	 */
	for(int i=0; i<arrayclassName.size()-1; i++)
		sql += "('" +teacherId+"', '"+arrayclassName.get(i) +"'),";
	sql += 	"('" +teacherId +"', '" + arrayclassName.get(arrayclassName.size()-1) + "');";
	
	System.out.println(sql);	
	
	st.executeUpdate(sql);
       out.println("Data is successfully inserted into database.");
	
	
//	st.executeUpdate("insert into teacher (std_Name, std_Location, std_Gender, std_Class) values('"+std_Name+"','"+std_Location+"','"+std_Gender+"','"+std_Class+"')");
	response.sendRedirect("AdminHome2.jsp");
}
catch(SQLException e){
out.println(e);
}
  
%>