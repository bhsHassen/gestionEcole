package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.Student;
import com.sun.org.apache.bcel.internal.generic.GETSTATIC;
public class StudentDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahma?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC","root","rootroot");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(Student u){
	int status=0;
	try{
		Connection con=getConnection();
		
		
		PreparedStatement ps=con.prepareStatement("INSERT INTO `rahma`.`student` (`lastName` , `firstNAme`,`userName`) VALUES ('"+
		u.getFirstName()+"', '"+u.getLastName()+"','"+u.getUserName()+"')");
		System.out.println(ps.toString());
	
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(Student u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update student set firstName=?,lastName=?,userName=? where id=?");
		
		ps.setString(1,u.getFirstName());
		ps.setString(2,u.getLastName());
		ps.setString(3,u.getUserName());
		ps.setLong(4,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(Student u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from student where id=?");
		ps.setLong(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<Student> getAllRecords(){
	List<Student> list=new ArrayList<Student>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from student");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Student u=new Student();
			u.setId(rs.getInt("id"));
			u.setFirstName(rs.getString("firstName"));
			u.setLastName(rs.getString("lastName"));
			u.setUserName(rs.getString("userNAme"));
		
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static Student getRecordById(int id){
	Student u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from student where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new Student();
			u.setId(rs.getInt("id"));
			u.setFirstName(rs.getString("firstName"));
			u.setLastName(rs.getString("lastName"));
			u.setUserName(rs.getString("userName"));
	
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
