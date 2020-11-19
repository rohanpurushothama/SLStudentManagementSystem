package phase2project;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;


public class DatabaseConnection {

	public static Connection connectToDb() {
		
		Connection con = null;
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
			con = DriverManager.getConnection("jdbc:mysql://localhost:3306/phase2project", "root", "");			
			return con;
			
		} catch (ClassNotFoundException | SQLException e) {
			System.out.println("Cant load the driver or cant connect to DB : " + e);
		}
		return null;
	}

}
