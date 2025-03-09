<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Complaint</title>
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
    }

    /* Form container */
    .form-container {
        background-color: white;
        padding: 40px;
        border-radius: 8px;
        box-shadow: 0 2px 15px rgba(0, 0, 0, 0.1);
        width: 100%;
        max-width: 600px;
    }

    h1 {
        color: #4CAF50;
        font-size: 2.5rem;
        margin-bottom: 20px;
        text-align: center;
    }

    label {
        font-size: 16px;
        margin-bottom: 8px;
        display: block;
    }

    input[type="number"],
    input[type="date"],
    select,
    textarea {
        width: 100%;
        padding: 12px;
        margin-bottom: 20px;
        border: 1px solid #ddd;
        border-radius: 5px;
        font-size: 14px;
        background-color: #f9f9f9;
        transition: border-color 0.3s ease, box-shadow 0.3s ease;
    }

    input[type="number"]:focus,
    input[type="date"]:focus,
    select:focus,
    textarea:focus {
        border-color: #4CAF50;
        box-shadow: 0 0 5px rgba(76, 175, 80, 0.5);
    }

    input[type="submit"] {
        background-color: #4CAF50;
        color: white;
        padding: 12px 20px;
        border: none;
        border-radius: 5px;
        font-size: 16px;
        cursor: pointer;
        transition: background-color 0.3s ease;
        width: 100%;
    }

    input[type="submit"]:hover {
        background-color: #45a049;
    }

    /* Textarea resize */
    textarea {
        resize: vertical;
    }

    /* Dropdown and input focus */
    select,
    input[type="number"]:focus,
    input[type="date"]:focus {
        outline: none;
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
            font-size: 1rem;
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
    <button class="back-btn" onclick="window.location.href='login.jsp'">
        <img src="https://img.icons8.com/?size=100&id=81127&format=png&color=FFFFFF" alt="Back Icon" />
        Back
    </button>
	

<div class="form-container">
    <h1>Add Complaint</h1>
    <form action="insertcomplaint" method="post">
        <label for="cusid">Customer ID:</label>
        <input type="number" id="cusid" name="cusid" required>
        
        <label for="type">Complaint Type:</label>
        <select id="type" name="type" required>
            <option value="" disabled selected>Select Complaint Type</option>
            <option value="Driver">Driver</option>
            <option value="Rides">Rides</option>
            <option value="Bookings">Bookings</option>
            <option value="Company">Company</option>
            <option value="Other">Other</option>
        </select>

        <label for="date">Date:</label>
        <input type="date" id="date" name="date" required>

        <label for="complaint">Complaint:</label>
        <textarea id="complaint" name="complaint" rows="5" placeholder="Enter your complaint here..." required></textarea>

        <input type="submit" name="submit" value="Submit">
    </form>
</div>

</body>
</html>
