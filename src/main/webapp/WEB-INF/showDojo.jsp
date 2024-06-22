<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- c:out ; c:forEach etc. --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- Formatting (dates) --> 
<%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!-- form:form -->
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>
<head>
 	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
	<meta charset="UTF-8">
	<title>List of student Dojo </title>
</head>
<body>

	<div class=container>
	
		<div class ="row">
		
			<div class="col-md-6  mx-auto">
		<div class="card bg-dark border border-4 rounded-3 text-white bg-dark mb-3 mx-auto shadow-3">
		<div class="card-header">
				<h1 class="text-primary"><c:out value="${dojo.name}"/></h1>
		</div>
		<div class="card-body">
			<ul>
				<c:forEach var="ninja" items="${dojo.ninjas}">
	
				<li><c:out value="${ninja.firstName}"/> <c:out value="${ninja.lastName}"/></li>
	
				</c:forEach>
			</ul>
		</div>
	
	
	</div>
	</div>
		</div>
	</div>
</body>
</html>