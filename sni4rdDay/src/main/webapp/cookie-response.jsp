<%@page import="javax.servlet.http.Cookie"%>
<html>

<h2>Hello World!</h2>
<%
    String favLang=request.getParameter("favoriteLanguage");
    Cookie theCookie=new Cookie("myApp.favoriteLanguage",favLang);
    theCookie.setMaxAge(60*60*24*365);
    response.addCookie(theCookie);

%>
<body>
Thanks! We set your favorite language to: ${param.favoriteLanguage}
<br/>
<a href="cookie-homepage.jsp"> Return to Home Page </a>
</body>
</html>
