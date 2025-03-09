# ProjectRent
Car Rental System
A comprehensive web-based Car Rental System designed for seamless vehicle booking and rental management. The system supports three distinct user roles—Customer, Manager, and Driver—each with tailored access. It includes a billing system with automated PDF invoice generation and robust user and vehicle management features.
________________________________________
Table of Contents
•	About the Project
•	Features
•	Technologies Used
•	User Roles & Access
•	Installation
•	Usage
•	Help Section
•	Contact
________________________________________
About the Project
This Car Rental System provides an intuitive platform for managing car rentals. Customers can book vehicles and receive PDF bills, while Managers have advanced tools to handle vehicles, users, and complaints. An integrated Help section ensures users can navigate their respective dashboards with ease.
________________________________________
Features
•	Customer
o	Register/Login
o	Browse and book vehicles
o	Automated bill calculation with PDF invoice generation upon booking
o	Submit complaints
o	Access the Help PDF for guidance
•	Manager
o	Register/Login
o	Add, edit, and hard delete vehicles
o	Manage customer accounts (soft delete—removes customers from the table, but retains data in the database)
o	Manage drivers (hard delete)
o	Manage complaints (hard delete)
o	Access the Help PDF for guidance
•	Driver
o	Register/Login
o	View their profile
o	Access the Help PDF for guidance
•	Help Section
o	Accessible by all users
o	Links to a detailed PDF guide covering registration, login, and system usage instructions
________________________________________
Technologies Used
•	Front-end: HTML, CSS
•	Back-end: Java
•	Database: MySQL
________________________________________
User Roles & Access
User Role	Access & Permissions
Customer	Book vehicles, receive PDF bill, add complaints, access Help PDF
Manager	Add/manage cars, soft delete customers, hard delete drivers/cars/complaints, access Help PDF
Driver	View profile, access Help PDF
________________________________________
Installation
Prerequisites
•	Java Development Kit (JDK)
•	MySQL Server
•	Apache Tomcat Server
•	Web Browser
Steps
1.	Clone the repository:
git clone https://github.com/your-username/ your-repositary-name.git
2.	Database Setup (MySQL):
o	Create a new database.
o	Import the provided .sql file to create necessary tables and relationships.
3.	Configure the backend (Java):
o	Add your MySQL connection configuration (host, username, password).
o	Include the PDF generation library (like iText) if not already set up.
o	Compile and run the backend application: 
________________________________________
Usage
Customer Workflow
1.	Register/Login.
2.	Browse available cars.
3.	Book a vehicle.
4.	Receive a PDF invoice with billing details after booking.
5.	Add complaints if needed.
6.	Access the Help section for support.
Manager Workflow
1.	Login as a manager.
2.	Add new cars and manage existing ones.
3.	Soft delete customers (removes from table only).
4.	Hard delete drivers, cars, and complaints.
5.	Access the Help PDF.
Driver Workflow
1.	Login as a driver.
2.	View personal profile.
3.	Access the Help PDF.
________________________________________
Help Section
Every user has access to a Help button at the bottom of the login screen.
This opens a PDF guide that covers:
•	How to register and log in
•	Dashboard navigation
•	Step-by-step usage instructions for each role
________________________________________
Contact
Chamathka Livini
livini2002@gmail.com



