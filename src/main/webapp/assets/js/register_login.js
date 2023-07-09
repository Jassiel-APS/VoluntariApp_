
/*      =======             DASHBOARD               ======          */

document.addEventListener("DOMContentLoaded", function (event) {

    const showNavbar = (toggleId, navId, bodyId, headerId) => {
      const toggle = document.getElementById(toggleId),
        nav = document.getElementById(navId),
        bodypd = document.getElementById(bodyId),
        headerpd = document.getElementById(headerId)

      // Validate that all variables exist
      if (toggle && nav && bodypd && headerpd) {
        toggle.addEventListener('click', () => {
          // show navbar
          nav.classList.toggle('show')
          // change icon
          toggle.classList.toggle('bx-x')
          // add padding to body
          bodypd.classList.toggle('body-pd')
          // add padding to header
          headerpd.classList.toggle('body-pd')
        })
      }
    }

    showNavbar('header-toggle', 'nav-bar', 'body-pd', 'header')

    /*===== LINK ACTIVE =====*/
    const linkColor = document.querySelectorAll('.nav_link')

    function colorLink() {
      if (linkColor) {
        linkColor.forEach(l => l.classList.remove('active'))
        this.classList.add('active')
      }
    }
    linkColor.forEach(l => l.addEventListener('click', colorLink))

    // Your code to run since DOM is loaded and ready
  });
  
  var myLink = document.querySelector('a[href="#"]');
  myLink.addEventListener('click', function (e) {
    e.preventDefault();
  });
/*      =======            FIN DASHBOARD               ======          */



/*======    Login icono vistas de contraseña y Validacion de Formulario     ======*/

function validateFormAndRedirect() {
    if (validateForm()) {
        window.location.href = "";
    }
    return false;
}

function validateForm() {
    var email = document.getElementById('email').value;
    var password = document.getElementById('password').value;
    var confirmPassword = document.getElementById('confirm_password').value;
    var telefono = document.getElementById('telefono').value;
    var codigoPostal = document.getElementById('codigo_postal').value;

    // Validación de correo electrónico
    if (!email.includes('@')) {
        alert('El correo electrónico debe contener un "@"');
        return false;
    }

    // Validación de contraseña
    if (password !== confirmPassword) {
        alert('Las contraseñas no coinciden');
        return false;
    }

    // Validación de teléfono (10 dígitos numéricos)
    if (!/^\d{10}$/.test(telefono)) {
        alert('El teléfono debe contener exactamente 10 dígitos numéricos');
        return false;
    }

    // Validación de código postal (solo números)
    if (!/^\d{5}$/.test(codigoPostal)) {
        alert('Faltan dígitos en el código postal');
        return false;
    }
    
    return true;
}
// 

function togglePasswordVisibility() {
    var passwordInput = document.getElementById("password");
    var togglePassword = document.querySelector(".password-toggle");
    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        togglePassword.innerHTML = '<i class="bi bi-eye"></i>';
    } else {
        passwordInput.type = "password";
        togglePassword.innerHTML = '<i class="bi bi-eye-slash"></i>';
    }
}

// 
function togglePasswordVisibility(inputId) {
    var passwordInput = document.getElementById(inputId);
    var passwordToggleIcon = document.getElementById(inputId + '-toggle-icon');

    if (passwordInput.type === "password") {
        passwordInput.type = "text";
        passwordToggleIcon.classList.remove('bi-eye-slash');
        passwordToggleIcon.classList.add('bi-eye');
    } else {
        passwordInput.type = "password";
        passwordToggleIcon.classList.remove('bi-eye');
        passwordToggleIcon.classList.add('bi-eye-slash');
    }
}

function validateForm() {
    var password = document.getElementById('password').value;
    var confirmPassword = document.getElementById('confirm_password').value;

    if (password !== confirmPassword) {
        alert("Las contraseñas no coinciden.");
        return false;
    }
    
    return true;
}
/*======   FIN Login icono vistas de contraseña y Validacion de Formulario     ======*/


