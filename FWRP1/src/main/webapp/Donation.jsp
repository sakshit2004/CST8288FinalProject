<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="description" content="Charitable Donation">
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
input[type="date"],
input[type="email"] {
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
       
    </style>
</head>
<body>
    <header>
        <h1 id="title">Food Waste Reduction Platform</h1>
        <nav>
            <ul id="navbar">
                <li class="navitem"><a href="./HomePage.jsp">Home</a></li>
                <li class="navitem"><a href="./RetailerFirst.jsp">Retailer</a></li>
                <li class="navitem"><a href="./ConsumerFirst.jsp">Consumer</a></li>
                <li class="navitem"><a class="active" href="./CharitableDonation.jsp">Charitable Organization</a></li>
            </ul>
        </nav>
    </header>
    <main>
        <h2>Charitable Donation Form</h2>
        <form id="DonationForm" action="DonationServlet" method="post">

            <label for="retailerName">Retailer Name:</label>
            <input type="text" id="retailerName" name="retailerName" required>

            <label for="retailerEmail">Retailer Email:</label>
            <input type="email" id="retailerEmail" name="retailerEmail" required>

            <label for="retailerContact">Retailer Contact:</label>
            <input type="text" id="retailerContact" name="retailerContact" required>

            <label for="retailerAddress">Retailer Address:</label>
            <input type="text" id="retailerAddress" name="retailerAddress" required>

            <label for="itemId">Item ID:</label>
            <input type="number" id="itemId" name="itemId" min="1" required>

            <label for="donationDate">Donation Date:</label>
            <input type="date" id="donationDate" name="donationDate" required>

            <label for="donationQuantity">Donation Quantity:</label>
            <input type="number" id="donationQuantity" name="donationQuantity" min="1" required>

            <label for="donationDescription">Donation Description:</label>
            <input type="text" id="donationDescription" name="donationDescription" required>

            <input type="submit" value="Submit">
        </form>
    </main>
     <script>
        function validateForm() {
            var retailerContact = document.getElementById("retailerContact").value;
            var retailerEmail = document.getElementById("retailerEmail").value;
            
        
            // Regular expression to match 10 digits only
            var phoneNumberPattern = /^\d{10}$/;

            if (!phoneNumberPattern.test(retailerContact)) {
                alert("Phone number must be 10 digits and contain only numbers.");
                return false;
            }

            // Validate email format
            if (!/^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/.test(retailerEmail)) {
                alert("Please enter a valid email address.");
                return false;
            }
            
            // Validate donation description length
            var donationDescription = document.getElementById("donationDescription").value;
            var words = donationDescription.split(" ");
            if (words.length > 100) {
                alert("Donation description cannot exceed 100 words.");
                return false;
            }
            
            // Form is valid
            return true;
        }
    </script>
</body>
</html>
