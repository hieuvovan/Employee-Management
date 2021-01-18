package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.net.HttpCookie;
import javax.servlet.ServletException;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.websocket.Session;
 
 
public class LogoutController extends HttpServlet {
 
 protected void processRequest(HttpServletRequest request, HttpServletResponse response)
 throws ServletException, IOException {
 response.setContentType("text/html;charset=UTF-8");
 PrintWriter out = response.getWriter();
 try {
    if (request.getParameter("logout") != null) {
       if (request.getParameter("logout").equals("ok")) {
         request.removeAttribute("user");
         request.removeAttribute("pass");
         request.getSession().invalidate();
         response.sendRedirect("home");
         }
     }
 } finally {
 out.close();
 }
 }
 
 @Override
 protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 processRequest(request, response);
 }
 
 @Override
 protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
 processRequest(request, response);
 }
 
 @Override
 public String getServletInfo() {
 return "Short description";
 }
 
}
