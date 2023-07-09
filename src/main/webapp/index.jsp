<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Login</title>
    <!-- Se inserta la foto del logo de la empresa -->
    <link rel="shortcut icon" type="image/png" href="${pageContext.request.contextPath}/assets/images/logos_voluntariapp/logo_VOLUNTARIAPP.png" />
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/css/bootstrap.min.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/assets/css/css/login_styles.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}https://cdn.jsdelivr.net/npm/bootstrap-icons@1.10.5/font/bootstrap-icons.css">
</head>
<body>
<div class="container-fluid d-flex align-items-center justify-content-center">
    <div class="container bg-white rounded shadow">
        <div class="row align-items-stretch">
            <div class="col bg-white p-5 rounded-end">
                <div class="text-center">
                    <img src="./assets/images/logos_voluntariapp/logo_extend.png" style="width:200px" alt="">
                </div>
                <div class="fw-bold text-center py-5">
                    <h3 class="fw-bold text-center">Bienvenido a VoluntariApp</h3>
                    <p class="text-center">Inicia sesion con tu cuenta</p>
                </div>
                <form action="#">
                    <div class="form-outline mb-4">
                        <input type="email" id="email" class="form-control" placeholder="Correo"/>
                    </div>
                    <div class="form-outline mb-4">
                        <div class="form-control-icon">
                            <input type="password" id="password" class="form-control" placeholder="Contraseña"/>
                            <span class="password-toggle" onclick="togglePasswordVisibility('password')">
                                    <i id="password-toggle-icon" class="bi bi-eye-slash"></i>
                                </span>
                        </div>
                    </div>
                    <!-- <div class="mb-4 form-check">
                        <input type="checkbox" name="connected" class="form-check-input">
                        <label for="connected" class="form-check-label">Mantenerme Conectado</label>
                    </div> -->
                    <div class="d-grid">
                        <a href="./pages/administrators/index_admin.jsp" class="btn btn-primary">Iniciar Admin</a>
                    </div>
                    <div class="d-grid">
                        <a href="./pages/organizations/index_organ.jsp" class="btn btn-primary">Iniciar Organizacion</a>
                    </div>
                    <div class="d-grid">
                        <a href="./pages/volunteers/index_volunt.jsp" class="btn btn-primary">Iniciar Voluntarios</a>
                    </div>
                    <div class="my-3">
                        <span>¿No tienes cuenta? <a href="./pages/register_login.jsp">Regístrate</a></span><br>
                    </div>
                </form>
            </div>
            <div class="col bg d-none d-lg-block col-md-5 col-lg-5 col-xl-7 rounded"></div>
        </div>
    </div>
</div>
<script src="./assets/js/register_login.js"></script>
<script src="./assets/js/bootstrap.bundle.min.js"></script>
</body>
</html>
