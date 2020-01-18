/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package globalcustody1;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import javax.swing.JOptionPane;
import javax.swing.JTable;
import net.proteanit.sql.DbUtils;


public class Connection {
   String url="jdbc:mysql://localhost:3306/new_schema?useSSL=false";
   String user="root";
   String hpass="root";
   ResultSet rs=null;
   public void connection() throws ClassNotFoundException
   {
       Class.forName("com.mysql.jdbc.Driver");
   }
   public int insert(String idis,String nameis,String fathernameis,String addressis,String contctnumis,String emailis,String genderis,String bloodgroupis,String joindateis ) throws ClassNotFoundException, SQLException
   {
       connection();
       String quary="insert into customer(Customerid,name,Fathername,Address,Contct_num,Emailid,Gender,Blopdgroup,D_O_J) values(?,?,?,?,?,?,?,?,?)";
       java.sql.Connection con=DriverManager.getConnection(url,user,hpass);
       PreparedStatement pst=con.prepareStatement(quary);
       pst.setString(1,idis);
       pst.setString(2,nameis);
       pst.setString(3,fathernameis);
       pst.setString(4,addressis);
       pst.setString(5,contctnumis);
       pst.setString(6,emailis);
       pst.setString(7,genderis);
       pst.setString(8,bloodgroupis);
       pst.setString(9,joindateis);
     
       int counter=pst.executeUpdate();
       return counter;
       
       
       
   }
    public void fatch(JTable table)
    {
     try{
         connection();
         String quary="Select* from customer";
         java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
       PreparedStatement pst=conn.prepareStatement(quary);
       ResultSet rs=pst.executeQuery();
      table.setModel(DbUtils.resultSetToTableModel(rs));
     }catch(Exception e)
     {
         JOptionPane.showMessageDialog(null,e);
     }
    }
     public void cu_fatch(JTable table1)
    {
     try{
         connection();
         String quary="Select* from custodian";
         java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
       PreparedStatement pst=conn.prepareStatement(quary);
       ResultSet rs=pst.executeQuery();
      table1.setModel(DbUtils.resultSetToTableModel(rs));
     }catch(Exception e)
     {
         JOptionPane.showMessageDialog(null,e);
     }
    }
      public void bank_fatch(JTable table2)
    {
     try{
         connection();
         String quary="Select* from bank";
         java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
         PreparedStatement pst=conn.prepareStatement(quary);
         ResultSet rs=pst.executeQuery();
         table2.setModel(DbUtils.resultSetToTableModel(rs));
     }catch(Exception e)
     {
         JOptionPane.showMessageDialog(null,e);
     }
    }
     public void bond_fatch(JTable table3)
    {
       try{
         connection();
         String quary="Select* from bond";
         java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
         PreparedStatement pst=conn.prepareStatement(quary);
        ResultSet rs=pst.executeQuery();
         table3.setModel(DbUtils.resultSetToTableModel(rs));
     }catch(Exception e)
     {
         JOptionPane.showMessageDialog(null,e);
     }
    }
      public void Settlefatch(JTable table4)
    {
     try{
         connection();
         String quary="Select* from settlement";
         java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
       PreparedStatement pst=conn.prepareStatement(quary);
       ResultSet rs=pst.executeQuery();
      table4.setModel(DbUtils.resultSetToTableModel(rs));
     }catch(Exception e)
     {
         JOptionPane.showMessageDialog(null,e);
     }
    }
       public void Assetfatch(JTable table4)
    {
     try{
         connection();
         String quary="Select* from asset";
         java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
       PreparedStatement pst=conn.prepareStatement(quary);
       ResultSet rs=pst.executeQuery();
      table4.setModel(DbUtils.resultSetToTableModel(rs));
     }catch(Exception e)
     {
         JOptionPane.showMessageDialog(null,e);
     }
    }
     

