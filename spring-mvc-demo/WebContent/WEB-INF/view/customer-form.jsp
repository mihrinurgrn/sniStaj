<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<!DOCTYPE html>

<html>
<head>
	<title>Customer Registration Form</title>
	<style>
	.error{color:red}
	</style>
</head>

<body>
	<form:form action="processForm" modelAttribute="customer">
	
		First name: <form:input path="firstName" />
		<br><br>
		Last name(*): <form:input path="lastName" />
		<br><br>
		<form:errors path="lastName" cssClass="error"></form:errors>
		<br><br>
		Free passes: <form:input path="freePasses" />
		<br><br>
		<form:errors path="freePasses" cssClass="error"></form:errors>
		Postal code: <form:input path="postalCode" />
		<br><br>
		<form:errors path="postalCode" cssClass="error"></form:errors>
		<br><br>
		<input type="submit" value="Submit" />
	</form:form>


</body>
</html>