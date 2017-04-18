package bean;

import java.sql.Connection;

import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.text.SimpleDateFormat;  
import java.util.Date; 

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
			String s = "";
			for(int i = 0;i < 35;i++)
				s += "?,";
	        //String query = "insert into resume_test values(?,?,?,?,?)";
			String query = "insert into resume values("+ s + "?)";
	        System.out.println("Query : " + query);
	        ps = con.prepareStatement(query);
	        
	        //name,address,college,state,email,phoneNo
	        
	        //Basic Information
	        ps.setString(1,df.getFirstNameParam());
	        ps.setString(2,df.getLastNameParam());
	        ps.setString(3,df.getFathersNameParam());
	        ps.setString(4,df.getDescription());
	        
	        String date = df.getDobParam();
/*	        SimpleDateFormat sdf=new SimpleDateFormat("dd-MM-yyyy");
	        Date date2=sdf.parse(date);
	        ps.setDate(5,date2);*/
	        
	        java.sql.Date sqlDate = java.sql.Date.valueOf(date);
	        ps.setDate(5,sqlDate);
	        
	        //Contact
	        ps.setString(6,df.getEmailParam());
	        ps.setLong(7,df.getMobileNoParam());
	        ps.setString(8,df.getGithubParam());
	        ps.setString(9,df.getLinkedInParam());
	        
	        //Education
	        ps.setString(10,df.getExamParam1());	        
	        ps.setInt(11,df.getDateParam1());
	        ps.setInt(12,df.getMarksParam1());
	        ps.setInt(13,df.getPercentageParam1());
	        
	        ps.setString(14,df.getExamParam2());	        
	        ps.setInt(15,df.getDateParam2());
	        ps.setInt(16,df.getMarksParam2());
	        ps.setInt(17,df.getPercentageParam2());
	        
	        ps.setString(18,df.getExamParam3());	        
	        ps.setInt(19,df.getDateParam3());
	        ps.setInt(20,df.getMarksParam3());
	        ps.setInt(21,df.getPercentageParam3());
	        
	        ps.setString(22,df.getExamParam4());	        
	        ps.setInt(23,df.getDateParam4());
	        ps.setInt(24,df.getMarksParam4());
	        ps.setInt(25,df.getPercentageParam4());
	        
	        //Experience
	        ps.setString(26,df.getProjectNameParam1());
	        ps.setString(27,df.getDescription1());
	        ps.setString(28,df.getProjectNameParam2());
	        ps.setString(29,df.getDescription2());
	        ps.setString(30,df.getProjectNameParam3());
	        ps.setString(31,df.getDescription3());
	        
	        ps.setString(32,df.getGenderParam());
	        ps.setString(33,df.getEcaParam());
	        
	        ps.setString(34,df.getHobbiesParam1());
	        ps.setString(35,df.getHobbiesParam2());
	        ps.setString(36,df.getHobbiesParam3());

	        
	        
	        
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

	      String sql = "select * from resume where email = '" + mailID + "'";
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
