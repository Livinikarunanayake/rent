<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Manager Panel</title>
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
            color: #fff;
            flex-direction: column;
        }

        h1 {
            color: #fff;
            margin-bottom: 50px;
            font-size: 2.5rem;
        }

        /* Logout button styling */
        .logout-btn {
            position: absolute;
            top: 20px;
            right: 20px;
            background-color: #ff4d4d;
            border: none;
            padding: 10px 20px;
            color: white;
            font-size: 16px;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s ease;
        }

        .logout-btn:hover {
            background-color: #e60000;
        }

        /* Card container */
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
        }

        /* Card style */
        .card {
            background-color: white;
            border-radius: 10px;
            width: 250px;
            padding: 20px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s ease, box-shadow 0.3s ease;
            cursor: pointer;
            text-align: center;
        }

        .card:hover {
            transform: scale(1.05);
            box-shadow: 0 8px 16px rgba(0, 0, 0, 0.2);
        }

        .card img {
            width: 100px;
            height: 100px;
            margin-bottom: 15px;
            /*border-radius: 50%;*/
        }

        .card button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 12px;
            width: 100%;
            border-radius: 5px;
            font-size: 16px;
            cursor: pointer;
        }

        .card button:hover {
            background-color: #45a049;
        }

    </style>
</head>
<body>

    <!-- Logout Button -->
    <button class="logout-btn" onclick="window.location.href='managerlogin.jsp'">
        <img src="https://img.icons8.com/ios/452/shutdown.png" alt="Logout" style="width: 20px; vertical-align: middle; margin-right: 5px;"/>
        Logout
    </button>

    <h1>Manager Panel</h1>

    <div class="card-container">
        <div class="card" onclick="window.location.href='carinsert.jsp'">
            <img src="https://img.icons8.com/?size=100&id=fsoiqMUp0O4v&format=png&color=000000" alt="Add Car">
            <button>Add Car</button>
        </div>

        <div class="card" onclick="window.location.href='allbookings.jsp'">
            <img src="https://img.icons8.com/?size=100&id=dshzUYfI8Ya0&format=png&color=000000" alt="Manage Bookings">
            <button>Manage Bookings</button>
        </div>

        <div class="card" onclick="window.location.href='allcars.jsp'">
            <img src="https://img.icons8.com/?size=100&id=AHzRyf2YnLjW&format=png&color=000000" alt="Manage Cars">
            <button>Manage Cars</button>
        </div>

        <div class="card" onclick="window.location.href='allcustomers.jsp'">
            <img src="https://img.icons8.com/?size=100&id=IerOpHeUt2OH&format=png&color=000000" alt="Manage Customers">
            <button>Manage Customers</button>
        </div>

        <div class="card" onclick="window.location.href='alldrivers.jsp'">
            <img src="https://img.icons8.com/?size=100&id=15127&format=png&color=000000" alt="Manage Drivers">
            <button>Manage Drivers</button>
        </div>

        <div class="card" onclick="window.location.href='allcomplaints.jsp'">
            <img src="https://img.icons8.com/?size=100&id=AiQl68c2wBxW&format=png&color=000000" alt="Manage Complaints">
            <button>Manage Complaints</button>
        </div>
    </div>

</body>
</html>
