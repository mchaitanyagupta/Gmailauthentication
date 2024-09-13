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
        input[type="text"] {
            width: 300px;
            height: 40px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 30px;
            font-size: 16px;
            margin-bottom: 10px;
        }
        
        input[type="text"]:focus {
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
            	<h3 style="color: red;">${wrongskey}</h3>
                <h3>Enter secret code</h3>
                <h5>secret code sent to ${emailu} <a href="/login">change</a></h5>
            </div>
            <div class="details">
                <form action="skey" method="post">
                    <input type="text" placeholder="Enter secretkey" name="seckey"><br>
                    <input type="submit" placeholder="submit">
                </form>
            </div>
        </div>
    </body>


</html>