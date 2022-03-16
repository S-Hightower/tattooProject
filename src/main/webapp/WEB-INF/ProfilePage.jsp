<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
   pageEncoding="ISO-8859-1"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ page isErrorPage="true" %>  
<!DOCTYPE html>
<html>

<head>
    <meta charset="ISO-8859-1">
    <title>Artist Profile</title>
</head>

<body>
    <div class="container">
        <div class="rightSide">
            <h1>${ artist.Name }</h1>
            <h2>${ artist.Shop }</h2>
            <h3>${ artist.Address }</h3>
            <p>Cell: ${ artist.Phone }</p>
            <h3>Specializes in:</h3>
            <c:forEach var="talent" items="${ talents }">
                <p>-
                    <c:out value="${ talent }" />
                </p>
            </c:forEach>
        </div>
        <div class="leftSide">
            <div class="firstRow">
                <p>${ artistAddress }</p>
                <a href="/dashboard">Dashboard</a>
                <a href="/">Logout</a>
            </div>
            <div class="secondRow">
                <img src="" alt="ShopMap">
                <a href="">Edit Profile</a>
            </div>
            <div class="thirdRow">
                <img src="" alt="InstagramLogo">
            </div>
            <div>
                <p>In shop ${ day } through ${ day }</p>
                <c:forEach var="availability" items="${ availability }">
                    <p>-
                        <c:out value="${ availability }" />
                    </p>
                </c:forEach>
            </div>
        </div>
    </div>
</body>

</html>