<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Premium Travel - Enterprise Bus Management</title>
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.5.0/css/all.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800;900&display=swap" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css2?family=Orbitron:wght@400;700;900&display=swap" rel="stylesheet">
    <style>
        :root {
            --primary-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 50%, #f093fb 100%);
            --neon-blue: linear-gradient(135deg, #00d4ff 0%, #090979 100%);
            --neon-pink: linear-gradient(135deg, #ff0844 0%, #ffb199 100%);
            --neon-green: linear-gradient(135deg, #00ff88 0%, #00b4db 100%);
            --neon-purple: linear-gradient(135deg, #a29bfe 0%, #6c5ce7 100%);
            --neon-orange: linear-gradient(135deg, #fdcb6e 0%, #e17055 100%);
            --cosmic-gradient: linear-gradient(135deg, #667eea 0%, #764ba2 25%, #f093fb 50%, #f5576c 75%, #4facfe 100%);
            --glass-bg: rgba(255, 255, 255, 0.08);
            --glass-border: rgba(255, 255, 255, 0.12);
            --text-primary: #ffffff;
            --text-secondary: rgba(255, 255, 255, 0.8);
        }
        
        * { margin: 0; padding: 0; box-sizing: border-box; }
        
        body {
            font-family: 'Inter', -apple-system, BlinkMacSystemFont, sans-serif;
            background-image: url('https://images.unsplash.com/photo-1544620347-c4fd4a3d5957?ixlib=rb-4.0.3&auto=format&fit=crop&w=2069&q=80');
            background-size: cover;
            background-position: center;
            background-attachment: fixed;
            min-height: 100vh;
            position: relative;
            overflow: hidden;
        }
        
        body::before {
            content: '';
            position: fixed;
            top: 0; left: 0; width: 100%; height: 100%;
            background: linear-gradient(135deg, rgba(102, 126, 234, 0.95), rgba(118, 75, 162, 0.92), rgba(240, 147, 251, 0.88));
            z-index: 1;
            animation: cosmicFlow 20s ease-in-out infinite;
        }
        
        @keyframes cosmicFlow {
            0%, 100% { background: linear-gradient(135deg, rgba(102, 126, 234, 0.95), rgba(118, 75, 162, 0.92)); }
            25% { background: linear-gradient(135deg, rgba(240, 147, 251, 0.92), rgba(245, 87, 108, 0.95)); }
            50% { background: linear-gradient(135deg, rgba(79, 172, 254, 0.92), rgba(0, 242, 254, 0.95)); }
            75% { background: linear-gradient(135deg, rgba(0, 255, 136, 0.92), rgba(0, 180, 219, 0.95)); }
        }
        
        .cosmic-particles {
            position: fixed;
            top: 0; left: 0; width: 100%; height: 100%;
            z-index: 2;
            pointer-events: none;
        }
        
        .particle {
            position: absolute;
            width: 4px; height: 4px;
            background: white;
            border-radius: 50%;
            animation: float 15s infinite linear;
            opacity: 0.6;
        }
        
        @keyframes float {
            0% { transform: translateY(100vh) rotate(0deg); opacity: 0; }
            10% { opacity: 0.6; }
            90% { opacity: 0.6; }
            100% { transform: translateY(-100px) rotate(360deg); opacity: 0; }
        }
        
        .login-container {
            position: relative;
            z-index: 10;
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 2rem;
        }
        
        .login-card {
            background: var(--glass-bg);
            backdrop-filter: blur(40px);
            border-radius: 25px;
            box-shadow: 0 25px 80px rgba(0, 0, 0, 0.3), inset 0 1px 0 rgba(255, 255, 255, 0.1);
            border: 1px solid var(--glass-border);
            width: 100%;
            max-width: 450px;
            overflow: hidden;
            position: relative;
            animation: cardEntrance 1s ease-out;
        }
        
        @keyframes cardEntrance {
            0% { opacity: 0; transform: translateY(50px) scale(0.9); }
            100% { opacity: 1; transform: translateY(0) scale(1); }
        }
        

        
        .login-section {
            padding: 3rem;
            display: flex;
            flex-direction: column;
            justify-content: center;
        }
        
        .login-section::before {
            content: '';
            position: absolute;
            top: 0; left: 0; right: 0;
            height: 4px;
            background: var(--cosmic-gradient);
            border-radius: 25px 25px 0 0;
        }
        
        .login-header {
            text-align: center;
            margin-bottom: 2rem;
        }
        
        .brand-logo {
            display: flex;
            align-items: center;
            justify-content: center;
            gap: 1rem;
            margin-bottom: 2rem;
        }
        
        .logo-icon {
            width: 60px; height: 60px;
            background: var(--neon-blue);
            border-radius: 20px;
            display: flex;
            align-items: center;
            justify-content: center;
            font-size: 1.8rem;
            color: white;
            border: 2px solid rgba(255, 255, 255, 0.2);
            animation: logoGlow 3s ease-in-out infinite;
        }
        
        @keyframes logoGlow {
            0%, 100% { box-shadow: 0 0 20px rgba(0, 212, 255, 0.5); }
            50% { box-shadow: 0 0 30px rgba(255, 8, 68, 0.5); }
        }
        
        .brand-title {
            font-family: 'Orbitron', monospace;
            font-size: 2rem;
            font-weight: 900;
            background: var(--cosmic-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
        }
        
        .login-title {
            font-size: 2rem;
            font-weight: 800;
            background: var(--cosmic-gradient);
            -webkit-background-clip: text;
            -webkit-text-fill-color: transparent;
            background-clip: text;
            margin-bottom: 0.5rem;
            animation: titleShimmer 5s ease-in-out infinite;
        }
        
        @keyframes titleShimmer {
            0%, 100% { background: var(--cosmic-gradient); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
            50% { background: var(--neon-blue); -webkit-background-clip: text; -webkit-text-fill-color: transparent; }
        }
        
        .login-subtitle {
            font-size: 0.95rem;
            color: var(--text-secondary);
            font-weight: 400;
        }
        
        .alert {
            padding: 1rem 1.5rem;
            border-radius: 15px;
            margin-bottom: 2rem;
            display: flex;
            align-items: center;
            gap: 0.75rem;
            font-weight: 500;
            animation: alertSlide 0.5s ease-out;
        }
        
        @keyframes alertSlide {
            0% { opacity: 0; transform: translateY(-20px); }
            100% { opacity: 1; transform: translateY(0); }
        }
        
        .alert-error {
            background: rgba(255, 8, 68, 0.15);
            border: 1px solid rgba(255, 8, 68, 0.3);
            color: #ff6b9d;
        }
        
        .alert-success {
            background: rgba(0, 255, 136, 0.15);
            border: 1px solid rgba(0, 255, 136, 0.3);
            color: #00ff88;
        }
        
        .login-form {
            display: grid;
            gap: 1.5rem;
        }
        
        .form-group {
            position: relative;
        }
        
        .form-label {
            display: block;
            font-size: 0.9rem;
            font-weight: 600;
            color: var(--text-secondary);
            margin-bottom: 0.75rem;
            text-transform: uppercase;
            letter-spacing: 0.5px;
        }
        
        .form-label i {
            margin-right: 0.5rem;
            color: #00d4ff;
        }
        
        .form-input {
            width: 100%;
            padding: 1rem 1.25rem;
            background: rgba(255, 255, 255, 0.05);
            border: 2px solid rgba(255, 255, 255, 0.1);
            border-radius: 12px;
            color: var(--text-primary);
            font-size: 1rem;
            font-weight: 500;
            transition: all 0.3s ease;
            backdrop-filter: blur(10px);
        }
        
        .form-input:focus {
            outline: none;
            border-color: #00d4ff;
            background: rgba(255, 255, 255, 0.08);
            box-shadow: 0 0 30px rgba(0, 212, 255, 0.3), inset 0 0 20px rgba(0, 212, 255, 0.1);
            transform: translateY(-2px);
        }
        
        .form-input::placeholder {
            color: rgba(255, 255, 255, 0.4);
        }
        
        .login-button {
            padding: 1.25rem 2rem;
            background: var(--neon-blue);
            border: none;
            border-radius: 12px;
            color: white;
            font-size: 1rem;
            font-weight: 700;
            cursor: pointer;
            transition: all 0.4s ease;
            position: relative;
            overflow: hidden;
            text-transform: uppercase;
            letter-spacing: 1px;
            margin-top: 0.5rem;
        }
        
        .login-button::before {
            content: '';
            position: absolute;
            top: 0; left: -100%; width: 100%; height: 100%;
            background: linear-gradient(90deg, transparent, rgba(255, 255, 255, 0.3), transparent);
            transition: all 0.6s ease;
        }
        
        .login-button:hover::before { left: 100%; }
        .login-button:hover {
            transform: translateY(-3px) scale(1.02);
            box-shadow: 0 15px 40px rgba(0, 212, 255, 0.4), 0 0 30px rgba(0, 212, 255, 0.3);
            background: var(--neon-pink);
        }
        
        .login-button:active {
            transform: translateY(-1px) scale(0.98);
        }
        
        .form-footer {
            text-align: center;
            margin-top: 1.5rem;
            padding-top: 1.5rem;
            border-top: 1px solid rgba(255, 255, 255, 0.1);
        }
        
        .register-link {
            color: var(--text-secondary);
            font-size: 1rem;
        }
        
        .register-link a {
            color: #00d4ff;
            text-decoration: none;
            font-weight: 600;
            transition: all 0.3s ease;
        }
        
        .register-link a:hover {
            color: #ff0844;
            text-shadow: 0 0 10px rgba(255, 8, 68, 0.5);
        }
        
        .loading {
            width: 20px; height: 20px;
            border: 2px solid rgba(255, 255, 255, 0.3);
            border-top: 2px solid white;
            border-radius: 50%;
            animation: spin 1s linear infinite;
            display: inline-block;
        }
        
        @keyframes spin {
            0% { transform: rotate(0deg); }
            100% { transform: rotate(360deg); }
        }
        
        @media (max-width: 768px) {
            .login-container { padding: 1rem; }
            .login-section { padding: 2rem; }
            .brand-title { font-size: 1.5rem; }
            .login-title { font-size: 1.5rem; }
            .logo-icon { width: 50px; height: 50px; font-size: 1.5rem; }
        }
    </style>
</head>
<body>
    <div class="cosmic-particles"></div>
    
    <div class="login-container">
        <div class="login-card">
            <div class="login-section">
                <div class="brand-logo">
                    <div class="logo-icon">
                        <i class="fas fa-rocket"></i>
                    </div>
                    <div class="brand-title">Premium Travel</div>
                </div>
                <div class="login-header">
                    <h1 class="login-title">Welcome Back</h1>
                    <p class="login-subtitle">Access your command center and continue your journey</p>
                </div>

                <% if (request.getAttribute("errorMessage") != null) { %>
                <div class="alert alert-error">
                    <i class="fas fa-exclamation-triangle"></i>
                    <%= request.getAttribute("errorMessage") %>
                </div>
                <% } %>
                
                <% if (request.getParameter("success") != null) { %>
                <div class="alert alert-success">
                    <i class="fas fa-check-circle"></i>
                    <%= request.getParameter("success") %>
                </div>
                <% } %>

                <form class="login-form" action="${pageContext.request.contextPath}/loginServlet" method="post">
                    <div class="form-group">
                        <label class="form-label" for="username">
                            <i class="fas fa-user-astronaut"></i> Username
                        </label>
                        <input type="text" class="form-input" id="username" name="username" 
                               placeholder="Enter your cosmic identifier" required autofocus>
                    </div>

                    <div class="form-group">
                        <label class="form-label" for="password">
                            <i class="fas fa-key"></i> Password
                        </label>
                        <input type="password" class="form-input" id="password" name="password" 
                               placeholder="Enter your secure access code" required>
                    </div>

                    <button type="submit" class="login-button">
                        <i class="fas fa-rocket"></i>
                        Launch Session
                    </button>
                </form>

                <div class="form-footer">
                    <div class="register-link">
                        New to our galaxy? 
                        <a href="${pageContext.request.contextPath}/jsp/register.jsp">Join the mission</a>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <script>
        // Create cosmic particles
        function createParticles() {
            const container = document.querySelector('.cosmic-particles');
            for (let i = 0; i < 50; i++) {
                const particle = document.createElement('div');
                particle.className = 'particle';
                particle.style.left = Math.random() * 100 + '%';
                particle.style.animationDelay = Math.random() * 15 + 's';
                particle.style.animationDuration = (Math.random() * 10 + 10) + 's';
                container.appendChild(particle);
            }
        }
        
        // Enhanced form validation
        document.querySelector('.login-form').addEventListener('submit', function(e) {
            const username = document.getElementById('username').value.trim();
            const password = document.getElementById('password').value.trim();
            const button = document.querySelector('.login-button');

            if (username.length < 3) {
                e.preventDefault();
                showAlert('Username must be at least 3 characters', 'error');
                return;
            }

            if (password.length < 6) {
                e.preventDefault();
                showAlert('Password must be at least 6 characters', 'error');
                return;
            }

            // Show loading state
            button.innerHTML = '<div class="loading"></div> Launching...';
            button.disabled = true;
        });

        function showAlert(message, type) {
            const existingAlert = document.querySelector('.alert');
            if (existingAlert) {
                existingAlert.remove();
            }

            const alert = document.createElement('div');
            alert.className = `alert alert-${type}`;
            alert.innerHTML = '<i class="fas fa-' + (type === 'error' ? 'exclamation-triangle' : 'check-circle') + '"></i> ' + message;
            
            const form = document.querySelector('.login-form');
            form.parentNode.insertBefore(alert, form);

            setTimeout(() => {
                alert.remove();
            }, 5000);
        }

        // Initialize particles and focus
        document.addEventListener('DOMContentLoaded', function() {
            createParticles();
            document.getElementById('username').focus();
        });
        
        // Add input animation effects
        document.querySelectorAll('.form-input').forEach(input => {
            input.addEventListener('focus', function() {
                this.parentElement.style.transform = 'translateY(-2px)';
            });
            
            input.addEventListener('blur', function() {
                this.parentElement.style.transform = 'translateY(0)';
            });
        });
    </script>
</body>
</html>