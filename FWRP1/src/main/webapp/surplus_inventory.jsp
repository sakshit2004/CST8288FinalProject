<%@ page import="java.util.List" %>
<%@ page import="com.FWRP.inventoryDAO" %>
<%@ page import="com.FWRP.inventoryDaoImpl" %>
<%@ page import="com.FWRP.inventory" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Surplus Inventory</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }

        h1 {
            text-align: center;
            margin-top: 20px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-top: 20px;
        }

        th, td {
            padding: 8px;
            text-align: left;
            border-bottom: 1px solid #ddd;
        }

        th {
            background-color: #f2f2f2;
        }

        tr:nth-child(even) {
            background-color: #f2f2f2;
        }

        tr:hover {
            background-color: #ddd;
        }

        button {
            padding: 10px 20px;
            font-size: 16px;
            color: #fff;
            background-color: #ff9900;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        button:hover {
            background-color: #ffcc66;
        }
        
        .ambutton {
    display: inline-block;
    padding: 10px 20px;
    background-color: #ff9900;
    color: #fff;
    text-decoration: none;
    border-radius: 5px;
    border: 1px solid #ff9900;
    transition: background-color 0.3s, color 0.3s;
    cursor: pointer;
}

.ambutton:hover {
    background-color: #ffcc66;
    color: #232f3e;
}
        
    </style>
</head>
<body>
<%
    // Get the InventoryDAO instance
    inventoryDAO inventoryDAO = new inventoryDaoImpl();

    // Get the list of surplus inventory items
    List<inventory> surplusInventoryList = inventoryDAO.getAllInventory();
%>

<h1>Surplus Inventory</h1>

<table>
    <tr>
        <th>ID</th>
        <th>Retailer ID</th>
        <th>Item Type</th>
        <th>Name</th>
        <th>Expiration Date</th>
        <th>Quantity</th>
        <th>Discounted Price</th>
        <th>Surplus</th>
        <th>Action</th>
    </tr>
    <% for (inventory inventory : surplusInventoryList) { %>
        <tr>
            <td><%= inventory.getInventoryId() %></td>
            <td><%= inventory.getRetailerId() %></td>
            <td><%= inventory.getItemType() %></td>
            <td><%= inventory.getName() %></td>
            <td><%= inventory.getExpirationDate() %></td>
            <td><%= inventory.getQuantity() %></td>
            <td><%= inventory.getDiscountedPrice() %></td>
            <td><%= inventory.isSurplus() ? "Yes" : "No" %></td>
            <td>
                <form action="update_inventory" method="post">
                    <input type="hidden" name="inventoryId" value="<%= inventory.getInventoryId() %>">
                    <button type="submit">Update</button>
                </form>
                <form action="delete_inventory" method="post">
                    <input type="hidden" name="inventoryId" value="<%= inventory.getInventoryId() %>">
                    <button type="submit">Delete</button>
                </form>
            </td>
        </tr>
    <% } %>
</table>

<form action="add_inventory" method="post" style="text-align: center;">

<a href="add_inventory.jsp" class="ambutton">Add Surplus Inventory</a>

</form>
</body>
</html>
