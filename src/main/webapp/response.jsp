<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Admission Form Response</title>
    <style>
        body {
    font-family: Arial, sans-serif;
    margin: 0;
    padding: 0;
    background-color: #f7f7f7;
}

.container {
    max-width: 800px;
    margin: 50px auto;
    background-color: #fff;
    padding: 30px;
    border-radius: 8px;
    box-shadow: 0 0 20px rgba(0, 0, 0, 0.1);
}

h2 {
    color: #333;
    margin-bottom: 20px;
}

ul {
    padding: 0;
}

li {
    list-style: none;
    margin-bottom: 15px;
}

strong {
    font-weight: bold;
}

.success-message {
    color: #4caf50;
    font-weight: bold;
}
    </style>
</head>
<body>
    <h2>Admission Form Response</h2>
    <div class =container>
    <p>Thank you for submitting your admission information:</p>
    <p>Name: <%= request.getAttribute("name") %></p>
    <p>Gender: <%= request.getAttribute("gender") %></p>
    <p>Email: <%= request.getAttribute("email") %></p>
    <p>Contact: <%= request.getAttribute("contact") %></p>
    <p>Address: <%= request.getAttribute("address") %></p>
    <p>Nationality: <%= request.getAttribute("nationality") %></p>
    <p>Father's Name: <%= request.getAttribute("fatherName") %></p>
    <p>Mother's Name: <%= request.getAttribute("motherName") %></p>
    <p>Faculty: <%= request.getAttribute("faculty") %></p>
    <p>Department: <%= request.getAttribute("department") %></p>
    <p>Year of Admission: <%= request.getAttribute("year") %></p>

    <%-- Display uploaded file names --%>
    <p>Passport File Name: <%= request.getAttribute("passportFileName") %></p>
    <p>Diploma File Name: <%= request.getAttribute("diplomaFileName") %></p>
    
    
    
    </div>
</body>
</html>