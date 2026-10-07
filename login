<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>School Portal Login</title>
    <!-- Boostrap CSS here -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <!-- Bootstrap icons here -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.0/font/bootstrap-icons.css" rel="stylesheet">
    <!-- Google fonts here -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@400;500;600;700&display=swap" rel="stylesheet">

    <style>
        body {
            font-family: 'Inter', sans-serif;
            background: linear-gradient(135deg, #f5f7fa 0%, #c3cfe2 100%);
            min-height: 100vh;
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px 0;
        }

        .login-card {
            border: none;
            border-radius: 16px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.08);
            background: #ffffff;
            transition: transform 0.2s ease, box-shadow 0.2s ease;
        }

        .school-logo {
            width: 80px;
            height: 80px;
            object-fit: contain;
            filter: drop-shadow(0 4px 6px rgba(0, 0, 0, 0.1));
        }

        .form-floating > .form-control {
            border-radius: 10px;
            border: 1px solid #e0e0e0;
        }

        .form-floating > .form-control:focus {
            border-color: #0d6efd;
            box-shadow: 0 0 0 0.25rem rgba(13, 110, 253, 0.15);
        }

        .btn-primary {
            padding: 12px;
            font-weight: 600;
            border-radius: 10px;
            transition: all 0.2s ease;
        }

        .btn-primary:hover {
            transform: translateY(-1px);
            box-shadow: 0 4px 12px rgba(13, 110, 253, 0.3);
        }

        .divider {
            border-top: 1px solid #eeeeee;
        }

        .portal-badge {
            background-color: #eef2ff;
            color: #4f46e5;
            font-weight: 600;
            font-size: 0.75rem;
            letter-spacing: 0.5px;
            text-transform: uppercase;
            padding: 6px 12px;
            border-radius: 20px;
            display: inline-block;
        }

        /* for eye icon to */
        .password-container {
            position: relative;
        }

        .toggle-password {
            position: absolute;
            right: 15px;
            top: 50%;
            transform: translateY(-50%);
            background: none;
            border: none;
            color: #6c757d;
            cursor: pointer;
            z-index: 10;
        }

        .toggle-password:hover {
            color: #0d6efd;
        }
    </style>
</head>
<body>

    <div class="container" style="max-width: 440px;">
        <div class="card login-card p-4 p-sm-5">

            <div class="text-center mb-3">
                <img src="logo.png" alt="School Logo" class="school-logo mb-3" onerror="this.onerror=null; this.src='https://via.placeholder.com/80?text=LOGO';">
                <br>
                <span class="portal-badge mb-2">Graduation Clearance Portal</span>
                <h4 class="fw-bold text-dark mt-2 mb-1">Welcome Back</h4>
                <p class="text-muted small">Sign in with your institutional credentials</p>
            </div>

            <!-- for login -->
            <form action="/api/login" method="POST">


                <div class="form-floating mb-3">
                    <input type="email" name="email" class="form-control" id="floatingEmail" placeholder="student@school.edu.ph" required>
                    <label for="floatingEmail" class="text-muted">
                        <i class="bi bi-envelope me-1"></i> School Email
                    </label>
                </div>

                <!-- Password Input -->
                <div class="password-container mb-3">
                    <div class="form-floating">
                        <input type="password" name="password" class="form-control" id="floatingPassword" placeholder="Password" required>
                        <label for="floatingPassword" class="text-muted">
                            <i class="bi bi-lock me-1"></i> Password
                        </label>
                    </div>
                    <button type="button" class="toggle-password" id="togglePasswordBtn" aria-label="Toggle password visibility">
                        <i class="bi bi-eye" id="toggleIcon"></i>
                    </button>
                </div>


                <div class="d-flex justify-content-between align-items-center mb-4">
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" id="rememberMe">
                        <label class="form-check-label small text-muted" for="rememberMe">
                            Remember me
                        </label>
                    </div>
                    <a href="#" class="small text-decoration-none fw-medium">Forgot password?</a>
                </div>

                <!-- Submit Button -->
                <button type="submit" class="btn btn-primary w-100 mb-3">
                    Sign In <i class="bi bi-arrow-right-short ms-1"></i>
                </button>
            </form>

            <div class="divider my-3"></div>


            <p class="text-center small text-muted mb-0">
                Don't have an account?
                <a href="/signup.html" class="text-decoration-none fw-semibold">Create one here</a>
            </p>

        </div>
    </div>

    <!-- dito yung bootstrap js -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script>
        const passwordInput = document.getElementById('floatingPassword');
        const togglePasswordBtn = document.getElementById('togglePasswordBtn');
        const toggleIcon = document.getElementById('toggleIcon');

        togglePasswordBtn.addEventListener('click', function () {

            const type = passwordInput.getAttribute('type') === 'password' ? 'text' : 'password';
            passwordInput.setAttribute('type', type);

            // dito eye icon pwede palit palitan
            toggleIcon.classList.toggle('bi-eye');
            toggleIcon.classList.toggle('bi-eye-slash');
        });
    </script>
</body>
</html>
