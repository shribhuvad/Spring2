

package com.ret.dbconnection;

import java.sql.Connection;
import java.sql.DriverManager;


public class Dbconection 
{
     public static Connection getConnection()
            {
                try
                {
                    Class.forName("com.mysql.jdbc.Driver");
                   Connection con = DriverManager.getConnection("jdbc:mysql://localhost/retail", "root", "root");
                   System.out.print("connection successfull");
                  return   con;
                }
                
                catch(Exception ex)
                {
                    ex.printStackTrace();
                    return null;
                   
                }
       
                
            }
    
    
    
}
