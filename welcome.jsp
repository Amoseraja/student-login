<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="home.css">
    <title>project</title>
</head>
<body>
    <nav>
        <div class="logo">TVARIT<span>EV</span></div>
        <ul>
            <li><a href="">Home</a></li>
            <li>
                <a href="">Features</a>
                <ul>
                    <li><a href="">pages</a></li>
                    <li><a href="">elements</a></li>
                    <li><a href="">icons</a></li>
                </ul>
            </li>
            <li>
                <a href="">services</a>
                <ul>
                    <li><a href="">car design</a></li>
                    <li><a href="">need design</a></li>
                    <li>
                        <a href="">more
                            <span class="fa fa-plus"></span>
                        </a>
                        <ul>
                            <li><a href="">map</a></li>
                            <li><a href="">page</a></li>
                            <li><a href="">sub-menu3</a></li>
                        </ul>
                    </li>
                </ul>
            </li>
            
            <li><a href="">contact</a></li>
        </ul>
    </nav>
   <section id="Home">
    <div class="container rounded bg-white mt-5 mb-5">
        <div class="row">
            <div class="col-md-3 border-right">
                <div class="d-flex flex-column align-items-center text-center p-3 py-5">
                    <img class="rounded-circle mt-5" width="150px" src="https://st3.depositphotos.com/15648834/17930/v/600/depositphotos_179308454-stock-illustration-unknown-person-silhouette-glasses-profile.jpg">
                    <span class="font-weight-bold">User Name</span>
                    <span class="text-black-50">User Role</span>
                </div>
            </div>
            <div class="col-md-5 border-right">
                <div class="p-3 py-5">
                    <div class="d-flex justify-content-between align-items-center mb-3">
                        <h4 class="text-right">Profile Settings</h4>
                    </div>
                    <div class="row mt-2">
                        <div class="col-md-6">
                            <label class="labels">First Name</label>
                            <input type="text" id="username" name="username" placeholder="First Name" class="form-control" required>
                        </div>
                        <div class="col-md-6">
                            <label class="labels">Last Name</label>
                            <input type="text" id="lastname" name="lastname" placeholder="Last Name" class="form-control" required>
                        </div>
                    </div>
                    <div class="row mt-3">
                        <div class="col-md-12">
                            <label class="labels">Mobile Number</label>
                            <input type="text" id="mobileno" name="mobileno" placeholder="Mobile Number" class="form-control" required>
                        </div>
                        <div class="col-md-12">
                            <label class="labels">Address Line 1</label>
                            <input type="text" id="Address1" name="Address1" placeholder="Address Line 1" class="form-control" required>
                        </div>
                        <div class="col-md-12">
                            <label class="labels">Address Line 2</label>
                            <input type="text" id="Address2" name="Address2" placeholder="Address Line 2" class="form-control">
                        </div>
                        <div class="col-md-12">
                            <label class="labels">Postcode</label>
                            <input type="text" id="postcode" name="postcode" placeholder="Postcode" class="form-control" required>
                        </div>
                        <div class="col-md-6">
                            <label class="labels">Country</label>
                            <input type="text" id="country" name="country" placeholder="Country" class="form-control">
                        </div>
                        <div class="col-md-6">
                            <label class="labels">State/Region</label>
                            <input type="text" id="state" name="state" placeholder="State/Region" class="form-control">
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
   
  
        
    
</body>
</html>