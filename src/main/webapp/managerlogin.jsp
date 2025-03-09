<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Manager Login</title>
    <style>
        /* Importing Google Font */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body Styling */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(135deg, #4CAF50, #45a049);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        /* Login Container */
        .login-container {
            background: #fff;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 400px;
            text-align: center;
            animation: fadeIn 1s ease-in-out;
        }

        h2 {
            font-size: 2rem;
            color: #4CAF50;
            margin-bottom: 20px;
            font-weight: 600;
        }

        label {
            display: block;
            font-size: 1rem;
            margin-bottom: 8px;
            text-align: left;
            font-weight: 400;
            color: #555;
        }

        input[type="text"],
        input[type="password"] {
            width: 100%;
            padding: 12px 15px;
            font-size: 1rem;
            margin-bottom: 20px;
            border: 1px solid #ddd;
            border-radius: 8px;
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
            color: #fff;
            background: linear-gradient(135deg, #4CAF50, #45a049);
            border: none;
            border-radius: 8px;
            cursor: pointer;
            transition: all 0.3s ease;
            font-weight: 600;
        }

        input[type="submit"]:hover {
            background: linear-gradient(135deg, #45a049, #4CAF50);
            box-shadow: 0 5px 10px rgba(0, 0, 0, 0.2);
        }

        /* Forgot Password Link */
        .forgot-password {
            display: inline-block;
            margin-top: 10px;
            color: #4CAF50;
            text-decoration: none;
            font-size: 0.9rem;
        }

        .forgot-password:hover {
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
            background: #e60000;
        }

        .back-btn img {
            width: 20px;
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
    <script>
        function validateForm(event) {
            event.preventDefault();

            const username = document.forms["loginForm"]["uid"].value;
            const password = document.forms["loginForm"]["pass"].value;

            const validUsername = "Admin";
            const validPassword = "Admin@123";

            if (username === validUsername && password === validPassword) {
                alert("Login successful!");
                window.location.href = "managerPanel.jsp";
            } else {
                alert("Invalid username or password. Please try again.");
            }
        }
    </script>
</head>
<body>
    <!-- Back Button -->
    <button class="back-btn" onclick="window.location.href='mainPanel.jsp'">
        <img src="https://img.icons8.com/?size=100&id=81127&format=png&color=FFFFFF" alt="Back Icon"/>
        Back
    </button>

    <div class="login-container">
        <h2>Manager Login</h2>
        <form name="loginForm" onsubmit="validateForm(event)">
            <label for="uid">User Name</label>
            <input type="text" id="uid" name="uid" required>

            <label for="pass">Password</label>
            <input type="password" id="pass" name="pass" required>

            <input type="submit" name="submit" value="Login">
            <a href="contactAdmin.jsp" class="forgot-password">Forgot your password?</a>
        </form>
    </div>
</body>
</html>
