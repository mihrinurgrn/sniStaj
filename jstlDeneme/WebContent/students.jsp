<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page import="java.util.*,com.deneme.jsp.tagdemo.Student" %>

<%
	// just create some sample data ... normally provided by MVC
	List<Student> data = new ArrayList<>();

	//data.add(new Student("John", "Doe", false));
	//data.add(new Student("Maxwell", "Johnson", false));
	//data.add(new Student("Mary", "Public", true));
	Student s=new Student("aa","bb",true);
	data.add(s);
	//???????
	Student s2=new Student("kk","mm",false);
	data.add(s2);

	pageContext.setAttribute("myStudents", data);
%>

<html>

<body>
	<table border="1">

	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	</tr>
	
	<c:forEach var="tempStudent" items="${myStudents}">
	<!-- you can make this with choose tags-->
		<tr>
			<td>${tempStudent.firstName}</td>
			<td>${tempStudent.lastName}</td>
			<td>
			
				<c:if test="${tempStudent.goldCustomer}">
					Special Discount
				</c:if>
				
				<c:if test="${not tempStudent.goldCustomer}">
					-
				</c:if>
				
			</td> 
		</tr>
		
	</c:forEach>

	</table>

</body>

</html>