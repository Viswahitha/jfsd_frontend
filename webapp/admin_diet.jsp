<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Manage Diet Plans - Diet Management System</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #F4F7F9;
            margin: 0;
            padding: 0;
        }

        header {
            background-color: #002147;
            color: white;
            padding: 1rem;
            text-align: center;
            font-size: 1.5rem;
        }

        .container {
            display: flex;
        }

        .sidebar {
            background-color: #2D2D2D;
            padding: 2rem;
            height: 100vh;
            width: 250px;
        }

        .sidebar a {
            color: white;
            text-decoration: none;
            display: block;
            padding: 1rem;
            margin-bottom: 1rem;
            border-radius: 8px;
            transition: background-color 0.3s;
        }

        .sidebar a:hover {
            background-color: #C70039;
        }

        .main-content {
            flex-grow: 1;
            padding: 2rem;
        }

        .header-bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 20px;
        }

        .search-bar input {
            padding: 8px;
            margin-right: 10px;
        }

        .btn {
            padding: 0.5rem 1rem;
            background-color: #C70039;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }

        .btn:hover {
            background-color: #FFC300;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 2rem;
        }

        table th, table td {
            padding: 1rem;
            border: 1px solid #ccc;
            text-align: center;
        }

        table th {
            background-color: #002147;
            color: white;
        }

        .pagination {
            text-align: center;
            margin-top: 20px;
        }

        .pagination a {
            padding: 8px 16px;
            text-decoration: none;
            color: #002147;
            border: 1px solid #ddd;
            margin: 0 5px;
        }

        .pagination a.active {
            background-color: #002147;
            color: white;
        }

        .add-diet-form input[type="text"], 
        .add-diet-form textarea {
            width: 100%;
            padding: 1rem;
            margin-bottom: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .add-diet-form button {
            padding: 0.5rem 1rem;
            background-color: #002147;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .add-diet-form button:hover {
            background-color: #C70039;
        }
    </style>
</head>
<body>
    <header>Admin Dashboard - Manage Diet Plans</header>

    <div class="container">
        <!-- Sidebar Navigation -->
        <div class="sidebar">
            <a href="admin.jsp">Dashboard</a>
            <a href="admin_users.jsp">Manage Users</a>
            <a href="admin_diet.jsp">Manage Diet Plans</a>
            <a href="admin_reports.jsp">Reports & Analytics</a>
            <a href="landingpage.jsp">Logout</a>
        </div>

        <!-- Main Content -->
        <div class="main-content">
            <div class="header-bar">
                <h2>Diet Plans</h2>

                <!-- Search Bar -->
                <div class="search-bar">
                    <input type="text" placeholder="Search diet plans...">
                    <button class="btn">Search</button>
                </div>
            </div>

            <!-- Diet Plans Table -->
            <table>
                <thead>
                    <tr>
                        <th>Diet ID</th>
                        <th>Diet Name</th>
                        <th>Description</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <!-- Static Data for Page 1 (4 Diets) -->
                    <tr>
                        <td>1</td>
                        <td>Keto Diet</td>
                        <td>A high-fat, low-carb diet for weight loss.</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Vegan Diet</td>
                        <td>A plant-based diet excluding all animal products.</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>3</td>
                        <td>Paleo Diet</td>
                        <td>A diet based on the foods of early humans.</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Mediterranean Diet</td>
                        <td>A diet inspired by the eating habits of Mediterranean countries.</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                </tbody>
            </table>

            <!-- Pagination Controls (Static) -->
            <div class="pagination">
                <a href="#">&laquo;</a>
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">&raquo;</a>
            </div>

            <!-- Add New Diet Plan Form -->
            <div class="add-diet-form">
                <h3>Add New Diet Plan</h3>
                <form action="AddDietServlet" method="post">
                    <input type="text" name="dietName" placeholder="Diet Name" required>
                    <textarea name="dietDescription" rows="4" placeholder="Diet Description" required></textarea>
                    <button type="submit">Add Diet Plan</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
