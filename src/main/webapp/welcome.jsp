<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<%
    // Check if the user is logged in by verifying the session attribute
    String user = (session != null) ? (String) session.getAttribute("user") : null;
    if (user == null) {
        // If no user is found in session, redirect to login page
        response.sendRedirect("login.jsp");
        return;
    }
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Welcome</title>
</head>
<body>
<h1>Welcome, <%= user %>!</h1>
<p>You have successfully logged in.</p>

<!-- Option to log out -->
<form action="logout" method="post">
    <button type="submit">Logout</button>
</form>
</body>
</html>
