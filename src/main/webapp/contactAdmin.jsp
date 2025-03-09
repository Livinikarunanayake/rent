<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Unsuccessful</title>
<style>
    /* General reset */
    * {
        margin: 0;
        padding: 0;
        box-sizing: border-box;
    }

    /* Body setup */
    body {
        font-family: 'Arial', sans-serif;
        background: linear-gradient(to right, #4CAF50, #45a049);
        display: flex;
        justify-content: center;
        align-items: center;
        height: 100vh;
        color: #333;
        text-align: center;
    }

    /* Main container */
    .container {
        background-color: white;
        padding: 40px;
        border-radius: 8px;
        box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 500px;
    }

    h1 {
        color: #ff4d4d;
        font-size: 2.5rem;
        margin-bottom: 20px;
    }

    /* Retry button styling */
    .retry-button {
        margin-top: 20px;
        padding: 12px 20px;
        background-color: #ff4d4d;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .retry-button:hover {
        background-color: #e60000;
    }

    /* Back button styling */
    .back-button {
        margin-top: 30px;
        padding: 12px 20px;
        background-color: #4CAF50;
        color: white;
        font-size: 16px;
        border: none;
        border-radius: 5px;
        cursor: pointer;
        transition: background-color 0.3s ease;
    }

    .back-button:hover {
        background-color: #45a049;
    }
</style>
</head>
<body>

<div class="container">

    <h2>Please contact your Administration !</h2>
    
    <form action="managerlogin.jsp">
        <button type="submit" class="back-button">Back to Login</button>
    </form>
</div>

</body>
</html>
