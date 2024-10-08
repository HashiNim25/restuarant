package com.res.model;

public class Product {
    private int id;
    private String name;
    private double price;
    private String description;

    // Constructor
    public Product(int id, String name, String description, double price) {
        this.id = id;
        this.name = name;
        this.price = price;
        this.description = description;
    }

    // Getter and Setter methods

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
