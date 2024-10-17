<%@page import="org.siva.employeemanagementsystem.model.Employee"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Employee Management System</title>
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.6.0/css/all.min.css"/>
		<link rel="stylesheet" href="<c:url value="/resources/css/addEmployee.css"/>"/>
		<link rel="stylesheet" href="<c:url value="/resources/css/displayEmployee.css"/>"/>
		<style type="text/css">
		</style>
	</head>
	<body>
		<jsp:include page="/includes/navbar.jsp"/>
		
		<h1>Display Employees</h1>	
		
		<%
			String updation = (String) session.getAttribute("updation");
			if (updation!=null) 
			{%>
				<h3 style="font-size: 20px;text-align: center;color: #0A6847;font-weight: 400;"><%=updation%>😎😎😎</h3>		
			<% session.removeAttribute("updation");
			}
			String updationfail = (String) session.getAttribute("updationfail");
			if (updationfail!=null) 
			{%>
				<h3 style="font-size:20px;text-align: center;color: #E72929;font-weight: 400;"><%=updationfail%>😡😡😡</h3>		
			<% session.removeAttribute("updationfail");
			}
			String deletion = (String) session.getAttribute("deletion");
			if (deletion!=null)
			{%>
				<h3 style="font-size: 20px;text-align: center;color: #0A6847;font-weight: 400;"><%=deletion%></h3>		
			<% session.removeAttribute("deletion");
			}
		%>
		
		<%
			List<Employee> employees= (List<Employee>) request.getAttribute("employees");
		%>	
		
		<table border="2">
			<thead>
				<tr>
					<th>Employee id</th>
					<th>Employee name</th>
					<th>Employee email</th>
					<th>Employee designation</th>
					<th>Employee address</th>
					<th>Employee salary</th>
					<th colspan="2">Actions</th>
				</tr>
			</thead>
			<tbody>
			
				<%
				for (Employee emp : employees) 
				{%>
					<tr>
						<td><%= emp.getId() %></td>
						<td><%= emp.getFullName() %></td>
						<td><%= emp.getEmail() %></td>
						<td><%= emp.getDesignation() %></td>
						<td><%= emp.getAddress() %></td>
						<td><%= emp.getSalary()%></td>
						<td align="center"><a href="updateEmployee/<%= emp.getId()%>"><input type="button" value="update" id="update"></a>
						<td align="center"><a href="deleteEmployee/<%=emp.getId()%>"><input type="button" value="delete" id="delete"></a>
					</tr>
				<%}
				%>
				
			</tbody>
		</table>
	</body>
</html>