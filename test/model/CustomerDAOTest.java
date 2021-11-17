/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package model;

import java.util.List;
import org.junit.AfterClass;
import org.junit.BeforeClass;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 *
 * @author Brian
 */
public class CustomerDAOTest {
    
   
    public static CustomerDAO dao;    
    
    
    @BeforeClass
    public static void setUpClass() {
          dao = new CustomerDAO();
    }
    
    /**
     * Test of display method, of class CustomerDAO.
     */
    @Test
    public void testDisplay() {
        String expResult = "Samuel Smith";
        String actual = dao.displayId("1").getName();
        assertEquals(expResult, actual);   
    }

    @Test
    public void testAdd() {
        Customer expResult = new Customer();
        expResult.setId(3);
        expResult.setName("Ryan Scott");
        expResult.setAddress("2 Scott Lane");
        expResult.setEmail("ryanscott@gmail.com");
        dao.add(expResult);
        String actual = dao.displayId("3").getName();
        assertEquals("Ryan Scott", actual);             
    }
     
    //update
     @Test
    public void testUpdate() {
        Customer expResult = new Customer();
        expResult.setId(3);
        expResult.setName("Ryan Scott");
        expResult.setAddress("3 Scott Lane");
        expResult.setEmail("ryan_scott@gmail.com");
        dao.update(expResult);
        String actual = dao.displayId("3").getEmail();
        assertEquals("ryan_scott@gmail.com", actual);             
    }
    
    @Test
    public void display() {
        List<Customer> customerlist = dao.display();
        assertEquals(customerlist.size(), 3);
        
    }  
}


