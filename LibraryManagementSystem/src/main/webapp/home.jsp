<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.library.RegisterBean" %>
<%
    RegisterBean user = (RegisterBean) session.getAttribute("user");
    if (user == null) {
        response.sendRedirect("login.jsp");
        return;
    }
%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Library System - Home</title>
    <link rel="stylesheet" href="css/style.css">
</head>
<body>
    <div class="header">
        <div class="logo">
            <img src="images/library-logo.png" alt="Library Logo" onerror="this.style.display='none'">
            <h1>Library System</h1>
        </div>
        <nav class="nav">
            <a href="home.jsp">Home</a>
            <a href="books.jsp">Library System</a>
            <a href="userprofile.jsp">User Profile</a>
            <a href="logout.jsp">Logout</a>
        </nav>
    </div>
    
    <div class="container wide-container">
        <h2>Welcome to Anna Library</h2>
        
        <div class="about-section">
            <h3>About Anna Library</h3>
            <p>
                Anna Library has been a cornerstone of knowledge, learning, and inspiration for the community.
                 Our mission is to make information accessible to everyone by offering a vast collection 
                 of books, journals, and digital resources across all fields of study.
                  From classic literature to cutting-edge technology, our shelves are filled
                   with knowledge that fuels curiosity and creativity. 
          
            </p>
            <p>
                Our collection includes academic textbooks, fiction, non-fiction, reference materials, 
                and digital resources. With our modern library management system, you can easily browse 
                available books, check their availability status, and manage your reading preferences.
            </p>
            <p>
                We believe that books have the power to transform lives and open new horizons. Whether 
                you're a student, researcher, or casual reader, Anna Library is here to support your 
                educational and recreational reading needs.
            </p>
        </div>
        
        <div class="footer">
            <p>&copy; 2025 Anna Library. All rights reserved.</p>
            <p>Managed by Library Administration Team</p>
        </div>
    </div>
</body>
</html>