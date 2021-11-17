/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
/**
 *
 * @author Brian
 */
public class CustomerDAO {
    
     PreparedStatement ps;
     ResultSet rs;
     ConnectionFactory c = new ConnectionFactory();
     Connection con;
     
     public List display(){
            List <Customer> customers = new ArrayList<>();
            String sql = "SELECT * FROM customers ORDER BY id ASC";
            
            try {
                
                con = c.connect();
                ps = con.prepareStatement(sql);
                rs = ps.executeQuery();

  
            while (rs.next()) {
                Customer s = new Customer();
                s.setId(rs.getInt(1));
                s.setName(rs.getString(2));
                s.setAddress(rs.getString(3));
                s.setEmail(rs.getString(4));
                customers.add(s);
                
            }
            
            } catch (SQLException e) {
           
            }
            return customers;
              
     }
    
    public int add(Customer s) {
            int customers = 0; 
            String sql = "INSERT INTO customers(id,name,address,email) VALUES (?,?,?,?)";
              
            try {     
                    con = c.connect();
                    ps = con.prepareStatement(sql);
                    ps.setInt(1, s.getId());
                    ps.setString(2, s.getName());
                    ps.setString(3, s.getAddress());
                    ps.setString(4, s.getEmail());
                    
                    customers = ps.executeUpdate();
                    if (customers==1){
                        customers=1;
                    }else {
                        customers=0;
                    }
        
            
            } catch (SQLException e) {
           
            }
            return customers;
        
    } 
    
    public Customer displayId(String id) {
            String sql = "SELECT * FROM customers WHERE id=" +id;
            Customer s = new Customer();
            try {     
                    con = c.connect();
                    ps = con.prepareStatement(sql);
                    rs = ps.executeQuery();
          
                   while (rs.next()) {
                
                    s.setId(rs.getInt(1));
                    s.setName(rs.getString(2));
                    s.setAddress(rs.getString(3));
                    s.setEmail(rs.getString(4));
               
                }

            
            } catch (SQLException e) {
           
            }
            return s;
    }
    public int update(Customer s) {
            int customer = 0; 
            String sql = "UPDATE customers SET name=?, address=?, email=? WHERE id=? ";
            try {     
                   con = c.connect();
                   ps = con.prepareStatement(sql);
               
                  
                   ps.setString(1, s.getName());
                   ps.setString(2, s.getAddress());
                   ps.setString(3, s.getEmail());
                   ps.setInt(4, s.getId());
                   customer = ps.executeUpdate();
                    
                   if (customer == 1){
                        customer=1;
                   }else {
                        customer=0;
                   }     
      
            } catch (SQLException e) {
           
            }
            return customer;
    }
    public void delete(int id) {
            String sql = "DELETE FROM customers WHERE id=" + id;
            try {     
                   con = c.connect();
                   ps = con.prepareStatement(sql);
                   ps.executeUpdate();
                    
                   
            } catch (SQLException e) {
           
            }
    }

    public Object displayId(int ide) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
