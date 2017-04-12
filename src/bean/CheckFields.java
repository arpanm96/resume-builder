package bean;

import java.sql.*;

public class CheckFields {

	String name,address,college,state,email;
	int PhoneNo;
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getCollege() {
		return college;
	}
	public void setCollege(String college) {
		this.college = college;
	}
	public String getState() {
		return state;
	}
	public void setState(String state) {
		this.state = state;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getPhoneNo() {
		return PhoneNo;
	}
	public void setPhoneNo(int phoneNo) {
		PhoneNo = phoneNo;
	}
	public boolean checkString(String s)
	{
		for(int i = 0;i < s.length();i++)
		{
			if(!Character.isLetter(s.charAt(i)) )
				return false;
		}
		return true;
	}
	public boolean checkNumber(String s) {
	    try {
	        Long.parseLong(s);
	        return true;
	    } catch (NumberFormatException ex) {
	        return false;
	    }
	}
/*	public boolean check()
	{
		
		if(Integer.toString(PhoneNo).length() != 10 )
			return false;
		return true;

	}*/
	
	public boolean checkYOP(String y)
	{
		if(y == null)
		{
			y = "0";
			return false;
		}
			
		int a = Integer.parseInt(y);
		if(a > 2017 || a < 1960)
			return false;
		return true;
	}
	
	public boolean checkMarks(String y)
	{
		int a = Integer.valueOf(y);
		if(a > 500 || a < 0)
			return false;
		return true;
	}
	public boolean checkPercentage(String y)
	{
		float a = Float.valueOf(y);
		if(a > 100 || a < 0)
			return false;
		return true;
	}

	public void ResumeInsert()
	{
		//OracleThinConnection object1 = new OracleThinConnection();
		//Statement s = null;
		Connection con = null;
		PreparedStatement ps = null;
		
		try
		{
			con = OracleThinConnection.getRequestConnection();
	        String query = "insert into Resume values(?,?,?,?,?,?)";
	        
	        ps = con.prepareStatement(query);
	        
	        //name,address,college,state,email,phoneNo
	        ps.setString(1,name);
	        ps.setString(2,address);
	        ps.setString(3,college);
	        ps.setString(4,state);
	        ps.setString(5,email);
	        ps.setInt(6,PhoneNo);
	      /*ps.setString(7,);
	        ps.setString(8,);
	        ps.setString(9,);*/
	        
	        ps.execute();
		  
	   }
	   catch(Exception e)
	   {
	      e.printStackTrace();
	   }
	}
}
