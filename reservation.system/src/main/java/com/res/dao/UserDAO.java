package com.res.dao;

import com.res.model.User;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class UserDAO {

    public void saveUser(User user) throws SQLException {
        Connection conn = null;
        PreparedStatement pst = null;

        try {
            conn = DBConnection.getInstance().getConnection();
            String sql = "INSERT INTO users (username, password, full_name, email, phone, created_at, updated_at) VALUES (?, ?, ?, ?, ?, NOW(), NOW())";
            pst = conn.prepareStatement(sql);
            pst.setString(1, user.getUsername());
            pst.setString(2, user.getPassword());
            pst.setString(3, user.getFullName());
            pst.setString(4, user.getEmail());
            pst.setString(5, user.getPhone());

            pst.executeUpdate();
        } finally {
            if (pst != null) {
                pst.close();
            }
            if (conn != null) {
                conn.close();
            }
        }
    }

    public User getUserByUsername(String username) throws SQLException {
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        User user = null;

        try {
            conn = DBConnection.getInstance().getConnection();
            String sql = "SELECT * FROM users WHERE username = ?";
            pst = conn.prepareStatement(sql);
            pst.setString(1, username);
            rs = pst.executeQuery();

            if (rs.next()) {
                user = new User();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setFullName(rs.getString("full_name"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setStatus(rs.getString("status"));
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return user;
    }

    public List<User> getAllUsers() throws SQLException {
        Connection conn = null;
        PreparedStatement pst = null;
        ResultSet rs = null;
        List<User> users = new ArrayList<>();

        try {
            conn = DBConnection.getInstance().getConnection();
            String sql = "SELECT * FROM users";
            pst = conn.prepareStatement(sql);
            rs = pst.executeQuery();

            while (rs.next()) {
                User user = new User();
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                user.setFullName(rs.getString("full_name"));
                user.setEmail(rs.getString("email"));
                user.setPhone(rs.getString("phone"));
                user.setStatus(rs.getString("status"));
                users.add(user);
            }
        } finally {
            if (rs != null) {
                rs.close();
            }
            if (pst != null) {
                pst.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return users;
    }

    public boolean updateUser(User user) throws SQLException {
        Connection conn = null;
        PreparedStatement pst = null;
        boolean success = false;

        try {
            conn = DBConnection.getInstance().getConnection();
            String sql = "UPDATE users SET full_name = ?, email = ?, phone = ?, password = ?, status = ?, updated_at = NOW() WHERE username = ?";
            pst = conn.prepareStatement(sql);
            pst.setString(1, user.getFullName());
            pst.setString(2, user.getEmail());
            pst.setString(3, user.getPhone());
            pst.setString(4, user.getPassword()); // Hash the password before storing
            pst.setString(5, user.getStatus());
            pst.setString(6, user.getUsername());

            int rowsAffected = pst.executeUpdate();
            success = (rowsAffected > 0);
        } finally {
            if (pst != null) {
                pst.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return success;
    }

    public boolean deleteUser(String username) throws SQLException {
        Connection conn = null;
        PreparedStatement pst = null;
        boolean success = false;

        try {
            conn = DBConnection.getInstance().getConnection();
            String sql = "DELETE FROM users WHERE username = ?";
            pst = conn.prepareStatement(sql);
            pst.setString(1, username);

            int rowsAffected = pst.executeUpdate();
            success = (rowsAffected > 0);
        } finally {
            if (pst != null) {
                pst.close();
            }
            if (conn != null) {
                conn.close();
            }
        }

        return success;
    }
}
