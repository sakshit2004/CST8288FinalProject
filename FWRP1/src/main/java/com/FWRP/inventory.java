package com.FWRP;



public class inventory {
    private int inventoryId;
    private int retailerId;
    private String itemType;
    private String name;
    private String expirationDate;
    private int quantity;
    private double discountedPrice;
    private boolean surplus;
    
    public inventory() {}

    public inventory(int inventoryId, int retailerId, String itemType, String name, String expirationDate, int quantity, double discountedPrice, boolean surplus) {
        this.inventoryId = inventoryId;
        this.retailerId = retailerId;
        this.itemType = itemType;
        this.name = name;
        this.expirationDate = expirationDate;
        this.quantity = quantity;
        this.discountedPrice = discountedPrice;
        this.surplus = surplus;
    }

    // Getters and setters for each field

    public int getInventoryId() {
        return inventoryId;
    }

    public void setInventoryId(int inventoryId) {
        this.inventoryId = inventoryId;
    }

    public int getRetailerId() {
        return retailerId;
    }

    public void setRetailerId(int retailerId) {
        this.retailerId = retailerId;
    }

    public String getItemType() {
        return itemType;
    }

    public void setItemType(String itemType) {
        this.itemType = itemType;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getExpirationDate() {
        return expirationDate;
    }

    public void setExpirationDate(String expirationDate) {
        this.expirationDate = expirationDate;
    }

    public int getQuantity() {
        return quantity;
    }

    public void setQuantity(int quantity) {
        this.quantity = quantity;
    }

    public double getDiscountedPrice() {
        return discountedPrice;
    }

    public void setDiscountedPrice(double discountedPrice) {
        this.discountedPrice = discountedPrice;
    }

    public boolean isSurplus() {
        return surplus;
    }

    public void setSurplus(boolean surplus) {
        this.surplus = surplus;
    }
}