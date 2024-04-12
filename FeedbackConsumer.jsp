<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Feedback Form</title>
<style>
body {
    font-family: 'Amazon Ember', Arial, sans-serif;
    background-color: #232f3e; 
}

.container {
    max-width: 600px;
    margin: 0 auto;
    padding: 20px;
    background-color: #fff;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

h2 {
    text-align: center;
    margin-bottom: 20px;
    color: #111;
}

.form-group {
    margin-bottom: 20px;
}

label {
    display: block;
    font-weight: bold;
    color: #111;
}

input[type="text"], textarea, .dropdown {
    width: calc(100% - 22px); /* Adjusted width to match user type dropdown */
    padding: 10px;
    font-size: 16px;
    border-radius: 4px;
    border: 1px solid #ccc;
    background-color: #fff;
}

textarea {
    resize: vertical;
    min-height: 100px;
}

.btn-submit {
    display: block; /* Change to block level */
    margin: 0 auto; /* Center align */
    padding: 10px 20px;
    font-size: 16px;
    color: #fff;
    background-color: #ff9900;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.error {
    color: #ff0000;
    font-size: 14px;
}

.rating-display {
    font-size: 18px;
    text-align: center;
    color: #007185;
}

/* Navigation bar styles */
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
    <h1 id="title">Feedback Form</h1>
    <nav>
        <ul id="navbar">
            <li class="navitem"><a href="./HomePage.jsp">Home</a></li>
            <li class="navitem"><a href="./ConsumerFirst.jsp">Consumer</a></li>
            <li class="navitem"><a href="./RetailerFirst.jsp">Retailer</a></li>
            
            <li class="navitem"><a href="./CharitableFirst.jsp">Charitable Organization</a></li>
            <li class="navitem"><a class="active">Feedback Form</a></li>
            <li class="navitem"><a class="logout-btn" href="./login.jsp">Logout</a></li>
        </ul>
    </nav>
</header>

<div class="container">
    <h2>Feedback Form</h2>
    
    <form action="SubmitFeedbackServlet" method="post" onsubmit="return validateForm()">
        <div class="form-group">
            <label for="userType">User Type:</label>
            <select id="userType" name="userType" class="dropdown" required>
                <option value="">Select User Type</option>
                <option value="retailer">Retailer</option>
                <option value="charitable">Charitable Organization</option>
                <option value="consumer">Consumer</option>
            </select>
        </div>
        <div class="form-group">
            <label for="personName">Your Name:</label>
            <input type="text" id="personName" name="personName" required>
        </div>
        <div class="form-group">
            <label for="email">Email:</label>
            <input type="text" id="email" name="email" required>
            <div id="emailError" class="error"></div>
        </div>
        <div class="form-group">
            <label for="itemId">Item ID or Name:</label>
            <input type="text" id="itemId" name="itemId" required>
        </div>
        <div class="form-group">
            <label for="feedback">Feedback:</label>
            <textarea id="feedback" name="feedback" required></textarea>
            <div id="feedbackError" class="error"></div>
        </div>
        <div class="form-group">
            <label for="rating">Rating:</label>
            <select id="rating" name="rating" class="dropdown" required>
                <option value="">Select Rating</option>
                <option value="5">Excellent</option>
                <option value="4">Good</option>
                <option value="3">Average</option>
                <option value="2">Fair</option>
                <option value="1">Poor</option>
            </select>
            <div id="ratingError" class="error"></div>
        </div>
        <button type="submit" class="btn-submit">Submit Feedback</button>
    </form>
</div>

<script>
function validateForm() {
    let valid = true;
    const email = document.getElementById('email').value;
    const feedback = document.getElementById('feedback').value;
    const rating = document.getElementById('rating').value;

    // Email format validation
    const emailRegex = /^[^\s@]+@[^\s@]+\.[^\s@]+$/;
    if (!emailRegex.test(email)) {
        document.getElementById('emailError').textContent = 'Please enter a valid email address.';
        valid = false;
    } else {
        document.getElementById('emailError').textContent = '';
    }

    // Rating format validation
    if (rating === '') {
        document.getElementById('ratingError').textContent = 'Please select a rating.';
        valid = false;
    } else {
        document.getElementById('ratingError').textContent = '';
    }

    return valid;
}
</script>

</body>
</html>
