<!DOCTYPE html>
<html>
<head>
  <title>Login</title>
</head>
<body>
  <div class="login-container">
    <h2>Login</h2>
    <form action="LoginServlet" method="post">
      <div class="input-group">
        <label for="username">Username:</label>
        <input type="text" id="username" name="username" required>
      </div>
      <div class="input-group">
        <label for="password">Password:</label>
        <input type="password" id="password" name="password" required>
      </div>
      <button type="submit" class="login-btn">Login</button>
    </form>
    <p>Don't have an account? <a href="signUp.jsp">Sign Up</a></p>
  </div>
</body>
</html>
