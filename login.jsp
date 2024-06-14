<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
  

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.2/css/all.min.css"/>
 <link rel="stylesheet" href="login1.css">
 
</head>
<body>

             
    
  <div class="container front">
        <div class="top">
            
            <span>STUDENT-LOGIN</span>
        </div>
        <div class="form">
            <form action="login">
 
                <div class="inputBox inputBoxFront">
                    <label><i class="fa-solid fa-user"></i></label>
                   <input type="text" id="username" name="username" placeholder="Username" class="username" required>
                </div>
                <div class="inputBox inputBoxFront">
                    <label><i class="fa-solid fa-lock"></i></label>
                    <input type="password" id="password" name="password" placeholder="Password" class="password" required>
                </div>
                <button type="submit" class="btn">Log in</button>
                <div class="user">New user? <span class="newUser">Sign Up</span></div>
            </form>
        </div>
    </div>
    
    <!-- --------------------------- back ---------------------------------- -->

    <div class="container back">
        <div class="top topBack">
            <span>STUDENT-LOGIN</span>
        </div>
        <div class="form formBack">
           <form action="signup">
           <div class="inputBox inputBoxFront">
                    <label><i class="fa-solid fa-user"></i></label>
                   <input type="text" id="studentId" name="studentId" placeholder="studentId" class="studentId" required>
                </div>
             <div class="inputBox inputBoxFront">
                    <label><i class="fa-solid fa-user"></i></label>
                   <input type="text" id="username" name="username" placeholder="Username" class="username" required>
                </div>
                <div class="inputBox inputBoxFront">
                    <label><i class="fa-solid fa-lock"></i></label>
                    <input type="password" id="password" name="password" placeholder="Password" class="password" required>
                </div>
               <button type="submit" class="btn">Log in</button>
                <div class="user userBack">Existing user? <span class="existingUser">log In</span></div>
            </form>
        </div>
    </div>
  
    <script>
        let front = document.querySelector('.front');
        let back = document.querySelector('.back');

        let newUser = document.querySelector('.newUser');
        let existingUser = document.querySelector('.existingUser');

        newUser.addEventListener('click', function(){
            front.style.zIndex = "1"
            back.style.zIndex = "2"
            front.style.transform = "rotateY(180deg)"
            back.style.transform = "rotateY(0deg)"
        })

        existingUser.addEventListener('click', function(){
            back.style.zIndex = "1"
            front.style.zIndex = "2"
            back.style.transform = "rotateY(180deg)"
            front.style.transform = "rotateY(0deg)"
        })
    </script>
</body>
</html>         
           
 




