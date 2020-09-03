<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>

<head>
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<title>Student Tracker App</title>
		
</head>


	


<body>

	<div id="wrapper">
		<div id="header">
			<h2>FooBar University</h2>
		</div>
	</div>

	<div id="container">
	
		<div id="content">
		
		<input type="submit" value="Add" onclick="window.location.href='add-student-button.jsp'; return false;" 
		class="add-student-button"/>
		
			<table>
			
				<tr>
					<th>First Name</th>
					<th>Last Name</th>
					<th>Email</th>
					<th>Action</th>
				</tr>
				
				<c:forEach var="tempStudent" items="${STUDENT_LIST}"> 
				<c:url var="tempLink" value="StudentControllerServlet">
				<c:param name="command" value="LOAD"/>
				<c:param name="studentId" value="${tempStudent.id}"/>
				</c:url>
				
				<c:url var="deleteLink" value="StudentControllerServlet">
				<c:param name="command" value="DELETE"/>
				<c:param name="studentId" value="${tempStudent.id}"/>
				</c:url>
				
					<tr>
						<td> ${tempStudent.firstName} </td>
						<td> ${tempStudent.lastName} </td>
						<td> ${tempStudent.email} </td>
						<td> <a href="${tempLink}">Update</a> <a href="${deleteLink}"
							onclick="if (!(confirm('Are you sure you want to delete this student?'))) return false">
							Delete</a>	</td>
						
					</tr>
				
				</c:forEach>
				
			</table>
		
		</div>
	
	</div>
</body>


</html>


