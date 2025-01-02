<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.2.3/css/bootstrap.min.css' />">
<title>Form</title>
</head>
		<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow p-4">
            <h1 class="text-center mb-4">Send an Omikuji!</h1>
            <form action="/omikuji/process" method="POST">
                <div class="mb-3 w-50">
                    <label  class="form-label" >Pick any number from 5 to 25:</label>
                    <input type="number" name="number" class="form-control"  min="5" max="25" required>
                </div>

                <div class="mb-3 w-50">
                    <label for="city" class="form-label">Enter the name of any city:</label>
                    <input type="text" class="form-control"  name="city" >
                </div>

                <div class="mb-3 w-50">
                    <label for="person" class="form-label">Enter the name of any real person:</label>
                    <input type="text" class="form-control"  name="person" >
                </div>

                <div class="mb-3 w-50">
                    <label for="hobby" class="form-label">Enter a professional endeavor or hobby:</label>
                    <input type="text" class="form-control" name="hobby" >
                </div>

                <div class="mb-3 w-50">
                    <label for="livingThing" class="form-label">Enter any type of living thing:</label>
                    <input type="text" class="form-control"  name="livingThing">
                </div>

                <div class="mb-3 w-50">
                    <label for="message" class="form-label">Say something nice to someone:</label>
                    <textarea class="form-control"  name="message" ></textarea>
                </div>

                <div class="text-center">
                    <input type="submit" class="btn btn-primary" value="Send"/>
                </div>
            </form>
        </div>
    </div>
</body>
</html>
