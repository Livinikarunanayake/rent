<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Main Panel</title>
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

        /* Title styling */
        h1 {
            font-size: 3rem;
            margin-bottom: 30px;
            font-weight: 600;
            color: #fff;
            text-shadow: 2px 2px 5px rgba(0, 0, 0, 0.3);
        }

        /* Card container */
        .card-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 30px;
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
            border-radius: 50%;
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
		
		
		.btn {
            background-color: white;
            border-radius: 12px;
            width: 250px;
            padding: 5px;
             margin-top:30px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            text-align: center;
            cursor: pointer;
            transition: transform 0.3s ease, box-shadow 0.3s ease;
           
        }

        .btn:hover {
            transform: scale(1.05);
            box-shadow: 0 12px 24px rgba(0, 0, 0, 0.15);
        }

        .btn button {
            background-color: #4CAF50;
            color: white;
            border: none;
            padding: 5px;
            width: 100%;
            border-radius: 8px;
            font-size: 18px;
            cursor: pointer;
            font-weight: 600;
            transition: background-color 0.3s ease;
        }

        . button:hover {
            background-color: #45a049;
        }
		
    </style>
</head>
<body>

    <!-- Title -->
    <h1>Main Panel</h1>
    <br>

    <!-- Card Container -->
    <div class="card-container">
        <!-- Manager Login Card -->
        <div class="card" onclick="window.location.href='managerlogin.jsp'">
            <img src="https://img.icons8.com/?size=100&id=12313&format=png&color=000000" alt="Manager Login">
            <button>Manager Login</button>
        </div>

        <!-- Customer Login Card -->
        <div class="card" onclick="window.location.href='login.jsp'">
            <img src="https://img.icons8.com/?size=100&id=13042&format=png&color=000000" alt="Customer Login">
            <button>Customer Login</button>
        </div>

        <!-- Driver Login Card -->
        <div class="card" onclick="window.location.href='driverlogin.jsp'">
            <img src="https://img.icons8.com/?size=100&id=15127&format=png&color=000000" alt="Driver Login">
            <button>Driver Login</button>
        </div>
    </div>
    
    <div class="btn" onclick="downloadPDF()">
            <button>Help</button>
    </div>
    
    <script>
        function downloadPDF() {
            window.location.href = 'help.pdf'; 
        }
    </script>

</body>
</html>
