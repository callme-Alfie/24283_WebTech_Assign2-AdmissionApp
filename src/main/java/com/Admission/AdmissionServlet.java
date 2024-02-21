package com.Admission;

import java.io.IOException;
import java.io.InputStream;
import java.nio.file.Paths;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.Part;

@WebServlet("/admission")
public class AdmissionServlet extends HttpServlet {

    /**
	 * 
	 */
	private static final long serialVersionUID = 1L;

	public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Retrieve form data
    	String name = request.getParameter("name");
        String gender = request.getParameter("gender");
        String email = request.getParameter("email");
        String contact = request.getParameter("contact");
        String address = request.getParameter("address");
        String nationality = request.getParameter("nationality");
        String fatherName = request.getParameter("father-name");
        String motherName = request.getParameter("mother-name");
        String faculty = request.getParameter("faculty");
        String department = request.getParameter("department");
        String year = request.getParameter("year");

        // Process file uploads
        Part passportPart = request.getPart("passport");
        String passportFileName = null;
        InputStream passportContent = null;
        if (passportPart != null) {
            passportFileName = Paths.get(passportPart.getSubmittedFileName()).getFileName().toString();
            passportContent = passportPart.getInputStream();
        }

        Part diplomaPart = request.getPart("diploma");
        String diplomaFileName = null;
        InputStream diplomaContent = null;
        if (diplomaPart != null) {
            diplomaFileName = Paths.get(diplomaPart.getSubmittedFileName()).getFileName().toString();
            diplomaContent = diplomaPart.getInputStream();
        }

        request.setAttribute("name", name);
        request.setAttribute("gender", gender);
        request.setAttribute("email", email);
        request.setAttribute("contact", contact);
        request.setAttribute("address", address);
        request.setAttribute("nationality", nationality);
        request.setAttribute("fatherName", fatherName);
        request.setAttribute("motherName", motherName);
        request.setAttribute("faculty", faculty);
        request.setAttribute("department", department);
        request.setAttribute("year", year);
        request.setAttribute("passportFileName", passportFileName);
        request.setAttribute("diplomaFileName", diplomaFileName);

        JavaMail.sendConfirmationEmail(email);
        request.getRequestDispatcher("response.jsp").forward(request, response);
    }
}
        
        
        
        
    
