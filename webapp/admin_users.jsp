<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Manage Users - Diet Management System</title>
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

        .header-row {
            display: flex;
            justify-content: space-between;
            align-items: center;
            margin-bottom: 2rem;
        }

        /* Styling for the search bar */
        .search-bar {
            margin-left: auto;
        }

        .search-bar input[type="text"] {
            padding: 0.5rem;
            width: 300px;
            border: 1px solid #ccc;
            border-radius: 5px;
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

        /* Pagination styling */
        .pagination {
            display: flex;
            justify-content: center;
            margin-top: 1rem;
        }

        .pagination a {
            padding: 0.5rem 1rem;
            margin: 0 5px;
            background-color: #002147;
            color: white;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s;
        }

        .pagination a:hover {
            background-color: #C70039;
        }

        .pagination a.active {
            background-color: #FFC300;
        }

        .add-user-form {
            margin-top: 2rem;
        }

        .add-user-form input[type="text"], 
        .add-user-form input[type="email"],
        .add-user-form input[type="password"] {
            width: 100%;
            padding: 1rem;
            margin-bottom: 1rem;
            border: 1px solid #ccc;
            border-radius: 5px;
        }

        .add-user-form button {
            padding: 0.5rem 1rem;
            background-color: #002147;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .add-user-form button:hover {
            background-color: #C70039;
        }
    </style>
</head>
<body>
    <header>Admin Dashboard - Manage Users</header>

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
            <!-- Users Header with Search Bar -->
            <div class="header-row">
                <h2>Users</h2>
                <!-- Search Bar -->
                <div class="search-bar">
                    <form action="searchUserServlet" method="get">
                        <input type="text" name="search" placeholder="Search by name or email...">
                        <button class="btn" type="submit">Search</button>
                    </form>
                </div>
            </div>

            <!-- Users Table -->
            <table>
                <thead>
                    <tr>
                        <th>User ID</th>
                        <th>Full Name</th>
                        <th>Email</th>
                        <th>Diet Plan</th>
                        <th>Actions</th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td>1</td>
                        <td>John Doe</td>
                        <td>johndoe@example.com</td>
                        <td>Keto Diet</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>2</td>
                        <td>Jane Smith</td>
                        <td>janesmith@example.com</td>
                        <td>Vegan Diet</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                    <!-- Display a maximum of 4 users per page -->
                                        <tr>
                        <td>3</td>
                        <td>Mike Johnson</td>
                        <td>mikej@example.com</td>
                        <td>Paleo Diet</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                    <tr>
                        <td>4</td>
                        <td>Emily Brown</td>
                        <td>emilyb@example.com</td>
                        <td>Mediterranean Diet</td>
                        <td>
                            <button class="btn">Edit</button>
                            <button class="btn">Delete</button>
                        </td>
                    </tr>
                    
                </tbody>
            </table>

            <!-- Pagination Controls -->
            <div class="pagination">
                <a href="#">&laquo;</a> <!-- Previous page -->
                <a href="#" class="active">1</a>
                <a href="#">2</a>
                <a href="#">3</a>
                <a href="#">4</a>
                <a href="#">&raquo;</a> <!-- Next page -->
            </div>

            <!-- Add New User Form -->
            <div class="add-user-form">
                <h3>Add New User</h3>
                <form action="AddUserServlet" method="post">
                    <input type="text" name="fullName" placeholder="Full Name" required>
                    <input type="email" name="email" placeholder="Email" required>
                    <input type="password" name="password" placeholder="Password" required>
                    <button type="submit">Add User</button>
                </form>
            </div>
        </div>
    </div>
</body>
</html>
