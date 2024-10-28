<%@ Page Title="Home - Fitness Track Application" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="HOME.aspx.cs" Inherits="FITNESSTRACKAPPLICATION.HOME" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <style>
        body {
            background-color: #f4f4f9;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            line-height: 1.6;
        }
        h1 {
            text-align: center;
            color: #ff4d4d;
            margin-top: 30px;
        }
        h2 {
            font-size: 2rem;
            color: #ff4d4d;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin: 20px 0;
            transition: color 0.3s ease;
        }
        @media (max-width: 768px) {
            h2 {
                font-size: 1.8rem;
            }
        }
        @media (max-width: 576px) {
            h2 {
                font-size: 1.6rem;
                margin: 15px 0;
            }
        }
        h2:hover {
            color: #218838;
        }
        .feature-box {
            background: #ffffff; /* White background for feature box */
            border-radius: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            padding: 30px;
            margin: 20px 0;
            transition: transform 0.3s, box-shadow 0.3s;
            color: #000; /* Black text color */
        }
        .feature-box:hover {
            transform: translateY(-5px);
            box-shadow: 0 8px 30px rgba(0, 0, 0, 0.2);
        }
        .btn-custom {
            background-color: #28a745;
            color: white;
            padding: 15px 25px;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .btn-custom:hover {
            background-color: #218838;
        }
        .blockquote {
            border-left: 4px solid #28a745;
            padding-left: 15px;
            margin: 20px 0;
            color: #333;
            font-style: italic;
            background-color: rgba(40, 167, 69, 0.1);
            border-radius: 10px;
            padding: 15px;
        }
        .section-background {
            background-color: #343a40;
            padding: 30px;
            border-radius: 20px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }
        .text-custom {
            color: #000; /* Set to black for consistency */
        }
        .img-responsive {
            width: 100%;
            height: auto;
            border-radius: 15px;
            transition: transform 0.3s;
        }
        .img-container {
            margin: 15px 0;
            overflow: hidden;
            border-radius: 15px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            transition: transform 0.3s;
        }
        .img-container:hover {
            transform: scale(1.05);
        }
        .success-stories {
            padding: 40px 0;
            background-color: #fff;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            margin-top: 30px;
        }
        .story-card {
            background-color: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            margin: 15px;
            transition: transform 0.3s;
        }
        .story-card:hover {
            transform: translateY(-5px);
        }
        .star-rating {
            color: #FFD700; /* Yellow color for stars */
        }
        .story-card-body {
            padding: 15px;
        }
        .story-card-title {
            font-weight: bold;
            color: #28a745;
        }
        .story-card-text {
            font-style: italic;
            color: #555;
        }
        .call-to-action {
            background-color: #28a745;
            color: white;
            padding: 40px 20px;
            border-radius: 20px;
            box-shadow: 0 4px 20px rgba(0, 0, 0, 0.1);
            transition: background-color 0.3s;
        }
        .call-to-action:hover {
            background-color: #218838;
        }
    </style>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1 class="display-4 text-custom" style =" color : white" >Welcome to Your Fitness Journey</h1>
    <section class="mt-5">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-4">
                    <video autoplay loop muted class="img-container" style="width: 100%; height: auto;">
                        <source src="Sporty Gym Fitness Running Group.mp4" type="video/mp4">
                        Your browser does not support the video tag.
                    </video>
                </div>
                <div class="col-md-4">
                    <div class="img-container">
                        <asp:Image ID="Image1" runat="server" ImageUrl="~/Image/4.jpg" CssClass="img-responsive" style="width: 100%; height: auto;" />
                    </div>
                </div>
                <div class="col-md-4">
                    <p class="lead text-custom" style="text-align: left; color : white " >At Fitness Track Application, 
                        we believe that fitness is not just a hobby, but a lifestyle. 
                        Our platform is designed to empower you to achieve your health goals 
                        and become the best version of yourself.</p>
                </div>
            </div>
        </div>
    </section>

    <section class="features mt-5">
        <h2 class="text-center">What We Offer</h2>
        <div class="container">
            <div class="row">
                <div class="col-md-12">
                    <div class="feature-box section-background">
                        <h3 class="text-custom" style =" color : white" >Comprehensive User Management</h3>
                        <p class="text-custom" style =" color : white" >Our application manages user information efficiently, enabling personalized tracking and interaction.</p>
                        <h4 class="text-custom" style =" color : white" >Key Relationships:</h4>
                        <ul class="text-custom" style =" color : white" >
                            <li><strong>Training Session Videos:</strong> Tailored to your specific goals.</li>
                            <li><strong>Workouts:</strong> Linked to Users via UserId for detailed tracking.</li>
                            <li><strong>Goals:</strong> Personalized goals tracked against Users via UserId.</li>
                            <li><strong>Challenges:</strong> Created by Users, linked via CreatedBy for community engagement.</li>
                            <li><strong>UserChallenges:</strong> Associates users with challenges.</li>
                            <li><strong>ProgressReports:</strong> Monitors user progress linked to Users.</li>
                        </ul>
                        <div class="flex-image-container">
                            <div class="img-container">
                                <asp:Image ID="imgWorkoutPlan" runat="server" ImageUrl="~/Image/2.jpg" CssClass="img-responsive" />
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="mt-5">
        <h2 class="text-center">Get Inspired!</h2>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-4">
                    <div class="img-container">
                        <asp:Image ID="imgNutritionGuidance" runat="server" ImageUrl="~/Image/3.jpg" CssClass="img-responsive" />
                    </div>
                </div>
                <div class="col-md-8">
                    <h2 class="section-title text-custom" style =" color : white" >How It Works</h2>
                    <p class="text-center text-custom" style="font-size: 1.2rem; color: white">Our application is designed with a robust relational structure that facilitates effective tracking and engagement. Here's how our features interconnect:</p>
                    <ul class="list-unstyled text-custom" style="font-size: 1rem; color: white">
                        <li><strong>Users:</strong> Each user can log multiple workouts, set fitness goals, and join challenges.</li>
                        <li><strong>Workouts:</strong> Users can record various workouts, capturing essential details.</li>
                        <li><strong>Goals:</strong> Users can set personal fitness goals and track their progress.</li>
                        <li><strong>Challenges:</strong> Users can create and join challenges.</li>
                        <li><strong>UserChallenges:</strong> This table tracks user participation in challenges.</li>
                    </ul>
                </div>
            </div>
        </div>
    </section>

    <section class="success-stories">
        <h2 class="text-center">Success Stories</h2>
        <div class="container">
            <div class="row">
                <div class="col-md-4">
                    <div class="story-card">
                        <div class="story-card-body">
                            <h5 class="story-card-title">Jane D.</h5>
                            <div class="star-rating">
                                ★★★★☆
                            </div>
                            <p class="story-card-text">"I've lost 15 pounds and feel more energetic than ever! The Fitness Track App has been a game-changer for me."</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="story-card">
                        <div class="story-card-body">
                            <h5 class="story-card-title">Mike S.</h5>
                            <div class="star-rating">
                                ★★★★★
                            </div>
                            <p class="story-card-text">"The workout plans are easy to follow and keep me motivated. I love tracking my progress!"</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="story-card">
                        <div class="story-card-body">
                            <h5 class="story-card-title">Sarah K.</h5>
                            <div class="star-rating">
                                ★★★★★
                            </div>
                            <p class="story-card-text">"I've built strength and endurance that I never thought possible. The community support keeps me accountable!"</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="story-card">
                        <div class="story-card-body">
                            <h5 class="story-card-title">John T.</h5>
                            <div class="star-rating">
                                ★★★★☆
                            </div>
                            <p class="story-card-text">"Thanks to the nutrition guidance, I've learned how to eat healthier and lost 10 pounds in a month!"</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="story-card">
                        <div class="story-card-body">
                            <h5 class="story-card-title">Lisa W.</h5>
                            <div class="star-rating">
                                ★★★★★
                            </div>
                            <p class="story-card-text">"The challenges motivate me to push my limits. I've completed three challenges so far!"</p>
                        </div>
                    </div>
                </div>
                <div class="col-md-4">
                    <div class="story-card">
                        <div class="story-card-body">
                            <h5 class="story-card-title">Tom R.</h5>
                            <div class="star-rating">
                                ★★★★★
                            </div>
                            <p class="story-card-text">"This app has transformed my fitness journey. I’ve gone from couch potato to running 5K!"</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="call-to-action text-center mt-5">
        <h2>Ready to Get Started?</h2>
        <p>Sign up today and take the first step towards a healthier, happier you!</p>
        <asp:Button ID="Button1" runat="server" CssClass="btn btn-custom" Text="Join Now" ForeColor="Black" OnClick="Button1_Click" />
    </section>

    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</asp:Content>

