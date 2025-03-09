<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Driver Account</title>
<style>
    /* General reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    /* Body and background setup */
    body {
        font-family: 'Poppins', sans-serif;
        background: linear-gradient(to right, #4CAF50, #45a049);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
    }

    /* Container for the profile */
    .container {
        background-color: #fff;
        padding: 40px;
        border-radius: 12px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 600px;
        text-align: center;
        position: relative; /* To position the logout button */
        overflow: hidden;
    }

    h2 {
        font-size: 2.5rem;
        margin-bottom: 40px;
        color: #4CAF50;
        font-weight: 600;
    }

    /* Table styling */
    table {
        width: 100%;
        margin-bottom: 30px;
        border-collapse: collapse;
    }

    table, th, td {
        border: none;
    }

    th, td {
        padding: 15px;
        text-align: left;
        font-size: 1.1rem;
    }

    th {
        background-color: #4CAF50;
        color: white;
        font-weight: 600;
    }

    td {
        background-color: #f9f9f9;
        font-weight: 400;
    }

    /* Button styling */
    .book-button {
        margin-top: 20px;
        padding: 12px 20px;
        background-color: #4CAF50;
        color: white;
        font-size: 1rem;
        border: none;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        font-weight: 600;
    }

    .book-button:hover {
        background-color: #45a049;
    }

    /* Logout button styling */
    .logout-btn {
        position: absolute;
        top: 20px;
        right: 20px;
        background-color: #ff4d4d;
        border: none;
        padding: 12px 20px;
        color: white;
        font-size: 1rem;
        border-radius: 8px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        font-weight: 600;
    }

    .logout-btn:hover {
        background-color: #e60000;
    }

    .logout-btn img {
        width: 18px;
        vertical-align: middle;
        margin-right: 8px;
    }

    /* Card container */
    .card-container {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 30px;
        margin-left: 60px;
    }

    /* Card styling */
    .card {
        background-color: white;
        border-radius: 12px;
        width: 250px;
        padding: 25px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
        text-align: center;
        cursor: pointer;
        transition: transform 0.3s ease, box-shadow 0.3s ease;
    }

    .card:hover {
        transform: scale(1.05);
        box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
    }

    .card img {
        width: 100px;
        height: 100px;
        margin-bottom: 20px;
        transition: transform 0.3s ease;
    }

    .card:hover img {
        transform: scale(1.1);
    }

    .card button {
        background-color: #4CAF50;
        color: white;
        border: none;
        padding: 15px;
        width: 100%;
        border-radius: 8px;
        font-size: 18px;
        cursor: pointer;
        font-weight: 600;
        transition: background-color 0.3s ease;
    }

    .card button:hover {
        background-color: #45a049;
    }

    /* Additional animations */
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-20px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }

    /* Adding fade-in animation to card-container */
    .card-container {
        animation: fadeIn 1s ease-out;
    }
</style>
</head>
<body>

<!-- Logout Button -->
<button class="logout-btn" onclick="window.location.href='driverlogin.jsp'">
    <img src="https://img.icons8.com/ios/452/shutdown.png" alt="Logout" />
    Logout
</button>

<div class="container">
    <h2>My Driver Profile</h2>
    <table>
        <c:forEach var="cus" items="${driverDetails}">
            <tr>
                <td><strong>ID:</strong></td>
                <td>${cus.id}</td>
            </tr>
            <tr>
                <td><strong>Name:</strong></td>
                <td>${cus.name}</td>
            </tr>
            <tr>
                <td><strong>Address:</strong></td>
                <td>${cus.address}</td>
            </tr>
            <tr>
                <td><strong>Phone:</strong></td>
                <td>${cus.phone}</td>
            </tr>
            <tr>
                <td><strong>NIC:</strong></td>
                <td>${cus.nic}</td>
            </tr>
            <tr>
                <td><strong>Username:</strong></td>
                <td>${cus.userName}</td>
            </tr>
        </c:forEach>
    </table>
</div>


</body>
</html>
