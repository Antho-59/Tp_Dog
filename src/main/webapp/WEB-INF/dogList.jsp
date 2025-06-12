<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 11/06/2025
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="org.example.tp_dog.model.Dog" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%java.util.List<Dog> dogs = (java.util.List<Dog>) request.getAttribute("dogs");
    if (dogs == null) {
        dogs = new java.util.ArrayList<>();}%>

<link rel="stylesheet" href="${pageContext.request.contextPath}/style/stylesList.css">
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
        <th>Détail</th>

    </tr>
    </thead>
    <tbody>

    <% for (Dog d : dogs){%>
    <tr>
        <td><%= d.getId() %></td>
        <td><%= d.getName() %></td>
        <td><%= d.getBreed() %></td>
        <td><%= d.getDateOfBirth() %></td>
        <td>
            <form action="<%= request.getContextPath() %>/detailDog" method="get" style="margin:0;">
                <input type="hidden" name="id" value="<%= d.getId() %>" />
                <button type="submit">Détail</button>
            </form>
        </td>
    </tr>
    <% } %>
    </tbody>
</table>

</body>
</html>

