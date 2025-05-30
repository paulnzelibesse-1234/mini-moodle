<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="fr">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Mini-Moodle - Plateforme d'Apprentissage</title>
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
            text-align: center;
            z-index: 1;
            padding: 2rem;
            background-color: rgba(255, 255, 255, 0.9);
            border-radius: 15px;
            box-shadow: 0 15px 30px rgba(0, 0, 0, 0.1);
            max-width: 800px;
            width: 90%;
            animation: fadeIn 1s ease-out;
        }
        
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        
        .logo {
            width: 100px;
            margin-bottom: 1.5rem;
            animation: pulse 2s infinite;
        }
        
        @keyframes pulse {
            0% { transform: scale(1); }
            50% { transform: scale(1.05); }
            100% { transform: scale(1); }
        }
        
        .welcome {
            font-weight: 600;
            font-size: 2.5rem;
            margin-bottom: 1rem;
            background: linear-gradient(to right, #4CAF50, #2E7D32);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
        }
        
        .subtitle {
            color: #7f8c8d;
            font-weight: 300;
            font-size: 1.2rem;
            margin-bottom: 2rem;
        }
        
        /* Boutons */
        .btn {
            display: inline-block;
            width: 200px;
            margin: 20px 10px;
            padding: 12px 0;
            text-align: center;
            color: white;
            text-decoration: none;
            border-radius: 30px;
            font-weight: 400;
            transition: all 0.3s ease;
            border: none;
            cursor: pointer;
        }
        
        .login-btn {
            background: linear-gradient(to right, #4CAF50, #2E7D32);
            box-shadow: 0 4px 15px rgba(76, 175, 80, 0.3);
        }
        
        .register-btn {
            background: linear-gradient(to right, #3498db, #2980b9);
            box-shadow: 0 4px 15px rgba(52, 152, 219, 0.3);
        }
        
        .btn:hover {
            transform: translateY(-3px);
            box-shadow: 0 7px 20px rgba(0, 0, 0, 0.2);
        }
        
        /* Features */
        .features {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
            margin: 2rem 0;
        }
        
        .feature {
            flex: 1;
            min-width: 150px;
            margin: 1rem;
            padding: 1.5rem;
            background: white;
            border-radius: 10px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.05);
            transition: transform 0.3s ease;
        }
        
        .feature:hover {
            transform: translateY(-5px);
        }
        
        .feature-icon {
            font-size: 2rem;
            color: #4CAF50;
            margin-bottom: 1rem;
        }
        
        .feature-title {
            font-weight: 600;
            color: #2c3e50;
            margin-bottom: 0.5rem;
        }
        
        .feature-desc {
            color: #7f8c8d;
            font-size: 0.9rem;
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
    
    <!-- Contenu principal -->
    <div class="container">
        <img src="https://cdn-icons-png.flaticon.com/512/2936/2936886.png" alt="Logo Mini-Moodle" class="logo">
        <h1 class="welcome">Bienvenue sur Mini-Moodle</h1>
        <p class="subtitle">Votre plateforme d'apprentissage en ligne interactive</p>
        
        <div class="features">
            <div class="feature">
                <div class="feature-icon">📚</div>
                <h3 class="feature-title">Cours Complets</h3>
                <p class="feature-desc">Accédez à des ressources pédagogiques de qualité</p>
            </div>
            <div class="feature">
                <div class="feature-icon">👨‍🏫</div>
                <h3 class="feature-title">Experts</h3>
                <p class="feature-desc">Apprenez auprès des meilleurs professeurs</p>
            </div>
            <div class="feature">
                <div class="feature-icon">📱</div>
                <h3 class="feature-title">Accessible</h3>
                <p class="feature-desc">Disponible sur tous vos appareils</p>
            </div>
        </div>
        
        <div>
            <a href="login.jsp" class="btn login-btn">Se connecter</a>
            <a href="register.jsp" class="btn register-btn">S'inscrire</a>
        </div>
    </div>
</body>
</html>