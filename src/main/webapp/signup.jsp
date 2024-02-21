<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Sign Up</title>
    <link rel="stylesheet" type="text/css" href="signup.css">
    
    <script>
        // Function to display alert message as a pop-up
        function showAlert(message) {
            alert(message);
        }
    </script>
</head>
<body>
    <div class="container">
        <%-- Display success message --%>
        <% if (request.getAttribute("successMessage") != null) { %>
            <script>
                showAlert("<%= request.getAttribute("successMessage") %>");
            </script>
        <% } %>

        <%-- Display error message --%>
        <% if (request.getAttribute("errorMessage") != null) { %>
            <script>
                showAlert("<%= request.getAttribute("errorMessage") %>");
            </script>
        <% } %>
        <h2>Sign Up</h2>
        <form action="signup" method="post">
            <div>
                <label for="email">Email:</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div>
                <label for="password">Password:</label>
                <input type="password" id="password" name="password" required>
            </div>
            <button type="submit">Sign Up</button>
        </form>
        <div class="login-link">
            <p>Already have an account? <a href="login.jsp">Log In here</a></p>
        </div>
    </div>
</body>
</html>