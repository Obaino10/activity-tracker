<%--
  Created by IntelliJ IDEA.
  User: namra
  Date: 5/21/2018
  Time: 8:18 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
welcome la la <%= request.getParameter("name")%> <br>
<p> Your ToDo list are </p>
${todo}
</body>
</html>
