<%--
  Created by IntelliJ IDEA.
  User: mgurun
  Date: 8/26/2020
  Time: 2:57 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Confirmation Title</title>
</head>
<body>
<%--Student is confirmed : ${param.firstName} ${param.lastName} ${2*4}--%>
Student is confirmed : <%=request.getParameter("firstName")%> <%=request.getParameter("lastName")%>
<br/>
<br/>

The students country : <%=request.getParameter("country")%>

<br/>
<br/>
The students favorite programming language : <%=request.getParameter("favoriteLanguage")%>
<br/>
<br/>
The students favorite programming languages :
<ul>
    <%
        String[] langs=request.getParameterValues("favoriteLanguageC");
        if (langs != null) {
            for (String tempLang : langs) {
                out.println("<li>" + tempLang + "</li>");
            }
        }
    %>
</ul>
</body>
</html>
