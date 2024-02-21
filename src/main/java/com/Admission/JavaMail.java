package com.Admission;

import java.util.Properties;
import javax.mail.*;
import javax.mail.internet.*;

public class JavaMail {

    private static final String SMTP_HOST = "smtp.gmail.com";
    private static final String SMTP_PORT = "587"; // TLS port
    private static final String EMAIL_FROM = "aldennis.podcast@gmail.com";
    private static final String EMAIL_PASSWORD = "Un1vers@l";

    public static void sendConfirmationEmail(String recipientEmail) {
        // Email properties
        Properties properties = new Properties();
        properties.put("mail.smtp.host", SMTP_HOST);
        properties.put("mail.smtp.port", SMTP_PORT);
        properties.put("mail.smtp.auth", "true");
        properties.put("mail.smtp.starttls.enable", "true");

        // Authenticator
        Authenticator authenticator = new Authenticator() {
            protected PasswordAuthentication getPasswordAuthentication() {
                return new PasswordAuthentication(EMAIL_FROM, EMAIL_PASSWORD);
            }
        };

        
        Session session = Session.getInstance(properties, authenticator);

        try {
            
            MimeMessage message = new MimeMessage(session);
            message.setFrom(new InternetAddress(EMAIL_FROM));
            message.addRecipient(Message.RecipientType.TO, new InternetAddress(recipientEmail));
            message.setSubject("Admission Submission Confirmation");
            message.setText("Dear User,\n\nYour admission request has been submitted successfully. Thank you for applying.");

            
            Transport.send(message);
            System.out.println("Email sent successfully to " + recipientEmail);
        } catch (MessagingException e) {
            e.printStackTrace();
        }
    }
}