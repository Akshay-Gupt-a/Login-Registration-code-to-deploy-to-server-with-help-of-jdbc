<%-- 
    Document   : SignUpHandler
    Created on : 06-Dec-2022, 7:58:02 am
    Author     : Akshay Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" language="java" import="java.sql.*"%>

<%
    // here I am receiving data from registration page to server(SignUp Handler.jsp)
    String name = request.getParameter("full_name");
    String email = request.getParameter("email");
    String password = request.getParameter("pass");
    String number = request.getParameter("number");
    String Address = request.getParameter("address");
//    out.print(name + email + password + number + Address);
    String url = "jdbc:oracle:thin:@localhost:1521:XE";
    try {
        //loading driver
        Class.forName("oracle.jdbc.OracleDriver");
//        out.print("Driver loaded");
        // establishing Connection
        Connection con = DriverManager.getConnection(url, "system", "ak12345");
//        out.print("Connection establish");
        // to do 
        // Now sending to oracle database
        PreparedStatement ps = con.prepareStatement("insert into Registration values(?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, password);
        ps.setString(4, number);
        ps.setString(5, Address);
        ps.executeQuery();
//    if(x!=0){
//    out.print("SignUp done Successfully...");
//    }
//    else{
//    out.print("Something wrong");
//    }
        //connection close
        con.close();
        ps.close();
//        out.print("");
%>
   <a href="Login.jsp">Login</a> <%}
  

    catch (ClassNotFoundException e) {
    
        out.print("class not found ");
    } catch (SQLException e) {
        out.print("connection is not establish");
    }
%>
