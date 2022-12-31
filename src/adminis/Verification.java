package adminis;
import java.sql.*;

import conn.Connec;
/*Application réalisée à Ndjaména au Tchad en 2019 par Targoto Christian
 * alias chcode
 * contact: 23560316682/Email: ct@chrislink.net*/
public class Verification {
	ResultSet rst;
	Statement st;
	Connec cn=new Connec();
	
	public boolean verifier(String titre){
		boolean test=false;
		String title=null;
		String qr="select titre from livre where disponible='OUI' ";
		try{
			st=cn.connecion().createStatement();
			rst=st.executeQuery(qr);
			while(rst.next()||test==true){
				title=rst.getString("titre");
				if(title.equals(titre)){
					test=true;
				}
				
			}
			
		}
		catch(SQLException ex){
			
		}
		
		/*Application réalisée à N'djaména au Tchad en 2019 par
		 *  TARGOTO CHRISTIAN
		 * Contact: 23560316682 / ct@chrislink.net
		 * */
		return test; 
		
	}

}
