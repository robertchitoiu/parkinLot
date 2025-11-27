<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="Cars">
    <h1>Cars</h1>

    <form method="POST" action="${pageContext.request.contextPath}/Cars">
        <div class="mb-3">
            <a href="${pageContext.request.contextPath}/AddCar" class="btn btn-primary btn-lg">Add Car</a>
            <button type="submit" class="btn btn-danger">Delete Cars</button>
        </div>

        <div class="container text-center">
            <div class="row fw-bold mb-2">
                <div class="col-1">Select</div>
                <div class="col">License Plate</div>
                <div class="col">Parking Spot</div>
                <div class="col">Owner</div>
                <div class="col">Actions</div>
            </div>

            <c:forEach var="car" items="${cars}">
                <div class="row align-items-center mb-2">
                    <div class="col-1">
                        <input type="checkbox" name="carIds" value="${car.id}" />
                    </div>
                    <div class="col">${car.licensePlate}</div>
                    <div class="col">${car.parkingSpot}</div>
                    <div class="col">${car.ownerName}</div>
                    <div class="col">
                        <a class="btn btn-secondary" href="${pageContext.request.contextPath}/EditCar?id=${car.id}">Edit Car</a>
                    </div>
                </div>
            </c:forEach>
        </div>
    </form>

    <h5>Free parking spots: ${numberOfFreeParkingSpots}</h5>
</t:pageTemplate>
