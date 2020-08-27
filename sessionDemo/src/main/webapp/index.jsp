<%--
  Created by IntelliJ IDEA.
  User: mgurun
  Date: 8/26/2020
  Time: 5:51 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<form action="index.jsp">
    Add new item : <input type="text" name="theItem"/>
    <input type="submit" value="Submit"/>
    <br/>

    <%
        List<String> items=(List<String>) session.getAttribute("myTodoList");
        if(items==null)
        {
            items=new ArrayList<String>();
            session.setAttribute("myTodoList",items);
        }
        String theItem=request.getParameter("theItem");

        boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
        boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());

        if (isItemNotEmpty && isItemNotDuplicate) {

            items.add(theItem.trim());

            response.sendRedirect("index.jsp"); // UPDATE: NEW CODE
            //????????????????
        }
    %>
    <hr>
    <b>The List Items</b> <br/>
    <ol>
        <%
            for(String temp :items)
            {
                out.println("<li>"+temp+"</li>");

            }
        %>
    </ol>
</form>
</body>
</html>
