package until;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

public class DBConnectionUtil {
	//Define the database properties
	private static final String URL = "jdbc:mysql://localhost:3306/employeedirectory?useUnicode=true&characterEncoding=UTF-8";
	
	private static final String DRIVER = "com.mysql.jdbc.Driver";
	
	private static final String USERNAME = "root";
	
	private static final String PASSWORD = "";
	
	private static Connection connection = null;
	
	//Define static method
	public static Connection openConnection() {
		//check connection
		if(connection !=null) {
			return connection;
		}else {
			try {
			//load Driver name
			Class.forName(DRIVER);
			
			//getConnection
			connection = DriverManager.getConnection(URL, USERNAME, PASSWORD);
			}catch(ClassNotFoundException e) {
                e.printStackTrace();
            } catch (SQLException e) {
                e.printStackTrace();
            } 
			return connection;
		}
	}
}
