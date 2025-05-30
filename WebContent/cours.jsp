<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="java.util.*, com.minimoodle.model.Cours"%>
<%
List<Cours> coursList = (List<Cours>) request.getAttribute("coursList");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Liste des cours</title>
</head>
<body>

<h2>Cours disponibles</h2>

<% if (coursList != null && !coursList.isEmpty()) {
    for (Cours cours : coursList) { %>
        <div style="border:1px solid #ccc; padding:10px; margin:10px;">
            <h3><%= cours.getTitre() %></h3>
            <p><%= cours.getDescription() %></p>
            <% if (cours.getFichier() != null) { %>
                <a href="uploads/<%= cours.getFichier() %>" target="_blank">Télécharger le fichier</a>
            <% } %>
        </div>
<%  }
} else { %>
    <p>Aucun cours disponible.</p>
<% } %>

<p><a href="dashboard.jsp">Retour au tableau de bord</a></p>

</body>
</html>
