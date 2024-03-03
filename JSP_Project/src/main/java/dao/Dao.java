package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import modal.User;

public class Dao {

	private static Connection getConnection() throws SQLException {
		try {
			Class.forName("com.mysql.cj.jdbc.Driver");
		} catch (ClassNotFoundException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/collage","root","root");
		return con;
	}

	public static int save(String fname, String lname,String email, String pass) throws SQLException {
		
		Connection con=getConnection();
		String sql="insert into User1(fname,lname,email,pass) values(?,?,?,?)";
		
		PreparedStatement ps=con.prepareStatement(sql);
		
		ps.setString(1, fname);
		ps.setString(2, lname);
		ps.setString(3, email);
		ps.setString(4, pass);
		
		
		int st=ps.executeUpdate();
		
		return st;
	}
	public static boolean validate(String email, String pass) throws SQLException {
		boolean st=false;
		Connection con=getConnection();
		String sql="select * from User1 where email=? and pass=?";
		
		PreparedStatement ps=con.prepareStatement(sql);
		
		ps.setString(1, email);
		ps.setString(2, pass);
		
		ResultSet rs=ps.executeQuery();
		if (rs.next()) {
			st=true;
		}
		return st;
	}
	
	public static List<User> listofUser() throws SQLException{
		
		List<User> list=new ArrayList<User>();
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from User1");
		ResultSet rs=ps.executeQuery();
		
		while (rs.next()) {
			User st=new User();
			st.setId(rs.getInt(1));
			st.setFname(rs.getString(2));
			st.setLname(rs.getString(3));
			st.setEmail(rs.getString(4));
			st.setPassword(rs.getString(5));
			
			list.add(st);
		}
		return list;
		
	}
	public static User UserById(int id) throws SQLException {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from User1 where id=?");
		ps.setInt(1, id);
		ResultSet rs=ps.executeQuery();
		User st=new User();
		if(rs.next()) {
			
			st.setId(rs.getInt(1));
			st.setFname(rs.getString(2));
			st.setLname(rs.getString(3));
			st.setEmail(rs.getString(4));
			st.setPassword(rs.getString(5));
		}
		return st;
	}

	public static int updateUser(User st) throws SQLException {
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update User1 set fname=?,lname=?,email=?,pass=? where id=?");
		ps.setString(1, st.getFname());
		ps.setString(2, st.getLname());
		ps.setString(3, st.getEmail());
		ps.setString(4, st.getPassword());
		
		ps.setInt(5, st.getId());
		int ab=ps.executeUpdate();
		return ab;
	}

	public static int deleteStud(int id) throws SQLException {
		
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from User1 where id=?");
		ps.setInt(1, id);
		int ab=ps.executeUpdate();
		return ab;	
	}
	
	

	
	
}
