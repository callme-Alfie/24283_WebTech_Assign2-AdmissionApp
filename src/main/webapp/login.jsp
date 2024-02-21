<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <link rel="stylesheet" type="text/css" href="login.css">
    <style>
        /* Your CSS styles here */
    </style>
    <script>
        // Function to display alert message as a pop-up
        function showAlert(message) {
            alert(message);
        }
    </script>
</head>
<body>
    <div class="container">
        <%-- Display error message --%>
        <% if (request.getAttribute("errorMessage") != null) { %>
            <script>
                showAlert("<%= request.getAttribute("errorMessage") %>");
            </script>
        <% } %>
        <h2>Login</h2>
        <form action="login" method="post">
            <div>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Login</button>
        </form>
        <div class="signup-link">
            <p>Don't have an account? <a href="signup.jsp">Sign Up here</a></p>
        </div>
    </div>
</body>
</html>