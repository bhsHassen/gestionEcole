package com.javatpoint.dao;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.Category;

public class CategoryDao {
public static Connection getConnection(){
	Connection con=null;
	try{
		Class.forName("com.mysql.cj.jdbc.Driver");
		con=DriverManager.getConnection("jdbc:mysql://localhost:3306/rahma?useSSL=false&useLegacyDatetimeCode=false&serverTimezone=UTC","root","rootroot");
	}catch(Exception e){System.out.println(e);}
	return con;
}
public static int save(Category u){
	int status=0;
	try{
		Connection con=getConnection();
		
		
		PreparedStatement ps=con.prepareStatement("INSERT INTO `rahma`.`category` (`label` , `description`) VALUES ('"+
		u.getLabel()+"', '"+u.getDescription()+"')");
		System.out.println(ps.toString());
	
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int update(Category u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("update category set label=?,description=? where id=?");
		
		ps.setString(1,u.getLabel());
		ps.setString(2,u.getDescription());
		
		ps.setLong(3,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}
	return status;
}
public static int delete(Category u){
	int status=0;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("delete from category where id=?");
		ps.setLong(1,u.getId());
		status=ps.executeUpdate();
	}catch(Exception e){System.out.println(e);}

	return status;
}
public static List<Category> getAllRecords(){
	List<Category> list=new ArrayList<Category>();
	
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from category");
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			Category u=new Category();
			u.setId(rs.getInt("id"));
			u.setLabel(rs.getString("label"));
			u.setDescription(rs.getString("description"));
			
		
			list.add(u);
		}
	}catch(Exception e){System.out.println(e);}
	return list;
}
public static Category getRecordById(int id){
	Category u=null;
	try{
		Connection con=getConnection();
		PreparedStatement ps=con.prepareStatement("select * from category where id=?");
		ps.setInt(1,id);
		ResultSet rs=ps.executeQuery();
		while(rs.next()){
			u=new Category();
			u.setId(rs.getInt("id"));
			u.setLabel(rs.getString("label"));
			u.setDescription(rs.getString("description"));
			
	
		}
	}catch(Exception e){System.out.println(e);}
	return u;
}
}
