<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Car Insert</title>
    <style>
        /* Import Google Font */
        @import url('https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap');

        /* General reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body setup */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #4CAF50, #45a049);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        /* Form container */
        .container {
            background-color: #fff;
            padding: 40px 30px;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 550px;
            text-align: center;
        }

        /* Title */
        h2 {
            margin-bottom: 20px;
            color: #4CAF50;
            font-weight: 600;
            font-size: 2rem;
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

    </style>
</head>
<body>

    <!-- Back Button -->
    <button class="back-btn" onclick="window.location.href='managerPanel.jsp'">
        <img src="https://img.icons8.com/?size=100&id=81127&format=png&color=FFFFFF" alt="Back Icon" />
        Back
    </button>

    <div class="container">
        <h2>Add Car Details</h2>
        <form action="insertcar" method="post">
            <label for="number">Car Number</label>
            <input type="text" id="number" name="number" required><br>

            <label for="year">Year</label>
            <input type="text" id="year" name="year" required><br>

            <label for="brand">Brand</label>
            <input type="text" id="brand" name="brand" required><br>

            <label for="model">Model</label>
            <input type="text" id="model" name="model" required><br>

            <label for="type">Type</label>
            <input type="text" id="type" name="type" required><br>

            <input type="submit" name="submit" value="Add">
        </form>
    </div>

</body>
</html>
