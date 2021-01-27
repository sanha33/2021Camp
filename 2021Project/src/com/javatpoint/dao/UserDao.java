package com.javatpoint.dao;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.javatpoint.bean.User;

public class UserDao {
	

public static Connection getConnection(){  
    Connection con=null;  
    try{  
        Class.forName("com.mysql.jdbc.Driver");  
        con=DriverManager.getConnection("jdbc:mysql://sql12.freemysqlhosting.net:3306/sql12388233","sql12388233","UgBnEqEmIv");  
    }catch(Exception e){System.out.println(e);}  
    return con;  
}


public static int save(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"insert into ListTable(title,author,comments,filename) values(?,?,?,?)");  
        ps.setString(1,u.getTitle());  
        ps.setString(2,u.getAuthor());  
        ps.setString(3,u.getComments());  
        ps.setString(4,u.getFilename());
        
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  




public static int update(User u){  
    int status=0;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement(  
"update ListTable set title=?,author=?,comments=?,filename=? where id=?");  
        ps.setString(1,u.getTitle());  
        ps.setString(2,u.getAuthor());  
        ps.setString(3,u.getComments());   
        ps.setString(4,u.getFilename());  
    
        ps.setInt(5,u.getId());  
        status=ps.executeUpdate();  
    }catch(Exception e){System.out.println(e);}  
    return status;  
}  




public static int delete(User u){  
    int status=0;  
    
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("delete from ListTable where id=?");  
        ps.setInt(1,u.getId());  

        status=ps.executeUpdate();  
        /*
        if(status > 0) {
            System.out.println("삭제 완료");
        }
        else {
            System.out.println("삭제 실패");
            
        }*/
    }catch(Exception e){System.out.println(e);
    }  

  
    return status;  
}



public static List<User> getAllRecords(){  
    List<User> list=new ArrayList<User>();  
      
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from ListTable");  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            User u=new User();  
            u.setId(rs.getInt("id"));  
            u.setTitle(rs.getString("title"));  
            u.setAuthor(rs.getString("author"));  
            u.setComments(rs.getString("comments"));  
            u.setFilename(rs.getString("filename"));
          
            list.add(u);  
        }  
    }catch(Exception e){System.out.println(e);}  
    return list;  
}

public static User getRecordById(int id){  
    User u=null;  
    try{  
        Connection con=getConnection();  
        PreparedStatement ps=con.prepareStatement("select * from ListTable where id=?");  
        ps.setInt(1,id);  
        ResultSet rs=ps.executeQuery();  
        while(rs.next()){  
            u=new User();  
            u.setId(rs.getInt("id"));  
            u.setTitle(rs.getString("title"));  
            u.setAuthor(rs.getString("author"));  
            u.setComments(rs.getString("comments"));  
            u.setFilename(rs.getString("filename"));  
  
        }  
    }catch(Exception e){System.out.println(e);}  
    return u;  
}  
}