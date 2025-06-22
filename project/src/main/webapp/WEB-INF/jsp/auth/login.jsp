<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login - Dopamine Detox Tracker</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/style.css">
</head>
<body class="auth-page">
    <div class="auth-container">
        <div class="auth-card">
            <div class="auth-header">
                <div class="logo">
                    <div class="logo-icon">🧠</div>
                    <h1>Dopamine Detox</h1>
                </div>
                <p class="auth-subtitle">Welcome back! Sign in to continue your journey</p>
            </div>
            
            <c:if test="${not empty error}">
                <div class="error-message">
                    <span class="error-icon">⚠️</span>
                    ${error}
                </div>
            </c:if>
            
            <form action="${pageContext.request.contextPath}/auth/login" method="post" class="auth-form">
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" required 
                           placeholder="Enter your username" value="${param.username}">
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required 
                           placeholder="Enter your password">
                </div>
                
                <button type="submit" class="btn btn-primary btn-full">
                    <span class="btn-icon">🔑</span>
                    Sign In
                </button>
            </form>
            
            <div class="auth-footer">
                <p>Don't have an account? 
                   <a href="${pageContext.request.contextPath}/auth/register" class="auth-link">Sign up here</a>
                </p>
                
                <div class="demo-info">
                    <p><strong>Demo Account:</strong></p>
                    <p>Username: <code>demo</code> | Password: <code>demo123</code></p>
                </div>
            </div>
        </div>
    </div>
</body>
</html>