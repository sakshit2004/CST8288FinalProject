package com.FWRP;


import java.util.List;

public interface inventoryDAO {
    inventory getInventoryById(int inventoryId);
    void addInventory(inventory inventory);
    void updateInventory(inventory inventory);
    void deleteInventory(int inventoryId);
	List<inventory> getAllInventory();
	List<inventory>getAllItems();
}
