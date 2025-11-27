<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<t:pageTemplate pageTitle="EditCar">
    <div class="container mt-5">
        <h1>Edit Car</h1>
        <form class="needs-validation" novalidate method="POST" action="${pageContext.request.contextPath}/EditCar">

            <!-- License Plate -->
            <div class="mb-3">
                <label for="license_plate" class="form-label">License Plate</label>
                <input type="text" class="form-control" id="license_plate" name="license_plate"
                       value="${car.licensePlate}" required>
                <div class="invalid-feedback">
                    License Plate is required.
                </div>
            </div>

            <!-- Parking Spot -->
            <div class="mb-3">
                <label for="parking_spot" class="form-label">Parking Spot</label>
                <input type="text" class="form-control" id="parking_spot" name="parking_spot"
                       value="${car.parkingSpot}" required>
                <div class="invalid-feedback">
                    Parking Spot is required.
                </div>
            </div>

            <!-- Owner -->
            <div class="mb-3">
                <label for="owner_id" class="form-label">Owner</label>
                <select class="form-select" id="owner_id" name="owner_id" required>
                    <option value="">Choose...</option>
                    <c:forEach var="user" items="${users}">
                        <option value="${user.id}"
                            ${user.username == car.ownerName ? 'selected' : ''}>
                                ${user.username}
                        </option>
                    </c:forEach>
                </select>
                <div class="invalid-feedback">
                    Owner is required.
                </div>
            </div>

            <!-- Hidden field for Car ID -->
            <input type="hidden" name="id" value="${car.id}"/>

            <!-- Submit button -->
            <button type="submit" class="btn btn-primary">Save</button>
        </form>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</t:pageTemplate>
