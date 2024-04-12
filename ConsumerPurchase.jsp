<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Consumer Purchase">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Food Waste Reduction Platform </title>
    <style>
        body {
            font-family: Arial, sans-serif;
            background-color: #f2f2f2;
            margin: 0;
            padding: 0;
        }
        header {
            background-color: #232f3e;
            color: #fff;
            padding: 20px;
            display: flex;
            justify-content: space-between;
            align-items: center;
        }
        #title {
            margin: 0;
            flex-grow: 1;
        }
        nav {
            background-color: #232f3e; 
            padding: 10px;
            margin-right: 20px;
        }
        nav ul {
            list-style-type: none;
            margin: 0;
            padding: 0;
        }
        .navitem {
            display: inline;
            margin-right: 20px;
        }
        .navitem a {
            text-decoration: none;
            color: #fff; 
        }
        .navitem a.active {
            font-weight: bold;
        }
        main {
            margin: 20px;
        }
        h2 {
            text-align: center;
        }
        form {
            max-width: 500px;
            margin: 0 auto;
        }
        label {
            display: block;
            margin-bottom: 10px;
        }
        input[type="text"],
        input[type="number"],
        select,
        input[type="date"] {
            width: 100%;
            padding: 10px;
            margin-bottom: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            box-sizing: border-box;
        }
        input[type="submit"] {
            background-color: #ff9900;;
            color: white;
            padding: 15px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 16px;
        }
        .logout-btn {
            color: #fff;
            text-decoration: none;
            padding: 10px 20px;
            border-radius: 5px;
            background-color: #ff0000;
        }
        .logout-btn:hover {
            background-color: #ff6666;
        }
    </style>
</head>
<body>
    <header>
        <h1 id="title">Food Waste Reduction Platform</h1>
        <nav>
            <ul id="navbar">
                <li class="navitem"><a href="./HomePage.jsp">Home</a></li>
                <li class="navitem"><a href="./RetailerFirst.jsp">Retailer</a></li>
                <li class="navitem"><a class="active" href="./ConsumerPurchase.jsp">Consumer</a></li>
                <li class="navitem"><a href="./CharitableFirst.jsp">Charitable Organization</a></li>
                <li class="navitem"><a class="logout-btn" href="./login.jsp">Logout</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Consumer Entry Form</h2>
        <form id="PurchaseForm" action="PurchaseServlet" method="post">

            
            <label for="item_name">Item Name:</label>
            <input type="text" id="item_name" name="item_name" required>

            <label for="quantity">Quantity:</label>
            <input type="number" id="quantity" name="quantity" min="1" required>

            <label for="price">Price:</label>
            <input type="number" id="price" name="price" min="0.01" step="0.01" required>

            <label for="discount_rate">Discount Rate (%):</label>
            <input type="number" id="discounted_rate" name="discounted_rate" min="0" max="100" step="0.01" required>

            <label for="discounted_price">Discounted Price:</label>
            <input type="number" id="discounted_price" name="discounted_price" step="0.01" required>

            <label for="purchase_amount">Purchase Amount:</label>
            <input type="number" id="purchase_amount" name="purchase_amount" step="0.01" required>

            <input type="submit" value="Submit">
        </form>
    </main>
    
    
    <script>
        document.getElementById('PurchaseForm').addEventListener('submit', function(event) {
            var quantityInput = document.getElementById('quantity');
            var quantityValue = parseInt(quantityInput.value);
            
            if (isNaN(quantityValue) || quantityValue >= 100) {
                alert('Quantity must be a number less than 100.');
                event.preventDefault();
            }
        });
    </script>
</body>
</html>
