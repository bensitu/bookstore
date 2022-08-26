<%@page contentType="text/html; charset=UTF-8" language="java" %>
<%@ page isELIgnored="false" %>
<%@ page import="com.northsea.store.pojo.Book" %>
<%@ page import="java.util.List" %>
<% List<Book> book = (List<Book>) request.getAttribute("books"); %>
<%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/8/24
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>

<html>
<head>
    <title>一覧画面</title>
</head>
<body>
<h1>一覧画面</h1>
<hr>
<table border="1" width="800">
    <thead>
    <tr>
        <th width="300">ID</th>
        <th width="500">名前</th>
    </tr>
    </thead>
    <tbody>
    <%
        for (int i = 0; i < book.size(); i++) {
    %>
    <tr>
        <td><a href="<%=request.getContextPath() %>/details?id=<%=book.get(i).getId()%>"><%=book.get(i).getId()%>
        </a></td>
        <td><%=book.get(i).getName()%>
        </td>
    </tr>
    <% } %>
    </tbody>


</table>
</body>
</html>
