<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" import="com.minimoodle.model.User"%>
<%
User user = (User) session.getAttribute("user");
if (user == null || !"prof".equals(user.getRole())) {
    response.sendRedirect("login.jsp");
    return;
}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Ajouter un cours</title>
</head>
<body>

<h2>Ajouter un nouveau cours</h2>

<form method="post" action="ajouterCours" enctype="multipart/form-data">
    <label>Titre :</label>
    <input type="text" name="titre" required /><br/><br/>

    <label>Description :</label>
    <textarea name="description" required></textarea><br/><br/>

    <label>Fichier PDF :</label>
    <input type="file" name="file" accept=".pdf" required /><br/><br/>

    <input type="submit" value="Ajouter le cours" />
</form>

<p><a href="dashboard.jsp">Retour au tableau de bord</a></p>

</body>
</html>
