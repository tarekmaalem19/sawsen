package conn;

import java.sql.Connection;
import java.sql.DriverManager;

public class Connec {
	Connection con;

	public Connec(){
		try{
		Class.forName("com.mysql.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/biblio?autoReconnect=true&useSSL=false","root","root");
		System.out.println("you are connected!!");
	}
		catch(Exception e){
			System.out.println(e);
			
		}

}
	public Connection connecion(){
		return con;
	}
}