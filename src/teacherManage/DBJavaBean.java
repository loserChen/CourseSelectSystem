package teacherManage;
import java.sql.*;
import javax.swing.JOptionPane;

import com.sun.corba.se.impl.protocol.giopmsgheaders.Message;
public class DBJavaBean {
       private String driverName="com.microsoft.sqlserver.jdbc.SQLServerDriver";
       private String url="jdbc:sqlserver://localhost:1433;databasename=CourseSelectionSystem;characterEncoding=UTF-8";
       private String user ="sa";
       private String password="root";
       private Connection con=null;
       private Statement st=null;
       private ResultSet rs=null;
       public String getDriverName(){
    	   return driverName;
       }
       public void setDriverName(String driverName)
       {
    	   this.driverName=driverName;
       }
       public String getUrl()
       {
    	   return url;
       }
       public void setUrl(String url)
       {
    	   this.url=url;
       }
       public String getUser()
       {
    	   return user;
    	}
       public void setUser(String user)
       {
    	   this.user=user;
        }
       public String getPassword()
       {
    	   return password;
       }
       public void setPassword(String password)
       {
    	   this.password=password;
       }
       public Connection getCon()
       {
    	   return con;
       }
       public void setcon(Connection con)
       {
    	   this.con=con;
       }
       public Statement getSt()
       {
    	   return st;
       }
       public void setSt(Statement st)
       {
    	   this.st=st;
       }
       public ResultSet getRs()
       {
    	   return rs;
       }
       public void setRs(ResultSet rs)
       {
    	   this.rs=rs;
       }
       
       public Statement getStatement()
       {
    	   try{
    		   Class.forName(getDriverName());
    		   con=DriverManager.getConnection(getUrl(),getUser(),getPassword());
    		   return con.createStatement();
    	   }catch(Exception e)
    	   {
    		   e.printStackTrace();
    		   JOptionPane.showMessageDialog(null, "无法连接数据库或者无法返回容器，请检查getStatement（）方法");
    		   return null;
    	   }  
       }
       public boolean addTeacher(String teacherNumber,String teacherName, String teacherSex,String teacherPassword)
       {
    	   try
    	   {
    		   String sql="insert into Teachers"+"(Tno,Tname,Tsex,Tpassword)"+"values("+"'"+teacherNumber+"'"+","+"'"+teacherName+"'"+","+"'"+teacherSex+"'"+","
    	   +"'"+teacherPassword+"'"+")";
    		   st=getStatement();
    		   int row=st.executeUpdate(sql);
    		   
    		   if(row==1)
    		   {
    			   st.close();
    			   con.close();
    			   return true;
    		   }
    		   else{
    			   st.close();
    			   con.close();
    			   return false;
    		   }
    	   }catch(Exception e){
    		   e.printStackTrace();
    		   JOptionPane.showMessageDialog(null, "无法添加教师信息，请检查addTeacher()方法");
    		   return false;
    	   }
       }
       public ResultSet selectTeacher()
       {
    	   try{
    		   String sql="select * from Teachers";
    		   st=getStatement();
    		   return st.executeQuery(sql);
    	   }catch(Exception e){
    		   e.printStackTrace();
    		   JOptionPane.showMessageDialog(null, "无法连接数据库或者无法返回容器，请检查getStatement（）方法");
    		   return null;
    	   }
       }
       public ResultSet lookDeleteTeacher(){
    	   try{
    		   String sql="select * from Teachers";
    		   st=getStatement();
    		   return st.executeQuery(sql);
    	   }catch(Exception e){
    		   e.printStackTrace();
    		   JOptionPane.showMessageDialog(null, "无法查询到要删除学生的信息，请检查lookDeleteTeacher（）方法！");
    		   return null;
    	   }
       }
       public boolean DeleteTeacher(String teacherNumber)
       {
    	   try{
    		   String sql="delete from Teachers where Tno ="+"'"+teacherNumber+"'";
    		   st=getStatement();
    		   st.executeUpdate(sql);
    		   return true;
    	   }catch(Exception e){
    		   e.printStackTrace();
    		   JOptionPane.showMessageDialog(null, "无法删除学生的信息，请检查DeleteTeacher（）方法");
    		   return false;
    	   }
       }
}
