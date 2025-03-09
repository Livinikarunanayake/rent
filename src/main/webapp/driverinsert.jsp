<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Driver Registration</title>
<style>
    /* Import Google Font */
    @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

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

    /* Container for the form */
    .form-container {
        background-color: #fff;
        padding: 40px 30px;
        border-radius: 12px;
        box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
        width: 100%;
        max-width: 550px;
        text-align: center;
        animation: fadeIn 0.8s ease-in-out;
    }

    /* Form Title */
    h1 {
        margin-bottom: 20px;
        color: #4CAF50;
        font-weight: 600;
        font-size: 2.5rem;
    }

    /* Form elements */
    label {
        display: block;
        text-align: left;
        font-size: 1rem;
        margin-bottom: 8px;
        font-weight: 400;
    }

    input[type="text"] {
        width: 100%;
        padding: 12px 15px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 8px;
        font-size: 1rem;
        outline: none;
        transition: border 0.3s;
    }

    input[type="text"]:focus {
        border-color: #4CAF50;
        box-shadow: 0 0 5px rgba(76, 175, 80, 0.4);
    }

    input[type="submit"] {
        width: 100%;
        padding: 12px 15px;
        font-size: 1rem;
        background: linear-gradient(135deg, #4CAF50, #45a049);
        border: none;
        border-radius: 8px;
        color: #fff;
        font-weight: 600;
        cursor: pointer;
        transition: all 0.3s ease;
    }

    input[type="submit"]:hover {
        background: linear-gradient(135deg, #45a049, #4CAF50);
        box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
    }

    /* Register text */
    .register-text {
        font-size: 0.9rem;
        margin-top: 15px;
    }

    .register-text a {
        color: #4CAF50;
        text-decoration: none;
        font-weight: 600;
    }

    .register-text a:hover {
        text-decoration: underline;
    }

    /* Back Button */
    .back-btn {
        position: absolute;
        top: 20px;
        right: 20px;
        background-color: #ff4d4d;
        color: white;
        padding: 10px 15px;
        border: none;
        border-radius: 8px;
        font-size: 0.9rem;
        cursor: pointer;
        display: flex;
        align-items: center;
        gap: 8px;
        transition: background 0.3s ease;
        font-weight: 600;
    }

    .back-btn:hover {
        background-color: #e60000;
    }

    .back-btn img {
        width: 16px;
    }

    /* Animations */
    @keyframes fadeIn {
        from {
            opacity: 0;
            transform: translateY(-10px);
        }
        to {
            opacity: 1;
            transform: translateY(0);
        }
    }
</style>
</head>
<body>

    <!-- Back Button -->
    <button class="back-btn" onclick="window.location.href='driverlogin.jsp'">
        <img src="https://img.icons8.com/?size=100&id=81127&format=png&color=FFFFFF" alt="Back Icon" />
        Back
    </button>    

    <div class="form-container">
       <h1>Driver Registration</h1>
    
        <form action="insertdriver" method="post">
            <label for="name">Name</label>
            <input type="text" id="name" name="name" required>

            <label for="address">Address</label>
            <input type="text" id="address" name="address" required>

            <label for="phone">Phone Number</label>
            <input type="text" id="phone" name="phone" required>

            <label for="nic">NIC</label>
            <input type="text" id="nic" name="nic" required>

            <label for="uid">User Name</label>
            <input type="text" id="uid" name="uid" required>

            <label for="psw">Password</label>
            <input type="text" id="psw" name="psw" required>

            <input type="submit" name="submit" value="Register">
        </form>

        <div class="register-text">
            Already have an account? <a href="driverlogin.jsp">Login</a>
        </div>
    </div>

</body>
</html>
