<%-- 
    Document   : Login
    Created on : 06-Dec-2022, 11:09:35 am
    Author     : Akshay Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <div class="container">
        <h3>Sign Up page</h3>
        <form action="LoginHandler.jsp" method="post">
            <p><label for="email">Email:-</label>
            <input type="email" name="email" id="email"></p>
            <p><label for="pass">Password
                <input type="password" name="password" id="pass">
            </label></p>
             <input type="submit" value="Login">
        </form>
    </div>
    </body>
</html>
