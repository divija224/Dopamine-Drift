<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<c:choose>
    <c:when test="${not empty sessionScope.user}">
        <c:redirect url="/dashboard"/>
    </c:when>
    <c:otherwise>
        <c:redirect url="/auth/"/>
    </c:otherwise>
</c:choose>