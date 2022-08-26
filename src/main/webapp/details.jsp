<%@ page import="com.northsea.store.pojo.Book" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<% Book book = (Book) request.getAttribute("bookdetail"); %>
<html>
<head>
    <title>詳細画面</title>
</head>
<body>
<h1>詳細画面</h1>
<hr>
<table border="1">
    <tbody>
    <%

    %>
    <tr>
        <th>ID</th>
        <td><%=book.getId() %></td>
    </tr>
    <tr>
        <th>名前</th>
        <td><%=book.getName() %></td>
    </tr>
    <tr>
        <th>価格</th>
        <td><%=book.getPrice() %></td>
    </tr>
    <tr>
        <th>著者</th>
        <td><%=book.getAuthor() %></td>
    </tr>
    <tr>
        <th>コメント</th>
        <td><%=book.getComment() %></td>
    </tr>

    </tbody>
</table>
</body>
</html>
