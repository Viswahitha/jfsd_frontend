<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Diet Management System</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<!-- jQuery library -->
<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>

<!-- Popper JS -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

<!-- Latest compiled JavaScript for Bootstrap -->
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    
    <style>
        body {
            font-family: 'Cinzel', serif;
            background-color: #F7F3EF;
            margin: 0;
            padding: 20px;
        }
          header {
            background-color: #002147;
            color: white;
            padding: 1rem;
            border-bottom: 2px solid #C70039;
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

         .carousel-item img {
            width: 100%;
            height: 500px;
            object-fit: cover;
        }
       .carousel-caption {
    background-color: rgba(255, 255, 255, 0.5); /* White background with 50% opacity */
    padding: 20px;
    border-radius: 10px;
}
.carousel-caption h3, .carousel-caption p {
    color: #000000; /* Black text */
}

        
        .card {
            margin: 15px 0;
            padding: 15px;
            border: 1px solid #dee2e6;
            border-radius: 8px;
            transition: transform 0.2s;
            background-color: #ffffff;
            height: 300px;
        }
        .card img {
            width: 100%;
            height: 150px;
            border-radius: 8px 8px 0 0;
        }
        .card:hover {
            transform: scale(1.05);
        }
        .bmi-container, .bodyfat-container {
            background-color: #ffffff;
            border: 1px solid #dee2e6;
            border-radius: 8px;
            padding: 20px;
            max-width: 400px;
            margin: auto;
            margin-top: 20px;
        }
        button {
            width: 100%;
            padding: 10px;
            background-color: #dc3545;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }
        button:hover {
            background-color: #ffc107;
        }
        h3 {
            color: #343a40;
            margin-bottom: 20px;
        }
        input[type="number"], input[type="text"] {
            width: 100%;
            padding: 10px;
            margin: 5px 0;
            border: 1px solid #ced4da;
            border-radius: 5px;
        }
        /* New style for Food Nutrient Cards */
        .nutrient-container {
            background-color: #F8F9FA;
            padding: 20px;
            margin-top: 40px;
        }
        .nutrient-card {
            margin: 10px 0;
            padding: 15px;
            border: 1px solid #dee2e6;
            border-radius: 8px;
            background-color: #ffffff;
        }
        .nutrient-card img {
            width: 100%;
            height: 150px;
            border-radius: 8px 8px 0 0;
        }
        .footer {
            background-color: #002147;
            color: white;
            padding: 10px;
            text-align: center;
            position: relative;
            bottom: 0;
            width: 100%;
            margin-top: 50px;
        }
        .alert {
            margin-top: 10px;
        }
    </style>
</head>
<body>

<!-- Header Navigation Bar -->
 <header>
      <nav>
            <div class="logo">
                <img src="/images/fitplate.jpg" alt="Logo">
                <span class="logo-title">FitPlate</span>
            </div>
            <ul class="nav-links">
                <li><a href="home.jsp">Home</a></li>
                <li><a href="profile.jsp">Profile</a></li>
                <li><a href="landingpage.jsp">Logout</a></li>
               
            </ul>
        </nav>
    </header>

<!-- Carousel Section -->
<div id="dietCarousel" class="carousel slide" data-ride="carousel">
    <ol class="carousel-indicators">
        <li data-target="#dietCarousel" data-slide-to="0" class="active"></li>
        <li data-target="#dietCarousel" data-slide-to="1"></li>
        <li data-target="#dietCarousel" data-slide-to="2"></li>
    </ol>
    <div class="carousel-inner">
        <div class="carousel-item active">
            <img src="/images/first.jpg" alt="Healthy Food">
            <div class="carousel-caption d-none d-md-block">
                <h3>Healthy Food</h3>
                <p>Eat well, live well with balanced diet plans.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/images/third.jpg" alt="Exercise and Nutrition">
            <div class="carousel-caption d-none d-md-block">
                <h3>Exercise and Nutrition</h3>
                <p>A great combination for a healthy lifestyle.</p>
            </div>
        </div>
        <div class="carousel-item">
            <img src="/images/carsoule3.jpeg" alt="Meal Preparation">
            <div class="carousel-caption d-none d-md-block">
                <h3>Meal Preparation</h3>
                <p>Easy and effective meal planning for your diet.</p>
            </div>
        </div>
    </div>
    <a class="carousel-control-prev" href="#dietCarousel" role="button" data-slide="prev">
        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
        <span class="sr-only">Previous</span>
    </a>
    <a class="carousel-control-next" href="#dietCarousel" role="button" data-slide="next">
        <span class="carousel-control-next-icon" aria-hidden="true"></span>
        <span class="sr-only">Next</span>
    </a>
</div>


<!-- Diet Plans Cards -->
<div class="container">
    <h3 class="text-center mt-4">Diet Plans</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="card">
                <img src="/images/vegdiet.jpg" alt="Vegetarian Plan">
                <h5 class="card-title">Vegetarian</h5>
                <p class="card-text">A balanced vegetarian diet plan for healthy living.</p>
                <a href="#" class="btn btn-primary">View Plan</a>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <img src="/images/nonvegdiet.jpg" alt="Non-Vegetarian Plan">
                <h5 class="card-title">Non-Vegetarian</h5>
                <p class="card-text">Get the right nutrients with our non-vegetarian options.</p>
                <a href="#" class="btn btn-primary">View Plan</a>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <img src="/images/vegandiet.jpg" alt="Vegan Plan">
                <h5 class="card-title">Vegan</h5>
                <p class="card-text">Healthy and delicious vegan meals for everyone.</p>
                <a href="#" class="btn btn-primary">View Plan</a>
            </div>
        </div>
        <div class="col-md-3">
            <div class="card">
                <img src="custom_plan.jpg" alt="Customize Plan">
                <h5 class="card-title">Customize Your Diet Plan</h5>
                <p class="card-text">Create a personalized meal plan that suits your needs.</p>
                <a href="#" class="btn btn-primary">Customize</a>
            </div>
        </div>
    </div>
</div>

<!-- Nutrient Information Cards -->
<div class="container nutrient-container">
    <h3 class="text-center">Nutrient Information</h3>
    <div class="row">
        <div class="col-md-3">
            <div class="nutrient-card">
               <!-- <img src="apple.jpg" alt="Apple">  --> 
                <h5 class="card-title">Apple</h5>
                <p class="card-text">Nutrients: Fiber, Vitamin C, Potassium</p>
                <p class="card-text">Calories: 52 per 100g</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="nutrient-card">
               <!-- <img src="broccoli.jpg" alt="Broccoli">  --> 
                <h5 class="card-title">Broccoli</h5>
                <p class="card-text">Nutrients: Fiber, Vitamin K, Vitamin C</p>
                <p class="card-text">Calories: 55 per 100g</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="nutrient-card">
                <!-- <img src="chicken.jpg" alt="Chicken Breast">  --> 
                <h5 class="card-title">Chicken Breast</h5>
                <p class="card-text">Nutrients: Protein, Vitamin B6, Phosphorus</p>
                <p class="card-text">Calories: 165 per 100g</p>
            </div>
        </div>
        <div class="col-md-3">
            <div class="nutrient-card">
               <!-- <img src="almonds.jpg" alt="Almonds"> --> 
                <h5 class="card-title">Almonds</h5>
                <p class="card-text">Nutrients: Vitamin E, Magnesium, Fiber</p>
                <p class="card-text">Calories: 579 per 100g</p>
            </div>
        </div>
    </div>
</div>

<!-- BMI and Body Fat Calculators Side by Side -->
<div class="container">
    <div class="row">
        <!-- BMI Calculator Section -->
        <div class="col-md-6 bmi-container">
            <h3>BMI Calculator</h3>
            <form id="bmiForm">
                <div class="form-group">
                    <label for="bmiHeight">Height (in cm):</label>
                    <input type="number" id="bmiHeight" class="form-control" placeholder="Enter height in cm">
                </div>
                <div class="form-group">
                    <label for="bmiWeight">Weight (in kg):</label>
                    <input type="number" id="bmiWeight" class="form-control" placeholder="Enter weight in kg">
                </div>
                <div class="form-group">
                    <label for="bmiHeight">Age</label>
                    <input type="number" id="bmiAge" class="form-control" placeholder="Enter Age in years">
                </div>
                <button type="button" onclick="calculateBMI()">Calculate BMI</button>
                <div id="bmiResult" class="alert alert-info mt-3" style="display:none;"></div>
            </form>
        </div>

        <!-- Body Fat Calculator Section -->
        <div class="col-md-6 bodyfat-container">
            <h3>Body Fat Calculator</h3>
            <form id="bodyFatForm">
                <div class="form-group">
                    <label for="age">Age:</label>
                    <input type="number" id="age" class="form-control" placeholder="Enter age">
                </div>
                <div class="form-group">
                    <label for="weight">Weight (in kg):</label>
                    <input type="number" id="weight" class="form-control" placeholder="Enter weight in kg">
                </div>
                <div class="form-group">
                    <label for="waist">Waist Circumference (in cm):</label>
                    <input type="number" id="waist" class="form-control" placeholder="Enter waist circumference in cm">
                </div>
                <button type="button" onclick="calculateBodyFat()">Calculate Body Fat</button>
                <div id="bodyFatResult" class="alert alert-info mt-3" style="display:none;"></div>
            </form>
        </div>
    </div>
</div>


<!-- Footer -->
<div class="footer">
    <p>Diet Management System &copy; 2024</p>
</div>

<!-- JavaScript to calculate BMI and Body Fat -->
<script>
    function calculateBMI() {
        var height = document.getElementById("bmiHeight").value / 100;
        var weight = document.getElementById("bmiWeight").value;
        if (height > 0 && weight > 0) {
            var bmi = (weight / (height * height)).toFixed(2);
            document.getElementById("bmiResult").style.display = "block";
            document.getElementById("bmiResult").textContent = "Your BMI is " + bmi;
        } else {
            document.getElementById("bmiResult").style.display = "block";
            document.getElementById("bmiResult").textContent = "Please enter valid height and weight.";
        }
    }

    function calculateBodyFat() {
        var age = document.getElementById("age").value;
        var weight = document.getElementById("weight").value;
        var waist = document.getElementById("waist").value;

        if (age > 0 && weight > 0 && waist > 0) {
            var bodyFat = (1.20 * weight + 0.23 * age - 10.8 * 1 - 5.4).toFixed(2);
            document.getElementById("bodyFatResult").style.display = "block";
            document.getElementById("bodyFatResult").textContent = "Your Body Fat percentage is " + bodyFat + "%";
        } else {
            document.getElementById("bodyFatResult").style.display = "block";
            document.getElementById("bodyFatResult").textContent = "Please enter valid inputs.";
        }
    }
</script>

</body>
</html>
