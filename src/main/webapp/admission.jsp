<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <title>Student Admission</title>
  <link rel="stylesheet" href="admission.css">
  <script>
    function validateRegistration() {
      // Perform client-side validation
      var name = document.getElementById("name").value;
      var email = document.getElementById("email").value;
      var contact = document.getElementById("contact").value;
      var address = document.getElementById("address").value;
      var nationality = document.getElementById("nationality").value;
      var fatherName = document.getElementById("father").value;
      var motherName = document.getElementById("mother").value;
      var faculty = document.getElementById("faculty").value;
      var department = document.getElementById("department").value;
      var year = document.getElementById("year").value;

      // Check if any field is empty
      if (!name || !email || !contact || !address || !nationality || !fatherName || !motherName || !faculty || !department || !year) {
        alert("Please fill in all fields.");
        return false;
      }
      return true;
    }
  </script>
</head>
<body>
  <header>
    <h1>Student Admission</h1>
  </header>
  <main>
    <a href="index.jsp">Go Back Home</a>
    <h2>Welcome to the Admission Page</h2>
    <% if (session.getAttribute("email") == null) { %>
        <p>You need to <a href="login.jsp">login</a> to access this page.</p>
    <% } else { %>
        <p>You are logged in as <%= session.getAttribute("email") %>. <a href="logout">Logout</a></p>
        <!-- Add admission form here -->
    
    <form id="registration-form" action="admission" method="post" onsubmit="return validateRegistration()" enctype="multipart/form-data">
      <div class="field">
        <label for="name">Full Name:</label>
        <input type="text" id="name" name="name" required>
      </div>
      <div class="field">
        <label for="gender">Gender:</label>
        <select id="gender" name="gender" required>
          <option value="Male">Male</option>
          <option value="Female">Female</option>
          <option value="Other">Other</option>
        </select>
      </div>
      <div class="field">
        <label for="email">Email Address:</label>
        <input type="email" id="email" name="email" required>
      </div>
      <div class="field">
        <label for="contact">Phone Number:</label>
        <input type="tel" id="contact" name="contact" required>
      </div>
      <div class="field">
        <label for="address">Place of Residence:</label>
        <input type="text" id="address" name="address" required>
      </div>
      <div class="field">
        <label for="nationality">Nationality:</label>
        <input type="text" id="nationality" name="nationality" required>
      </div>
      <div class="field">
        <label for="father">Father's Name:</label>
        <input type="text" id="father" name="father-name" required>
      </div>
      <div class="field">
        <label for="mother">Mother's Name:</label>
        <input type="text" id="mother" name="mother-name" required>
      </div>
      <div class="field">
        <label for="faculty">Faculty:</label>
        <input type="text" id="faculty" name="faculty" required>
      </div>
      <div class="field">
        <label for="department">Department:</label>
        <input type="text" id="department" name="department" required>
      </div>
      <div class="field">
        <label for="year">Year of Admission:</label>
        <input type="text" id="year" name="year" required>
      </div>
      <div class="field">
        <label for="passport">Passport Picture:</label>
        <input type="file" id="passport" name="passport" accept=".jpg, .png" required>
      </div>
      <div class="field">
        <label for="diploma">Diploma (PDF):</label>
        <input type="file" id="diploma" name="diploma" accept=".pdf" required>
      </div>
      <button type="submit">Register</button>
      <button type="reset">Reset</button>
    </form>
    <% } %>
  </main>
  </body>
</html>