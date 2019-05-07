package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.Teacher;

public class TeacherDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahma?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC","root","rootroot");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(Teacher u){
	int status=0;
	try{
		Connection con=getConnection();
		
		
		PreparedStatement ps=con.prepareStatement("INSERT INTO `rahma`.`teacher` (`lastName` , `firstNAme`,`userName`) VALUES ('"+
		u.getFirstName()+"', '"+u.getLastName()+"','"+u.getUserName()+"')");
		System.out.println(ps.toString());
	
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(Teacher u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update teacher set firstName=?,lastName=?,userName=? where id=?");
		
		ps.setString(1,u.getFirstName());
		ps.setString(2,u.getLastName());
		ps.setString(3,u.getUserName());
		ps.setLong(4,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(Teacher u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from teacher where id=?");
		ps.setLong(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<Teacher> getAllRecords(){
	List<Teacher> list=new ArrayList<Teacher>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from teacher");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Teacher u=new Teacher();
			u.setId(rs.getInt("id"));
			u.setFirstName(rs.getString("firstName"));
			u.setLastName(rs.getString("lastName"));
			u.setUserName(rs.getString("userNAme"));
		
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static Teacher getRecordById(int id){
	Teacher u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from teacher where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new Teacher();
			u.setId(rs.getInt("id"));
			u.setFirstName(rs.getString("firstName"));
			u.setLastName(rs.getString("lastName"));
			u.setUserName(rs.getString("userName"));
	
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
