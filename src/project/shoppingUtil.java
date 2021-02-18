package project;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.util.Properties;


public class shoppingUtil {
	private Properties prop=null;
	
	public shoppingUtil() {
		loadCredentials();
	}
	
	private void loadCredentials(){
		
		try {
			
		
			InputStream fis= this.getClass().getResourceAsStream("credentials.properties");
			prop=new Properties();
			prop.load(fis);

		
			
		} catch (Exception e) {
			System.out.println(e.getMessage());
		}
	}
	
	public String getAdminUser()
	{
		return prop.getProperty("adminUser");
	}
	
	public String getAdminPassword()
	{
		return prop.getProperty("adminPassword");
	}

}
/*created and designed by AD Singh -- downloaded from http://projects.adsingh.net/*/