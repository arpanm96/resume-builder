package bean;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;

public class ResumeDataInsert {

	

	public static void insert(DataFields df)
	{
		//OracleThinConnection object1 = new OracleThinConnection();
		//Statement s = null;
		Connection con = null;
		PreparedStatement ps = null;
		
		try
		{
			con = OracleThinConnection.getRequestConnection();
			
			if(con == null)
				System.out.println("Error");
	        String query = "insert into resume_test values(?,?,?,?,?)";
	        
	        ps = con.prepareStatement(query);
	        
	        //name,address,college,state,email,phoneNo
	        ps.setString(1,df.getFirstNameParam());
	        ps.setString(2,df.getLastNameParam());
	        ps.setString(3,df.getEmailParam());
	        ps.setString(4,df.getDescription());
	        ps.setLong(5,df.getMobileNoParam());
	      /*ps.setString(7,);
	        ps.setString(8,);
	        ps.setString(9,);*/
	        
	        ps.execute();
	        con.close();
		  
	   }
	   catch(Exception e)
	   {
	      e.printStackTrace();
	   }
		
		System.out.println("Inserted successfully");
		
	}
	public static ResultSet retrieve(String mailID)
	{

		//OracleThinConnection object1 = new OracleThinConnection();
		Statement stm = null;
		ResultSet rs = null;
		Connection con = OracleThinConnection.getRequestConnection();
		try
		{
	      stm = con.createStatement();

	      String sql = "select * from resume_test where email = '" + mailID + "'";
	      rs = stm.executeQuery(sql);	      
	      //rs.close();
	    }
		catch(Exception e)
		{
			e.printStackTrace();
		}
		return rs;
	}
}
