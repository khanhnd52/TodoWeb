<html>
<head>
    <link href="\webjars\bootstrap\5.2.0\css\bootstrap.min.css " rel="stylesheet">
    <link href="webjars/bootstrap-datepicker/1.9.0/css/bootstrap-datepicker.standalone.min.css" rel="stylesheet">
    <meta charset="UTF-8">
    <title>Login Page</title>
    <style>
        body {
            background-color: #f6f6f6;
            font-family: "Open Sans", sans-serif;
        }

        .login-box {
            max-width: 500px;
            margin: 150px auto;
            padding: 50px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0px 0px 15px rgba(0, 0, 0, 0.1);
        }

        .login-box h2 {
            font-size: 32px;
            margin-bottom: 30px;
            text-align: center;
            color: #444;
        }

        .form-control:focus {
            border-color: #8a8a8a;
            box-shadow: none;
        }

        .btn-primary {
            background-color: #007bff;
            border-color: #007bff;
        }

        .btn-primary:hover {
            background-color: #0069d9;
            border-color: #0062cc;
        }

        .forgot-password {
            text-align: right;
        }
    </style>
</head>
<body>
<div class="login-box">
    <h2>Login Form</h2>
    <form method="post">
        <div class="form-group">
            <label for="username">Username:</label>
            <input type="text" class="form-control" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">Password:</label>
            <input type="password" class="form-control" id="password" name="password" required>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary btn-block mt-3">Login</button>
        </div>
        <div class="form-group forgot-password">
            <a href="#">Forgot Password?</a>
        </div>
    </form>
    <pre class="text-danger">${errorMessage}</pre>
</div>

<script src="\webjars\bootstrap\5.2.0\js\bootstrap.min.js"></script>
<script src="\webjars\jquery\3.6.0\jquery.min.js"></script>
</body>
</html>