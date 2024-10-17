<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>employee management system</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"/>
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
		<link rel="stylesheet" href="<c:url value="/resources/css/addEmployee.css"/>"/>
		<link rel="stylesheet" href="<c:url value="/resources/css/home.css"/>"/>
	</head>
	<body>
		<jsp:include page="/includes/navbar.jsp"/>
		
		<div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
 			<div class="carousel-indicators">
    			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
    			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
    			<button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
 			</div>
  			<div class="carousel-inner">
    			<div class="carousel-item active">
      				<img src="<c:url value="/resources/images/bg-2.jpeg"/>" class="d-block w-100" height="625px">
    			</div>
    			<div class="carousel-item">
      				<img src="<c:url value="/resources/images/bg-3.jpeg"/>" class="d-block w-100" height="625px">
    			</div>
    			<div class="carousel-item">
      				<img src="<c:url value="/resources/images/bg-1.jpeg"/>" class="d-block w-100" height="625px">
   	 			</div>
  			</div>
  			<button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
    			<span class="carousel-control-prev-icon" aria-hidden="true"></span>
    			<span class="visually-hidden">Previous</span>
  			</button>
  			<button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
    			<span class="carousel-control-next-icon" aria-hidden="true"></span>
    			<span class="visually-hidden">Next</span>
  			</button>
		</div>
		
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
	</body>
</html>