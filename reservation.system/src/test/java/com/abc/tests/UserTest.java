package com.abc.tests;

import org.junit.jupiter.api.Test;
import static org.junit.jupiter.api.Assertions.*;
import com.res.model.*;
public class UserTest {

    @Test
    public void testUserConstructorWithParameters() {
        User user = new User("johndoe", "John Doe", "johndoe@example.com", "1234567890", "password123", "admin");

        assertEquals("johndoe", user.getUsername(), "Username should match");
        assertEquals("John Doe", user.getFullName(), "Full name should match");
        assertEquals("johndoe@example.com", user.getEmail(), "Email should match");
        assertEquals("1234567890", user.getPhone(), "Phone should match");
        assertEquals("password123", user.getPassword(), "Password should match");
        assertEquals("admin", user.getRole(), "Role should match");
        assertNull(user.getStatus(), "Status should be null by default");
    }

    @Test
    public void testUserDefaultConstructor() {
        User user = new User();

        assertNull(user.getUsername(), "Username should be null by default");
        assertNull(user.getFullName(), "Full name should be null by default");
        assertNull(user.getEmail(), "Email should be null by default");
        assertNull(user.getPhone(), "Phone should be null by default");
        assertNull(user.getPassword(), "Password should be null by default");
        assertNull(user.getRole(), "Role should be null by default");
        assertNull(user.getStatus(), "Status should be null by default");
    }

    @Test
    public void testSettersAndGetters() {
        User user = new User();
        user.setUsername("janedoe");
        user.setFullName("Jane Doe");
        user.setEmail("janedoe@example.com");
        user.setPhone("0987654321");
        user.setPassword("password456");
        user.setRole("user");
        user.setStatus("active");

        assertEquals("janedoe", user.getUsername(), "Username should match");
        assertEquals("Jane Doe", user.getFullName(), "Full name should match");
        assertEquals("janedoe@example.com", user.getEmail(), "Email should match");
        assertEquals("0987654321", user.getPhone(), "Phone should match");
        assertEquals("password456", user.getPassword(), "Password should match");
        assertEquals("user", user.getRole(), "Role should match");
        assertEquals("active", user.getStatus(), "Status should match");
    }
}
