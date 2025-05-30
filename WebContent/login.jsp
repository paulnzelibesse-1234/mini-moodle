<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Connexion - Mini Moodle</title>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;600&display=swap" rel="stylesheet">
    <style>
        /* Reset et polices */
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }
        
        body {
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            overflow-x: hidden;
            display: flex;
            justify-content: center;
            align-items: center;
            position: relative;
        }
        
        /* Effet de bulles animées */
        .bubbles {
            position: absolute;
            width: 100%;
            height: 100%;
            z-index: 0;
            overflow: hidden;
            top: 0;
            left: 0;
        }
        
        .bubble {
            position: absolute;
            bottom: -100px;
            background: rgba(76, 175, 80, 0.2);
            border-radius: 50%;
            animation: rise 15s infinite ease-in;
        }
        
        @keyframes rise {
            0% { bottom: -100px; transform: translateX(0); }
            50% { transform: translateX(100px); }
            100% { bottom: 1080px; transform: translateX(-200px); }
        }
        
        /* Contenu principal */
        .container {
            z-index: 1;
            padding: 2.5rem;
            background-color: rgba(255, 255, 255, 0.95);
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            width: 100%;
            max-width: 450px;
            animation: fadeIn 1s ease-out;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .logo {
            width: 80px;
            margin-bottom: 1rem;
            display: block;
            margin-left: auto;
            margin-right: auto;
        }
        
        h2 {
            text-align: center;
            font-weight: 600;
            font-size: 2rem;
            margin-bottom: 1.5rem;
            background: linear-gradient(to right, #4CAF50, #2E7D32);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        
        /* Formulaire */
        form {
            display: flex;
            flex-direction: column;
            gap: 1.5rem;
        }
        
        .form-group {
            display: flex;
            flex-direction: column;
            gap: 0.5rem;
        }
        
        label {
            font-weight: 500;
            color: #2c3e50;
        }
        
        input[type="email"],
        input[type="password"] {
            padding: 12px 15px;
            border: 1px solid #ddd;
            border-radius: 8px;
            font-size: 1rem;
            transition: all 0.3s ease;
        }
        
        input[type="email"]:focus,
        input[type="password"]:focus {
            border-color: #4CAF50;
            box-shadow: 0 0 0 3px rgba(76, 175, 80, 0.2);
            outline: none;
        }
        
        /* Boutons */
        .btn {
            padding: 12px 0;
            text-align: center;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: 400;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
            font-size: 1rem;
            width: 100%;
        }
        
        .login-btn {
            background: linear-gradient(to right, #4CAF50, #2E7D32);
            box-shadow: 0 4px 15px rgba(76, 175, 80, 0.3);
        }
        
        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 7px 20px rgba(0, 0, 0, 0.2);
        }
        
        /* Liens */
        .links {
            margin-top: 1.5rem;
            text-align: center;
            font-size: 0.9rem;
            color: #7f8c8d;
        }
        
        .links a {
            color: #3498db;
            text-decoration: none;
            transition: color 0.3s ease;
        }
        
        .links a:hover {
            color: #2980b9;
            text-decoration: underline;
        }
        
        /* Message d'erreur */
        .error-message {
            color: #e74c3c;
            text-align: center;
            margin-bottom: 1rem;
            font-size: 0.9rem;
            animation: shake 0.5s ease-in-out;
        }
        
        @keyframes shake {
            0%, 100% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            75% { transform: translateX(5px); }
        }
        
        /* Bouton retour */
        .home-btn {
            position: absolute;
            top: 20px;
            left: 20px;
            padding: 10px 15px;
            background: white;
            color: #4CAF50;
            text-decoration: none;
            border-radius: 30px;
            font-weight: 500;
            transition: all 0.3s ease;
            box-shadow: 0 2px 10px rgba(0, 0, 0, 0.1);
            z-index: 2;
            display: flex;
            align-items: center;
            gap: 5px;
        }
        
        .home-btn:hover {
            background: #4CAF50;
            color: white;
            transform: translateY(-2px);
            box-shadow: 0 4px 15px rgba(76, 175, 80, 0.3);
        }
    </style>
</head>
<body>
    <!-- Bulles animées -->
    <div class="bubbles">
        <div class="bubble" style="width:40px;height:40px;left:10%;animation-duration:8s;"></div>
        <div class="bubble" style="width:20px;height:20px;left:20%;animation-duration:5s;animation-delay:1s;"></div>
        <div class="bubble" style="width:50px;height:50px;left:35%;animation-duration:7s;animation-delay:2s;"></div>
        <div class="bubble" style="width:80px;height:80px;left:50%;animation-duration:11s;"></div>
        <div class="bubble" style="width:35px;height:35px;left:55%;animation-duration:6s;animation-delay:1s;"></div>
        <div class="bubble" style="width:45px;height:45px;left:65%;animation-duration:8s;animation-delay:3s;"></div>
    </div>
    
    <!-- Bouton retour -->
    <a href="index.jsp" class="home-btn">
        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" viewBox="0 0 16 16">
            <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
        </svg>
        Accueil
    </a>
    
    <!-- Contenu principal -->
    <div class="container">
        <img src="https://cdn-icons-png.flaticon.com/512/2936/2936886.png" alt="Logo Mini-Moodle" class="logo">
        <h2>Connexion</h2>
        
        <% if (request.getAttribute("error") != null) { %>
            <div class="error-message"><%= request.getAttribute("error") %></div>
        <% } %>
        
        <form method="post" action="login">
            <div class="form-group">
                <label for="email">Email :</label>
                <input type="email" id="email" name="email" required placeholder="votre@email.com" />
            </div>
            
            <div class="form-group">
                <label for="password">Mot de passe :</label>
                <input type="password" id="password" name="password" required placeholder="••••••••" />
            </div>
            
            <button type="submit" class="btn login-btn">Se connecter</button>
        </form>
        
        <div class="links">
            <p>Pas encore de compte ? <a href="register.jsp">S'inscrire</a></p>
        </div>
    </div>
</body>
</html>