<%@page import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%
	// just create some sample data ... normally provided by MVC
	/* List<String> data = new ArrayList<>();
    data.add("aaa");
    data.add("sad");
	pageContext.setAttribute("myCities", data); */
	String[] cities = {"Mumbai", "Singapore", "Philadelphia"};

	pageContext.setAttribute("myCities", cities);


%>

<html>
<body>
	<c:forEach var="tempCity" items="${myCities}">
		
		${tempCity} <br/>
		
	</c:forEach>
</body>
</html>