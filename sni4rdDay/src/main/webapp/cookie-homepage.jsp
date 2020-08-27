<%--
  Created by IntelliJ IDEA.
  User: mgurun
  Date: 8/27/2020
  Time: 3:42 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<%
    String favLang="JAVA";
    Cookie[] theCookies=request.getCookies();
    if(theCookies!=null)
    {
        for(Cookie tempCookie : theCookies)
        {
            if("myApp.favoriteLanguage".equals(tempCookie.getName()))
            {
                favLang=tempCookie.getValue();
                break;
            }
        }
    }
%>
<h4> New books for <%=favLang%>
    <ul>
        <li>bla bla bla</li>
    </ul>
</h4>
<body>
<a href="index.html">Personalize this page</a>
</body>
</html>
