<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Home Page</title>
    <link rel="stylesheet" href="index.css">
</head>
<body>
<nav>
        <ul>
            <li><a href="admission.jsp">Admission</a></li>
            <li><a href="login.jsp">Login</a></li>
            <li><a href="signup.jsp">Signup</a></li>
        </ul>
    </nav>
    <div class="container">
        <div class="content">
            <h2>Welcome to Student Admission App</h2>
            <p>Please sign up or login to continue.</p>
            
            <% if (session.getAttribute("email") == null) { %>
                <p>You need to <a href="signup.jsp">sign up</a> or <a href="login.jsp">login</a> to access the admission page.</p>
            <% } else { %>
                <p>You are logged in as <%= session.getAttribute("email") %>. Click <a href="admission.jsp">here</a> to access the admission page.</p>
            <% } %>
            
            <a href="admission.jsp" class="button">Admission Page</a>
        </div>
        <div class="image-container">
            <img src="back.png" alt="Image" class="image">
        </div>
    </div>
    
</body>
</html>