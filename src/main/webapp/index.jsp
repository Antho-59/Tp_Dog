<%--<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>--%>
<%--<!DOCTYPE html>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>JSP - Hello World</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h1><%= "Bienvenue chez Cani-Toutou !" %>--%>
<%--</h1>--%>
<%--<br/>--%>
<%--<a href="addDog">Ajouter votre chien</a>--%>
<%--<a href="listDog">Liste chien</a>--%>
<%--</body>--%>
<%--</html>--%>

<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <title>Cani-Toutou - Accueil</title>
    <link rel="stylesheet" href="style/styles.css">
    <style>
        body {
            background: #fff8f0 url('https://www.transparenttextures.com/patterns/paw-print.png');
            background-size: contain;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
        }

        .hero {
            background-color: #fdf5e6;
            padding: 60px 20px;
            text-align: center;
            border-bottom: 4px solid #d2a679;
        }

        .hero h1 {
            font-size: 3em;
            margin: 0;
            color: #8b5e3c;
        }

        .hero p {
            font-size: 1.3em;
            color: #5d3b1a;
            margin-top: 10px;
        }

        .actions {
            display: flex;
            justify-content: center;
            gap: 40px;
            margin-top: 50px;
        }

        .btn {
            background-color: #d2a679;
            color: white;
            text-decoration: none;
            padding: 15px 30px;
            border-radius: 12px;
            font-size: 1.1em;
            font-weight: bold;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.15);
            transition: background 0.3s, transform 0.2s;
        }

        .btn:hover {
            background-color: #b47c4e;
            transform: translateY(-3px);
        }

        .paw-decoration {
            text-align: center;
            font-size: 60px;
            margin-top: 20px;
            animation: bounce 1.5s infinite ease-in-out;
        }

        @keyframes bounce {
            0%, 100% { transform: translateY(0); }
            50% { transform: translateY(-8px); }
        }

        @media screen and (max-width: 600px) {
            .actions {
                flex-direction: column;
                gap: 20px;
            }
        }
    </style>
</head>
<body>

<div class="hero">
    <div class="paw-decoration">🐾</div>
    <h1>Bienvenue chez Cani-Toutou !</h1>
    <p>La maison des chiens adorés – gérez vos toutous avec amour 🐶</p>
</div>

<div class="actions">
    <a href="addDog" class="btn">Ajouter un chien</a>
    <a href="listDog" class="btn">Voir la liste des chiens</a>
</div>

</body>
</html>
