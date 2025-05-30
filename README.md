// =========================
// STRUCTURE DU PROJET
// =========================
// mini-moodle/
// ├── src/
// │   └── com.minimoodle.model/          → classes modèles (User, Cours, etc.)
// │   └── com.minimoodle.dao/            → accès BD (UserDAO, CoursDAO, etc.)
// │   └── com.minimoodle.controller/     → servlets (LoginServlet, CoursServlet)
// ├── WebContent/
// │   ├── login.jsp, dashboard.jsp, cours.jsp, addCours.jsp
// │   ├── WEB-INF/web.xml

// =========================
// 1. BASE DE DONNÉES MySQL
// =========================
/*
CREATE DATABASE minimoodle;
USE minimoodle;

CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    nom VARCHAR(100),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(100),
    role VARCHAR(20) -- etudiant, prof, admin
);

CREATE TABLE cours (
    id INT PRIMARY KEY AUTO_INCREMENT,
    titre VARCHAR(100),
    description TEXT,
    professeur_id INT,
    FOREIGN KEY (professeur_id) REFERENCES users(id)
);
*/
