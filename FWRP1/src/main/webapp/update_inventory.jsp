<%@ page import="java.util.List" %>
<%@ page import="com.FWRP.inventoryDAO" %> <!-- Corrected import -->
<%@ page import="com.FWRP.inventoryDaoImpl" %> <!-- Corrected import -->
<%@ page import="com.FWRP.inventory" %> <!-- Corrected import -->

<%
    // Get the inventory ID from the request parameters
    int inventoryId = Integer.parseInt(request.getParameter("inventoryId"));

    // Get the InventoryDAO instance
    inventoryDAO inventoryDAO = new inventoryDaoImpl(); 

    // Get the inventory item with the given ID
    inventory inventory = inventoryDAO.getInventoryById(inventoryId); 
%>

<form action="update_inventory" method="post">
    <input type="number" name="id" value="<%= inventory.getInventoryId() %>">

    <label for="retailerId">Retailer ID:</label>
    <input type="number" name="retailerId" value="<%= inventory.getRetailerId() %>" required><br>

    <label for="itemType">Item Type:</label>
    <input type="text" name="itemType" value="<%= inventory.getItemType() %>" required><br>

    <label for="name">Name:</label>
    <input type="text" name="name" value="<%= inventory.getName() %>" required><br>

    <label for="expirationDate">Expiration Date:</label>
    <input type="date" name="expirationDate" value="<%= inventory.getExpirationDate() %>" required><br>

    <label for="quantity">Quantity:</label>
    <input type="number" name="quantity" value="<%= inventory.getQuantity() %>" required><br>

    <label for="discountedPrice">Discounted Price:</label>
    <input type="number" step="0.01" name="discountedPrice" value="<%= inventory.getDiscountedPrice() %>" required><br>

    <label for="surplus">Surplus:</label>
    <input type="checkbox" name="surplus" value="true" <%= inventory.isSurplus() ? "checked" : "" %>>

    <button type="submit">Update Inventory</button>
</form>
