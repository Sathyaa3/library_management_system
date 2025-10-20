package com.library;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DatabaseConnection {
    
    private static final String URL = "jdbc:postgresql://localhost:5432/librarydb";
    private static final String USER = "postgres";
    private static final String PASSWORD = "2215";
    
    public static Connection getConnection() {
        Connection conn = null;
        try {
            // Load PostgreSQL JDBC Driver
            Class.forName("org.postgresql.Driver");
            
            // Establish connection
            conn = DriverManager.getConnection(URL, USER, PASSWORD);
            System.out.println("Database connection established successfully");
            
        } catch (ClassNotFoundException e) {
            System.out.println("PostgreSQL JDBC Driver not found");
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Connection failed");
            e.printStackTrace();
        }
        return conn;
    }
    
    public static void closeConnection(Connection conn) {
        if (conn != null) {
            try {
                conn.close();
                System.out.println("Connection closed");
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}