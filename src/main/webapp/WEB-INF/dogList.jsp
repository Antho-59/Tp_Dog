<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 11/06/2025
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="org.example.tp_dog.model.Dog" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%
    // Récupère la liste des chiens passée en attribut request par le servlet
    java.util.List<Dog> dogs = (java.util.List<Dog>) request.getAttribute("dogs");
    if (dogs == null) {
        dogs = new java.util.ArrayList<>(); // évite NullPointerException si null
    }
%>
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
    <tbody>

    <% for (Dog d : dogs){%>
    <tr>
        <td><%= d.getId() %></td>
        <td><%= d.getName() %></td>
        <td><%= d.getBreed() %></td>
        <td><%= d.getDateOfBirth() %></td>

    </tr>
    <% } %>
    </tbody>
</table>

</body>
</html>

