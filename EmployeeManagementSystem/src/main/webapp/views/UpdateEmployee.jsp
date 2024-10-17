<%@page import="org.siva.employeemanagementsystem.model.Employee"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>add employee</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"/>
		<link rel="stylesheet" href="<c:url value="/resources/css/addEmployee.css"/>"/>
		<style type="text/css">
		</style>
	</head>
	<body>
	
		<div class="nav">
			<a href="/EmployeeManagementSystem"><h3><i class="fa-solid fa-briefcase"></i>Employee Management System</h3></a>
			<div class="nav-container">
				<a href="/EmployeeManagementSystem/addEmployee" id="add"><i class="fa-solid fa-plus"></i>Add employee</a>
				<a href="/EmployeeManagementSystem/displayEmployee"><i class="fa-solid fa-display"></i>Display employees</a>
			</div>
		</div>
		
		<%
			Employee employee = (Employee) request.getAttribute("emp");
		%>
		
		<div class="form-container">
			<h1>UPDATE EMPLOYEE</h1>
			<form action="/EmployeeManagementSystem/update" novalidate="novalidate" method="post" id="myForm">
				<input type="text" name="id" value="<%= employee.getId() %>" hidden="true"/>
				<div class="input-control">
					<label for="empname">Employee name</label>
					<input type="text" name="fullName" id="empname" value="<%= employee.getFullName() %>" required/>
				</div>
				<div class="input-control">
					<label for="empaddress">Employee address</label>
					<input type="text" name="address" id="empaddress" value="<%= employee.getAddress()%>" required/>
				</div>
				<div class="input-control">
					<label for="email">Employee email</label>
					<input type="email" name="email" id="email" value="<%= employee.getEmail() %>" required/>
				</div>
				<div class="input-control">
					<label for="designation">Employee designation</label>
					<input type="text" name="designation" id="designation" value="<%= employee.getDesignation() %>" required/>
				</div>
				<div class="input-control">
					<label for="salary">Employee Salary</label>
					<input type="text" name="salary" id="salary" value="<%= employee.getSalary() %>" required>
				</div>
				<div class="button-control">
					<input type="submit" value="update" id="btn"> 
				</div>
			</form>
		</div>
		<script type="text/javascript">
			document.getElementById("myForm").addEventListener("submit", function(event) {
			    event.preventDefault(); 
			    let ename = document.getElementById("empname").value;
			    let address = document.getElementById("empaddress").value;
			    let email = document.getElementById("email").value;
			    let designation = document.getElementById("designation").value;
			    let salary = document.getElementById("salary").value;
			    let isValid = true;
			    
			    document.getElementById("empname").style.border = "";
			    document.getElementById("empaddress").style.border = "";
			    document.getElementById("email").style.border = "";
			    document.getElementById("designation").style.border = "";
			    document.getElementById("salary").style.border = "";
	
			    if (ename === "") {
			        document.getElementById("empname").style.border = "2px solid red";
			        isValid = false;
			    }
			    if (address === "") {
			        document.getElementById("empaddress").style.border = "2px solid red";
			        isValid = false;
			    }
			    if (email === "") {
			        document.getElementById("email").style.border = "2px solid red";
			        isValid = false;
			    }
			    if (designation === "") {
			        document.getElementById("designation").style.border = "2px solid red";
			        isValid = false;
			    }
			    if (salary === "") {
			        document.getElementById("salary").style.border = "2px solid red";
			        isValid = false;
			    }
			    
			    if (isValid) {
			        this.submit();
			    }
			});
		</script>
	</body>
</html>