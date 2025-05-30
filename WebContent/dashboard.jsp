<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.minimoodle.model.User"%>
<%
User user = (User) session.getAttribute("user");
if (user == null) {
    response.sendRedirect("login.jsp");
    return;
}
String role = user.getRole();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Tableau de bord</title>
</head>
<body>

<h2>Bienvenue, <%= user.getNom() %> !</h2>
<p>Rôle : <%= role %></p>

<% if ("prof".equals(role)) { %>
    <p><a href="addCours.jsp">Ajouter un cours</a></p>
<% } %>

<p><a href="cours">Voir les cours</a></p>
<p><a href="logout.jsp">Déconnexion</a></p>

</body>
</html>
