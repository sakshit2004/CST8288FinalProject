<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Retailer  Page">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Retailer</title>
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

h2 {
    text-align: center;
}

.twoButtons {
    text-align: center;
    margin-top: 20px;
}

.twoButtons a {
    display: inline-block;
    padding: 12px 24px;
    background-color: #ff9900;
    color: #fff;
    text-decoration: none;
    border-radius: 25px;
    border: 2px solid #ff9900;
    transition: background-color 0.3s, color 0.3s;
    margin-right: 10px;
}

.twoButtons a:hover {
    background-color: #ffcc66;
    color: #232f3e;
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
            <li class="navitem"><a class="active">Retailer</a></li>
            <li class="navitem"><a href="./ConsumerFirst.jsp">Consumer</a></li>
            
            <li class="navitem"><a href="./CharitableFirst.jsp">Charitable Organization</a></li>
            <li class="navitem"><a href="./FeedbackConsumer.jsp">Feedback Form</a></li>
            <li class="navitem"><a class="logout-btn" href="./login.jsp">Logout</a></li>
        </ul>
    </nav>
</header>
<h2>Hello Retailer. Welcome.</h2><br>
<div class="twoButtons">

    <a href="./surplus_inventory.jsp" class="surplus">Surplus / Donation</a>
    <a href="./add_inventory.jsp" class="add">Add Items</a>
    <a href="./update_inventory.jsp" class="update">Update Items</a>
    <a href="./delete_inventory.jsp" class="delete">Delete Items</a>    
</div>
</body>
</html>
