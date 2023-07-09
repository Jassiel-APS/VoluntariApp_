<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Rol de cuentaCuenta</title>
    <!-- Se inserta la foto del logo de la empresa -->
    <link rel="shortcut icon" type="image/png" href="../assets/images/logos_voluntariapp/logo_VOLUNTARIAPP.png" />
    <link rel="stylesheet" href="../assets/css/css/bootstrap.min.css">
    <link rel="stylesheet" href="../assets/css/css/register.css">
    <link rel="stylesheet" href="{pageContext.request.contextPath}https://cdn.jsdelivr.net/npm/bootstrap-icons@1.7.2/font/bootstrap-icons.css">
</head>

<body>
    <div class="text-md-start p-4">
        <img src="../assets/images/logos_voluntariapp/logo_extend.png" style="width:200px"  alt="">
    </div>
    <div class="container-fluid d-flex align-items-center justify-content-center">
        <div class="container bg-white rounded shadow">
            <div class="row align-items-stretch">
                <div class="col bg-white p-5 rounded-end">

                    <h3 class="fw-bold text-center ">Crear una cuenta de VoluntariApp</h3>
                    <p class=" text-center">¿Que tipo de usuario desea registrar?</p>
                    <br>
                    <!-- Register -->
                    <form>
                        <div class="row">
                            <div class="text-center">
                                <div class="d-grid">
                                  <a href="create_administrator_account.jsp" class="btn fw-bold btn_colorcito_azulito d-flex justify-content-between align-items-center">
                                    <span class="fs-4">Administrador</span> <i class="bi bi-caret-right-fill"></i>
                                  </a><br>
                                  <a href="create_organization_account.jsp" class="btn fw-bold btn_colorcito_azulito d-flex justify-content-between align-items-center">
                                    <span class="fs-4">Organización</span> <i class="bi bi-caret-right-fill"></i>
                                  </a><br>
                                  <a href="create_volunteer_account.jsp" class="btn fw-bold btn_colorcito_azulito d-flex justify-content-between align-items-center">
                                    <span class="fs-4">Voluntario</span> <i class="bi bi-caret-right-fill"></i>
                                  </a><br>
                                </div>
                              </div>
                        </div>
                        <div class="text-center">
                            <span>¿Ya tienes una cuenta? <a href="../index.jsp">Inicia sesión</a></span>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    <script src="../assets/js/bootstrap.bundle.min.js"></script>
    <script src="../assets/js/register_login.js"></script>
</body>

</html>