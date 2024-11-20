<!-- src/main/webapp/sign_up_page.jsp -->
<!DOCTYPE html>
<html>
    <head>
        <title>Sign Up</title>
    </head>
    <body>
        <div class="login-container">
            <h2>Signup</h2>
            <form action="SignupServlet" method="post">
                <div class="input-group">
                    <label for="username">Username:</label>
                    <input type="text" id="username" name="username" required>
                </div>
                <div class="input-group">
                    <label for="password">Password:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                <div class="input-group">
                    <label for="password">Mail:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                <div class="input-group">
                    <label for="password">Phone number:</label>
                    <input type="number" id="phone_number" name="phone_number">
                </div>
                <button type="submit" class="login-btn">Signup</button>
            </form>
            <p>Already have an account? <a href="login.jsp">Login</a></p>
        </div>
    </body>
</html>
