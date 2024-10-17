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
	</head>
	<body>
		<jsp:include page="/includes/navbar.jsp"/>
		<%
			String addSuccess = (String) session.getAttribute("addsuccess");
			if (addSuccess!=null) 
			{%>
				<h3 style="font-size: 20px;text-align: center;color: #FF6000;font-weight: 600;margin-top: 5px;"><%=addSuccess%>😎😎😎</h3>	
			<%session.removeAttribute("addsuccess");
			}%>
			<%String addFail = (String) session.getAttribute("addfail");
			if (addFail!=null) 
			{%>
			<h3 style="font-size: 20px;text-align: center;color: red;font-weight: 600;margin-top: 5px;"><%=addFail%>😡😡😡</h3>	
			<%	session.removeAttribute("addfail");
			}%>
		
		<div class="form-container">
			<h1>ADD EMPLOYEE</h1>
			<form action="saveEmployee" novalidate="novalidate" method="post" id="myForm">
				<div class="input-control">
					<label for="empname">Employee name</label>
					<input type="text" name="fullName" id="empname" required/>
				</div>
				<div class="input-control">
					<label for="empaddress">Employee address</label>
					<input type="text" name="address" id="empaddress" required/>
				</div>
				<div class="input-control">
					<label for="email">Employee email</label>
					<input type="email" name="email" id="email" required/>
				</div>
				<div class="input-control">
					<label for="designation">Employee designation</label>
					<input type="text" name="designation" id="designation" required/>
				</div>
				<div class="input-control">
					<label for="salary">Employee Salary</label>
					<input type="text" name="salary" id="salary"/>
				</div>
				<div class="button-control">
					<input type="submit" value="Add" id="btn"> 
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