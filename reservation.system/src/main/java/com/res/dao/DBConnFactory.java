package com.res.dao;

import java.sql.Connection;



public class DBConnFactory {
	 public static Connection getConnection() {
	        return DBConnection.getInstance().getConnection();
	    }

}
