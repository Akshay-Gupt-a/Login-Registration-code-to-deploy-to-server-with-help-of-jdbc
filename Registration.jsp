<%-- 
    Document   : index
    Created on : 06-Dec-2022, 7:56:32 am
    Author     : Akshay Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <div class="container">
        <h2>Registration Page</h2>
    <form action="SignUpHandler.jsp" method="post">
        <p> 
            <label for="name">Full Name*:-</label>
            <input type="text" name="full_name" id="name" required placeholder="Enter Your full Name">
        </p>
        <p> 
            <label for="email">Email*:-</label>
            <input type="email" name="email" id="email" required placeholder="Enter Your Valid Email">
        </p>
        <p> 
            <label for="pass">Password*:-</label>
            <input type="password" name="pass" id="pass" required placeholder="At least 8 character ">
        </p>
        <p>
            <label for="contact">Contact No-</label>
            <input type="number" name="number" id="contact" placeholder="Enter your 10 digit phone number">
        </p>
        <p>
            <label for="add">Address:-</label>
            <input type="text" name="address" id="add" placeholder="Enter Your Address">
        </p>
        <input type="submit" value="SignUp">
    </form>
</div>
    </body>
</html>