   public int update(String oldid,String idis,String nameis,String fathernameis,String addressis,String contctnumis,String emailis,String genderis,String bloodgroupis,String joindateis) throws ClassNotFoundException, SQLException {
        connection();
        String quary="update customer set Customerid=?,name=?,Fathername=?,Address=?,Contct_num=?,Emailid=?,Gender=?,Blopdgroup=?,D_O_J=? where Customerid=?";
        java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
        PreparedStatement pst=conn.prepareStatement(quary);
      
        pst.setString(1,idis);
        pst.setString(2,nameis);
        //
        pst.setString(3,fathernameis);
        pst.setString(4,addressis);
        pst.setString(5,contctnumis);
        pst.setString(6,emailis);
        pst.setString(7,genderis);
        pst.setString(8,bloodgroupis);
        pst.setString(9,joindateis);
        pst.setString(10,oldid);
        
       int counter=pst.executeUpdate();
       return counter;
        
    }
    public int Bankinsert(String bnkid,String bnkname,String bnktype,String bnkservice,String bnkreserve) throws ClassNotFoundException, SQLException
    {
        connection();
       String quary="insert into bank(Bankid,Bankname,Banktype,Bankservice,Bankreserve) values(?,?,?,?,?)";
        java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
        PreparedStatement pst=conn.prepareStatement(quary);
      
        pst.setString(1,bnkid);
        pst.setString(2,bnkname);
        //
        pst.setString(3,bnktype);
        pst.setString(4,bnkservice);
        pst.setString(5,bnkreserve);
       
        int di_counter=pst.executeUpdate();
       return di_counter;
       
        
    }
     public int Bankupdate(String oldidis,String bnkid,String bnkname,String bnktype,String bnkservice,String bnkreserve) throws ClassNotFoundException, SQLException {
        connection();
        String quary="update bank set Bankid=?,Bankname=?,Banktype=?,Bankservice=?,Bankreserve=? where Bankid=?";
        java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
        PreparedStatement pst=conn.prepareStatement(quary);
      
        pst.setString(1,bnkid);
        pst.setString(2,bnkname);
        //
        pst.setString(3,bnktype);
        pst.setString(4,bnkservice);
        pst.setString(5,bnkreserve);
        pst.setString(6,oldidis);
        
       int counter=pst.executeUpdate();
       return counter;
        
    }
       public int Custodianinsert(String custoid,String custoname,String custoage,String bnkid,String licensenum) throws ClassNotFoundException, SQLException
    {
        connection();
       String quary="insert into custodian(Custodian_id,Custodian_name,Custodian_age,Bank_id,License_number) values(?,?,?,?,?)";
        java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
        PreparedStatement pst=conn.prepareStatement(quary);
      
        pst.setString(1,custoid);
        pst.setString(2,custoname);
        //
        pst.setString(3,custoage);
        pst.setString(4,bnkid);
        pst.setString(5,licensenum);
       
        int di_counter=pst.executeUpdate();
       return di_counter;
       
        
    }
         public int Custodianupdate(String custoold,String custoid,String custoname,String custoage,String bnkid,String licensenum) throws ClassNotFoundException, SQLException {
        connection();
        String quary="update custodian set Custodian_id=?,Custodian_name=?,Custodian_age=?,Bank_id=?,License_number=? where Custodian_id=?";
        java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
        PreparedStatement pst=conn.prepareStatement(quary);
      
        pst.setString(1,custoid);
        pst.setString(2,custoname);
        //
        pst.setString(3,custoage);
        pst.setString(4,bnkid);
        pst.setString(5,licensenum);
        pst.setString(6,custoold);
        
       int counter=pst.executeUpdate();
       return counter;
       
         }
          public int Bondinsert(String bndid,String bndtype,String bndmaturity,String mrktprice,String bnddate) throws ClassNotFoundException, SQLException
    {
        connection();
       String quary="insert into bond(Bond_id,Bond_type,Bond_maturity,Market_price,Bond_date) values(?,?,?,?,?)";
        java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
        PreparedStatement pst=conn.prepareStatement(quary);
      
        pst.setString(1,bndid);
        pst.setString(2,bndtype);
        //
        pst.setString(3,bndmaturity);
        pst.setString(4,mrktprice);
        pst.setString(5,bnddate);
       
        int di_counter=pst.executeUpdate();
       return di_counter;
       
        
    }
           public int Bondupdate(String bndoldid,String bndid,String bndtype,String bndmaturity,String mrktprice,String bnddate) throws ClassNotFoundException, SQLException {
        connection();
        String quary="update bond set Bond_id=?,Bond_type=?,Bond_maturity=?,Market_price=?,Bond_date=? where Bond_id=?";
        java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
        PreparedStatement pst=conn.prepareStatement(quary);
      
        pst.setString(1,bndid);
        pst.setString(2,bndtype);
        //
        pst.setString(3,bndmaturity);
        pst.setString(4,mrktprice);
        pst.setString(5,bnddate);
        pst.setString(6,bndoldid);
        
       int counter=pst.executeUpdate();
       return counter;
       
         }
            public int Assetinsert(String assetid,String assettype,String assetcode,String assetprice) throws ClassNotFoundException, SQLException
    {
        connection();
       String quary="insert into asset(Asset_id,Asset_type,Asset_code,Asset_price) values(?,?,?,?)";
        java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
        PreparedStatement pst=conn.prepareStatement(quary);
      
        pst.setString(1,assetid);
        pst.setString(2,assettype);
        //
        pst.setString(3,assetcode);
        pst.setString(4,assetprice);
       
        int di_counter=pst.executeUpdate();
       return di_counter;
       
        
    }
         public int Assetupdate(String oldid,String assetid,String assettype,String assetcode,String assetprice) throws ClassNotFoundException, SQLException {
        connection();
        String quary="update asset set Asset_id=?,Asset_type=?,Asset_code=?,Asset_price=? where Asset_id=?";
        java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
        PreparedStatement pst=conn.prepareStatement(quary);
      
        pst.setString(1,assetid);
        pst.setString(2,assettype);
        //
        pst.setString(3,assetcode);
        pst.setString(4,assetprice);
        pst.setString(5,oldid);
        
       int counter=pst.executeUpdate();
       return counter;
        
    }
         public int Settlementinsert(String Settlementid,String Settlementnote,String Settlementdate,String Settlementtype) throws ClassNotFoundException, SQLException
    {
        connection();
       String quary="insert into settlement(Settlement_Id,Settlement_Note,Settlement_Date,Settlement_Type) values(?,?,?,?)";
        java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
        PreparedStatement pst=conn.prepareStatement(quary);
      
        pst.setString(1,Settlementid);
        pst.setString(2,Settlementnote);
        //
        pst.setString(3,Settlementdate);
        pst.setString(4,Settlementtype);
        
       
        int di_counter=pst.executeUpdate();
       return di_counter;
       
        
    }
          public int Settlementupdate(String Settlementoldid,String Settlementid,String Settlementnote,String Settlementdate,String Settlementtype) throws ClassNotFoundException, SQLException {
        connection();
        String quary="update settlement set Settlement_Id=?,Settlement_Note=?,Settlement_Date=?,Settlement_Type=? where Settlement_Id=?";
        java.sql.Connection conn=DriverManager.getConnection(url,user,hpass);
        PreparedStatement pst=conn.prepareStatement(quary);
      
        pst.setString(1,Settlementid);
        pst.setString(2,Settlementnote);
        //
        pst.setString(3,Settlementdate);
        pst.setString(4,Settlementtype);
        pst.setString(5,Settlementoldid);
        
       int counter=pst.executeUpdate();
       return counter;
        
    }
        
     
   
}
