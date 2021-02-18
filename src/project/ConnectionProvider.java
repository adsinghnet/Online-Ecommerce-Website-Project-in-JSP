package project;
import java.io.*;
import java.util.*;
import java.sql.*;
public class ConnectionProvider {
	private  String dbHost="";
	private  String dbPort="";
	private  String dbUserName="";
	private  String dbPassword="";
	private  String dbName="";
	
	public  Connection getCon() {
		try {
			loadCredentials();
			Class.forName("com.mysql.jdbc.Driver");
			Connection con=DriverManager.getConnection("jdbc:mysql://" + dbHost + ":" + dbPort + "/" + dbName + "",dbUserName,dbPassword);
			return con;
		}
		catch(Exception e)
		{
			System.out.println(e);
			return null;
		}
		
	}
	
	private  void loadCredentials() throws Exception {
		try {
			
			
//			FileInputStream fis=new FileInputStream("dbCredentials.properties");
//			Properties prop=new Properties();
			
//			prop.load(fis);
			
			InputStream fis= this.getClass().getResourceAsStream("dbCredentials.properties");
			Properties prop=new Properties();
			prop.load(fis);
			dbHost = prop.getProperty("dbHost");
			dbPort = prop.getProperty("dbPort");
			dbUserName = prop.getProperty("dbUserName");
			dbPassword = prop.getProperty("dbPassword");
			dbName = prop.getProperty("dbName");
			
			
		} catch (Exception e) {
			throw e;
		}
	}
	
}
/*created and designed by AD Singh -- downloaded from http://projects.adsingh.net/*/