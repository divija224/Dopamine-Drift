<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Register - Dopamine Detox Tracker</title>
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
                <p class="auth-subtitle">Start your journey to digital wellness</p>
            </div>
            
            <c:if test="${not empty error}">
                <div class="error-message">
                    <span class="error-icon">⚠️</span>
                    ${error}
                </div>
            </c:if>
            
            <form action="${pageContext.request.contextPath}/auth/register" method="post" class="auth-form">
                <div class="form-group">
                    <label for="fullName">Full Name</label>
                    <input type="text" id="fullName" name="fullName" required 
                           placeholder="Enter your full name" value="${param.fullName}">
                </div>
                
                <div class="form-group">
                    <label for="username">Username</label>
                    <input type="text" id="username" name="username" required 
                           placeholder="Choose a username" value="${param.username}">
                </div>
                
                <div class="form-group">
                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" required 
                           placeholder="Enter your email" value="${param.email}">
                </div>
                
                <div class="form-group">
                    <label for="password">Password</label>
                    <input type="password" id="password" name="password" required 
                           placeholder="Create a password (min 6 characters)">
                </div>
                
                <div class="form-group">
                    <label for="confirmPassword">Confirm Password</label>
                    <input type="password" id="confirmPassword" name="confirmPassword" required 
                           placeholder="Confirm your password">
                </div>
                
                <button type="submit" class="btn btn-primary btn-full">
                    <span class="btn-icon">🚀</span>
                    Create Account
                </button>
            </form>
            
            <div class="auth-footer">
                <p>Already have an account? 
                   <a href="${pageContext.request.contextPath}/auth/" class="auth-link">Sign in here</a>
                </p>
            </div>
        </div>
    </div>
</body>
</html>