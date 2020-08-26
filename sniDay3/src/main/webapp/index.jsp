<%@ page import="com.deneme.jsp.*" %>
<html>
<body>
<h2>Hello World asdf!</h2>
<%
    for(int i=1;i<=5;i++)
    {
        out.println("deneme <br/>" +i);
    }
%>
<br/>
<br/>
<%!
    String makeLowerCase(String word)
    {
        return word.toLowerCase();
    }
%>
Lower case version: "MIHRI" : <%= makeLowerCase("MIHRI")%>
<br/>
/////////////////
fun test java classindan method çagirma
<br/>
Lets have some fun : <%=FunUtils.makeLowerCase("FUN FUN FUN")%>
<br/>
<br/>
<br/>
Request user agent : <%=request.getHeader("User-Agent")%>
<br/>
<br/>
<br/>
footer ve header denemesi
<jsp:include page="my-header.html"/>
jdfdvkslfdskdfdkfdjkfdjffjkfjfjviii<br/><br/>
jdfdvkslfdskdfdkfdjkfdjffjkfjfjviii<br/><br/>
jdfdvkslfdskdfdkfdjkfdjffjkfjfjviii<br/><br/>
<jsp:include page="my-footer.jsp"/>

</body>
</html>
