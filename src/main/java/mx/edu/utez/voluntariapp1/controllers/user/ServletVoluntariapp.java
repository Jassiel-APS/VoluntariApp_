package mx.edu.utez.voluntariapp1.controllers.user;


import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet(name = "users",urlPatterns = {
        "/user/login",
        "/user/role",
        "/user/create-account-admin",
        "/user/create-account-organization",
        "/user/create-account-volunteer",
        "/user/index-admin",
        "/user/index-organization",
        "/user/index-volunteer",
        "/user/register-successfull",
        "/user/admin/dashboard",
        "/user/register-view",
})

public class ServletVoluntariapp extends HttpServlet {
    public String action;
    private String redirect = "/user/login";
    private String id_user,name,email,password,is_active,photo,rol,date_update;


    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        action = req.getServletPath();
        switch (action){
            case "/user/login": //redirigir al inicio
                redirect = "/index.jsp";
                break;
            case "/user/role": //una vez registrado te llevara a iniciar sesion
                redirect = "../webapp/pages/register_login.jsp";
                break;
            case "/user/create-account-admin": //una vez registrado te llevara a iniciar sesion
                redirect = "../webapp/pages/create_administrator_account.jsp";
                break;

            case "/user/create-account-organization":
                redirect = "../webapp/pages/create_organization_account.jsp";;
                break;
            case "/user/create-account-volunteer":
                redirect = "../webapp/pages/create_volunteer_account.jsp";;
                break;
            default:
                System.out.println(action);
                break;
        }
        req.getRequestDispatcher(redirect).forward(req, resp);
    }
    /*Termina el metodo DOGET*/

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        req.setCharacterEncoding("UTF-8");
        resp.setCharacterEncoding("UTF-8");
        resp.setContentType("text/html");
        action = req.getServletPath();
        switch (action){
            case "/user/register":
                try {
                    name = req.getParameter("name");

                }catch (Exception e){

                }
        }
    }
}
