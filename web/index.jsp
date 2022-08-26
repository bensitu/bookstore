<%@ page import="java.io.InputStream" %>
<%@ page import="org.apache.ibatis.io.Resources" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactory" %>
<%@ page import="org.apache.ibatis.session.SqlSessionFactoryBuilder" %>
<%@ page import="org.apache.ibatis.session.SqlSession" %>
<%@ page import="com.northsea.store.mapper.BookMapper" %>
<%@ page import="com.northsea.store.pojo.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: ben
  Date: 2022/8/24
  Time: 14:50
  To change this template use File | Settings | File Templates.
--%>

<%
    InputStream is = Resources.getResourceAsStream("mybatis-config.xml");
    SqlSessionFactory sqlSessionFactory = new SqlSessionFactoryBuilder().build(is);
    SqlSession sqlSession = sqlSessionFactory.openSession(true);
    BookMapper bookMapper = sqlSession.getMapper(BookMapper.class);
    List<Book> list = bookMapper.getAllBookInfo();
//    list.forEach(book -> System.out.println(book));
%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>一覧画面</title>
</head>
<body>
<h1>一覧画面</h1>
<hr>
<table border="1">
    <thead>
    <tr>
        <th>ID</th>
        <th>名前</th>
    </tr>
    </thead>
    <tbody>
    <%
        for (int i = 0; i <list.size(); i++) {
    %>
    <tr>
        <td><a href="<%= %>"><%=list.get(i).getId()%></a></td>
        <td><%=list.get(i).getName()%></td>
    </tr>
    <% } %>
    </tbody>


</table>
</body>
</html>
