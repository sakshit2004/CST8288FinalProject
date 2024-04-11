<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<h2>USER REGISTRATION</h2>
<form action="RegistrationForm" method="post"> 

Name : <input type ="text" name= "name1" /> <br/><br/>
Email : <input type ="text" name= "email1" /> <br/><br/>
Password : <input type ="password" name= "pass1" /> <br/><br/>
Type of user : <select name = "Type1">
<option>Select Type</option>
<option>Retailers</option>
<option> Charitable Organization</option>
<option>Consumers</option>

</select><br/><br/>
<input type="submit" value="Register" />

</form>

</body>
</html>