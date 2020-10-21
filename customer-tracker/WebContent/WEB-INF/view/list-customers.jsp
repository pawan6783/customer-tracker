<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<h1>CRM</h1>
	<div>
	
		<input type="button" value="Add Customer"
		 	onclick="window.location.href='showFormForAdd'; return false;"/>
		<table>
			<tr>
				<th>First Name</th>
				<th>Last Name</th>
				<th>Email</th>
			</tr>
			<c:forEach var="tempCustomer" items="${customers }">
			<c:url var="updateLink" value="/customer/showFormForUpdate">
				<c:param name="customerId" value="${tempCustomer.id}"></c:param>
			</c:url>
			<c:url var="deleteLink" value="/customer/delete">
				<c:param name="customerId" value="${tempCustomer.id}"></c:param>
			</c:url>
				<tr>
					<td>${tempCustomer.firstName }</td>
					<td>${tempCustomer.lastName }</td>
					<td>${tempCustomer.email }</td>
					<td><a href="${updateLink}">Update</a></td>
					<td><a href="${deleteLink}"
						   onclick="if(!(confirm('Are you sure?'))) return false">Delete</a></td>
				</tr>
			</c:forEach>
			
		</table>
	</div>	

</body>
</html>