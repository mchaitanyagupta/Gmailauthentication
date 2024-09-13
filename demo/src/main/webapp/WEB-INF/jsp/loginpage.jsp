<html>
    <head>
        <title>login page</title>
        <style>
            .main{
                position: absolute;
                top: 50%;
                left: 50%;
                transform: translate(-50%,-50%);
                background-color: #faf9f6;
                border-radius: 10px;
                padding: 20px;
                
            }
        input[type="password"] {
            width: 300px;
            height: 40px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 30px; /* Set the corner radius */
            font-size: 16px;
            margin-bottom: 10px;
        }
        
        input[type="password"]:focus {
            outline: none;
            border-color: #66afe9;
            box-shadow: 0 0 8px rgba(102, 175, 233, 0.6);
        }
        input[type="email"] {
            width: 300px;
            height: 40px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 30px; /* Set the corner radius */
            font-size: 16px;
            margin-bottom: 10px;
        }
        input[type="email"]:focus {
            outline: none;
            border-color: #66afe9;
            box-shadow: 0 0 8px rgba(102, 175, 233, 0.6);
        }
        input[type="submit"] {
            width: 300px;
            height: 40px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 30px; /* Set the corner radius */
            font-size: 16px;
            margin-bottom: 10px;
            background-color: green;
        }
        input[type="submit"]:focus {
            outline: none;
            border-color: #17c07d;
            box-shadow: 0 0 8px rgba(19, 203, 129, 0.6);
        }
        
        </style>
    </head>
    <body>
        <div class="main">
            <div class="register">
                <h3>Please fill below details to Register</h3>
            </div>
            <div class="details">
                <form action="login" method="post">
                    <input type="email" placeholder="Enter your email" name="email"><br>
                    <input type="password" placeholder="Enter your password"><br>
                    <p>By creating an account you agree to <a>Terms & Privacy</a>.</p>
                    <input type="submit" placeholder="submit">
                </form>
            </div>
        </div>
    </body>


</html>