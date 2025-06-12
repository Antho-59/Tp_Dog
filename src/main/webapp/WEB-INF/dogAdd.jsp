<%--
  Created by IntelliJ IDEA.
  User: Administrateur
  Date: 11/06/2025
  Time: 16:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/style/styles.css">
    <title>Ajout d'un chien</title>
</head>
<body>
<div class="dog-form-container">
    <h1>🐾 Ajouter un Chien 🐶</h1>
    <form action="addDog" method="post">
        <div class="form-group">
            <label for="name">Nom :</label>
            <input type="text" name="name" id="name" required>
        </div>
        <div class="form-group">
            <label for="breed">Race :</label>
            <input type="text" name="breed" id="breed" required>
        </div>
        <div class="form-group">
            <label for="dateOfBirth">Date de Naissance :</label>
            <input type="date" name="dateOfBirth" id="dateOfBirth" required>
        </div>
        <button type="submit">🐕 Envoyer</button>
    </form>
</div>
</body>
</html>
