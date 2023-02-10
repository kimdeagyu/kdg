package project;

import java.sql.Connection;
import java.sql.PreparedStatement;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

import com.mysql.cj.xdevapi.Result;


public class listDAO {
	
public Connection getConnection() throws Exception{
	
	Context init=new InitialContext();
	DataSource ds=(DataSource)init.lookup("java:comp/env/jdbc/MysqlDB");
	Connection con=ds.getConnection();
	return con;
}
public void insertBoard(listDTO dto) {
System.out.println(dto.getNum());
System.out.println(dto.getBook());
System.out.println(dto.getBook());
System.out.println(dto.getTitel());
System.out.println(dto.getNum());
System.out.println(dto.getDate());
Connection con =null;
PreparedStatement pst=null;
Result rs=null;
	try {
		con=getConnection();
	} catch (Exception e) {
	
	}finally {
		
	}
}

}
