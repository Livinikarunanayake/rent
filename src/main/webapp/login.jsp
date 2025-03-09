<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Customer Login</title>
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
        .container {
            background-color: #fff;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 400px;
            text-align: center;
            animation: fadeIn 0.8s ease-in-out;
        }

        /* Form Title */
        h2 {
            margin-bottom: 20px;
            color: #4CAF50;
            font-weight: 600;
            font-size: 1.8rem;
        }

        /* Form elements */
        label {
            display: block;
            text-align: left;
            font-size: 1rem;
            margin-bottom: 8px;
            font-weight: 400;
        }

        input[type="text"], 
        input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            outline: none;
            transition: border 0.3s;
        }

        input[type="text"]:focus,
        input[type="password"]:focus {
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

        /* Error message */
        .error-message {
            color: #ff0000;
            font-size: 0.9rem;
            font-weight: bold;
            text-align: left;
            margin-bottom: 15px;
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
    <button class="back-btn" onclick="window.location.href='mainPanel.jsp'">
        <img src="https://img.icons8.com/?size=100&id=81127&format=png&color=FFFFFF" alt="Back Icon" />
        Back
    </button>

    <div class="container">
        <h2>Customer Login</h2>

        <form action="LoginServlet" method="post">
            <label for="uid">User Name</label>
            <input type="text" id="uid" name="uid" required>

            <label for="pass">Password</label>
            <input type="password" id="pass" name="pass" required>

            <c:if test="${not empty errorMessage}">
                <div class="error-message">${errorMessage}</div>
            </c:if>

            <input type="submit" name="submit" value="Login">
        </form>

        <div class="register-text">
            Don't have an account? <a href="customerinsert.jsp">Register</a>
        </div>
    </div>

</body>
</html>
