<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <!-- New line below to use the JSP Standard Tag Library -->
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="<c:url value='/webjars/bootstrap/5.2.3/css/bootstrap.min.css' />">
<title>Insert title here</title>
</head>
<body class="bg-light">
    <div class="container mt-5">
        <div class="card shadow p-4 text-center bg-info text-white"> 
            <h1 class="mb-4">Here's Your Omikuji!</h1>
            <p class="lead">
                In <span class="fst-italic text-success">${number}</span> years, you will live in
                 <span class="fst-italic text-success">${city}</span>
                 with <span class="fst-italic text-success">${person}</span> 
                 
                 as your roomate, <span class="fst-italic text-success">${hobby}</span> 
                 for a living. <br>
                The next time you see a <span class="fst-italic text-success">${livingThing}</span>
                , you will have good luck. <br>
                Also, <span class="fst-italic text-success">${message}</span>.
            </p>
            <div class="mt-3">
                <a href="/omikuji" class="btn btn-primary">Go Back</a>
            </div>
        </div>
    </div>
</body>
</html>