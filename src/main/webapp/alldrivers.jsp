<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.driver.Driver" %>
<%@ page import="com.driver.DriverDBUtil" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>All Drivers</title>
    <style>
        /* General Reset */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
        }

        /* Body styling */
        body {
            font-family: 'Poppins', sans-serif;
            background: linear-gradient(to right, #4CAF50, #45a049);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #333;
        }

        /* Page container */
        .container {
            width: 100%;
            max-width: 1200px;
            background-color: #fff;
            border-radius: 12px;
            box-shadow: 0 10px 20px rgba(0, 0, 0, 0.1);
            padding: 40px;
            text-align: center;
        }

        /* Header styling */
        h1 {
            font-size: 2.5rem;
            color: #4CAF50;
            margin-bottom: 30px;
            font-weight: 600;
        }

        /* Table styling */
        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 30px;
        }

        th, td {
            padding: 15px;
            text-align: left;
            border-bottom: 1px solid #ddd;
            font-size: 1rem;
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

        /* Table row hover effect */
        tr:hover {
            background-color: #f1f1f1;
        }

        /* No drivers message styling */
        p {
            font-size: 1.2rem;
            color: #666;
            margin-top: 20px;
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
        

		/* Delete Button */
        .delete-btn {
            background-color: #ff4d4d;
            color: white;
            padding: 5px 10px;
            border: none;
            border-radius: 5px;
            font-size: 0.9rem;
            cursor: pointer;
            transition: background 0.3s ease;
        }

        .delete-btn:hover {
            background-color: #e60000;
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
        <h1>All Drivers</h1>
        <%
            try {
                List<Driver> drivers = com.driver.DriverDBUtil.viewAllDrivers();
                if (drivers != null && !drivers.isEmpty()) {
        %>
        <table>
            <thead>
                <tr>
                    <th>Driver ID</th>
                    <th>Name</th>
                    <th>Address</th>
                    <th>Phone</th>
                    <th>NIC</th>
                    <th>UserName</th>
                    <th>Delete</th> <!-- New Delete Column -->
                </tr>
            </thead>
            <tbody>
                <%
                    for (Driver driver : drivers) {
                %>
                <tr>
                    <td><%= driver.getId() %></td>
                    <td><%= driver.getName() %></td>
                    <td><%= driver.getAddress() %></td>
                    <td><%= driver.getPhone() %></td>
                    <td><%= driver.getNic() %></td>
                    <td><%= driver.getUserName() %></td>
                    <td>
                        <!-- Delete Button -->
                        <form action="driverdelete" method="post" onsubmit="return confirm('Are you sure you want to delete this driver?');">
                            <input type="hidden" name="driverId" value="<%= driver.getId() %>" />
                            <button type="submit" class="delete-btn">Delete</button>
                        </form>
                    </td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
        <%
                } else {
        %>
        <p>No Drivers found.</p>
        <%
                }
            } catch (Exception e) {
                out.println("Error: " + e.getMessage());
                e.printStackTrace();
            }
        %>
    </div>

</body>
</html>
