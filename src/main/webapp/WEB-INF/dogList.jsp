<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 11/06/2025
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="org.example.tp_dog.model.Dog" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:useBean id="dogs" type="java.util.ArrayList<org.example.tp_dog.model.Dog>" scope="request" />
<html>
<head>
    <title>Liste de chien</title>
</head>
<body>
<h1>Liste de chien</h1>

<table class="styled-table">

    <thead>
    <tr>
        <th>id</th>
        <th>Nom</th>
        <th>Race</th>
        <th>Date de naissance</th>

    </tr>
    </thead>
<%--    <tbody>--%>

<%--    <% for (org.example.tp_dog.model.Dog d : dogs)%>--%>
<%--    <tr>--%>
<%--        <td><%=  %></td>--%>

<%--    </tr>--%>
<%--    <% } %>--%>
<%--    </tbody>--%>
</table>

<h2>
    <a href="${pageContext.request.contextPath}/index.jsp">Retour à l'accueil</a>
</h2>

</body>
</html>

