<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Sign Up - FitPlate</title>
    <style>
        /* General Styles */
        body {
            font-family: 'Cinzel', serif;
            background-color: #F7F3EF;
            color: #2D2D2D;
            line-height: 1.6;
            margin: 0;
            padding: 0;
            background-image: url('/images/backgroundright.avif'); /* Update this with your image URL */
            background-size: cover; /* Adjust to fit the screen */
            background-position: center; /* Center the background */
        }

        /* Header Styles */
        header {
            background-color: #002147;
            color: white;
            padding: 1rem;
            border-bottom: 2px solid #C70039;
            text-align: center;
        }

        nav {
            display: flex;
            justify-content: space-between; /* Aligns items to corners */
            align-items: center;
        }
        .logo {
            display: flex;
            align-items: center;
        }

        .logo img {
            width: 30px;
            height: 30px;
            margin-right: 0.5rem;
        }

        .logo-title {
            font-size: 1.7rem;
            font-weight: bold;
            color: white;
        }

        .nav-links {
            list-style: none;
            padding: 0;
            margin: 0;
        }

        .nav-links li {
            display: inline-block;
            margin-right: 2rem;
        }

        .nav-links a {
            color: white;
            text-decoration: none;
            font-size: 1.2rem;
            font-weight: 700;
        }


        .logo-title {
            font-size: 1.7rem;
            font-weight: bold;
            color: white;
        }

        /* Signup Section Styles */
        .signup-container {
            max-width: 500px;
            margin: 5rem auto;
            margin-left: 100px; /* Shift the form to the right by 100px */
            background-color: rgba(0, 0, 0, 0.7); /* Semi-transparent black background */
            padding: 2rem;
            box-shadow: 0 6px 12px rgba(0, 0, 0, 0.2);
            border-radius: 10px;
            color: white; /* Text color adjusted for contrast */
        }

        .signup-container h2 {
            text-align: center;
            font-family: 'Playfair Display', serif;
            color: #C70039; /* Header color */
            margin-bottom: 1.5rem;
        }

        .form-group {
            margin-bottom: 1.5rem;
        }

        .form-group label {
            display: block;
            margin-bottom: 0.5rem;
            font-weight: bold;
        }

        .form-group input {
            width: 100%;
            padding: 0.75rem;
            border: 1px solid rgba(255, 255, 255, 0.5); /* Light border for visibility */
            border-radius: 5px;
            background-color: rgba(0, 0, 0, 0.5); /* Semi-transparent black background */
            color: white; /* Change text color to white for contrast */
        }

        .form-group input:focus {
            border-color: #C70039; /* Highlight border on focus */
            outline: none;
            background-color: rgba(0, 0, 0, 0.7); /* Darker on focus */
        }

        .btn {
            background-color: #C70039;
            color: white;
            padding: 1rem;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            width: 100%;
            font-size: 1.1rem;
            transition: background-color 0.3s ease;
        }

        .btn:hover {
            background-color: #FFC300; /* Hover effect */
            color: #2D2D2D;
        }

        /* Footer Styles */
        footer {
            background-color: #2D2D2D;
            color: white;
            text-align: center;
            padding: 1.5rem;
            margin-top: 2rem;
        }

        footer p {
            margin: 0;
            font-size: 1rem;
        }
    </style>
</head>
<body>
     <header>
      <nav>
            <div class="logo">
                <img src="/images/fitplate.jpg" alt="Logo">
                <span class="logo-title">FitPlate</span>
            </div>
            <ul class="nav-links">
                <li><a href="#about-section">About</a></li>
                <li><a href="#info">Info</a></li>
                <li><a href="#faq">FAQ</a></li>
                <li><a href="#contact-section">Contact</a></li>
                <li><a href="/signin" class="signin">Sign In</a></li> <!-- Added Sign In button -->
            </ul>
        </nav>
    </header>

    <div class="signup-container">
        <h2>Create an Account</h2>
        <form action="home.jsp" method="POST">
            <div class="form-group">
                <label for="name">Full Name</label>
                <input type="text" id="name" name="name" required>
            </div>
            <div class="form-group">
                <label for="email">Email Address</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="password">Password</label>
                <input type="password" id="password" name="password" required>
            </div>
            <div class="form-group">
                <label for="confirm-password">Confirm Password</label>
                <input type="password" id="confirm-password" name="confirm-password" required>
            </div>
            <button type="submit" class="btn">Sign Up</button>
        </form>
        <p>Have an account?SignIn <a href="signin.jsp">Sign In</a></p> 
    </div>

    <footer>
        <p>&copy; 2024 FitPlate. All rights reserved.</p>
    </footer>
</body>
</html>
