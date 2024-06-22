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
	<meta charset="UTF-8">
	<title>save ninja on dojo</title>
	<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@3.3.7/dist/css/bootstrap.min.css" integrity="sha384-BVYiiSIFeK1dGmJRAkycuHAHRg32OmUcww7on3RYdg4Va+PmSTsz/K68vbdEjh4u" crossorigin="anonymous">
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.3.0/font/bootstrap-icons.css">
</head>
<body>

<div class="container  mx-auto w-50">
	<div class="  mt-5 mb-5">
		<h1 class="text-primary">New Ninja</h1>
		<form:form  action="/ninjas" method="post" modelAttribute="ninja">

		    <div  class="form-group mb-3">
		        <form:label class="form-label" path="firstName">First Name:</form:label>
		        <form:input class="form-control w-50"  path="firstName"/>
		    </div>
		    
		    <div class="form-group mb-3">
		        <form:label class="form-label" path="lastName">Last Name:</form:label>
		        <form:input class="form-control"  path="lastName"/>
		    </div>
		    <div class="form-group mb-3">
		        <form:label class="form-label" path="age">Age:</form:label>
		        <form:input class="form-control"  path="age"/>
		    </div>
		    
		    <div class="form-group mb-3">
		        <form:label class="form-label" path="dojo">Dojo:</form:label>
		        
		        <form:select  class="form-control" path="dojo">
		        
		        	<c:forEach var="eachDojo" items="${dojos}">
			        
			        	<option value="${eachDojo.id}"><c:out value="${eachDojo.name}"/></option>
			        
		        	</c:forEach>
		        	
		        </form:select>
		    </div>
		    
		    
		    <input type="submit" class="btn btn-primary" value="Submit"/>
    
</form:form>  
	</div>

</div>
	
</body>
</html>