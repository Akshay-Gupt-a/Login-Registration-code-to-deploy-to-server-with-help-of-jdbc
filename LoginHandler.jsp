<%-- 
    Document   : LoginHandler
    Created on : 06-Dec-2022, 11:25:10 am
    Author     : Akshay Gupta
--%>

<%@page contentType="text/html" pageEncoding="UTF-8" import= "java.sql.*" %>
<%
    String email=request.getParameter("email");
    String password=request.getParameter("password");
//    out.print(email+password);
    String url="jdbc:oracle:thin:@localhost:1521:XE";
    try{
    boolean flag=false;
    Class.forName("oracle.jdbc.OracleDriver");
//    out.println("Driver Loaded");
    Connection con=DriverManager.getConnection(url,"system","ak12345");
//    out.println("Connection Establish");
    // to do
    Statement stmt= con.createStatement();//try to Know about it
    ResultSet rs=stmt.executeQuery("select email, password from Registration"); 
    while(rs.next()){
    String demail=rs.getString("email");
    String dpassword=rs.getString("password");
    if(email.equals(demail)&& password.equals(dpassword)){
    flag=true;
    }
    if(flag){
    out.print("Successfull Login...");
    %><a href="index.jsp">HOME</a><%
     break;
    }
    else{
//    response.sendRedirect("login:jsp?email=error");
     out.println("not");
    }
    }
    //close connection
    con.close();%><%
    }
    catch(ClassNotFoundException e){
    out.println("Class Not found");
    }
    catch(SQLException e){
    out.println("Connection is not establish");
    }
%>

