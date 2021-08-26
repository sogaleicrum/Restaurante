/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.RequestDispatcher;

/**
 *
 * @author jason.rodriguezusam
 */
@WebServlet(name = "Control", urlPatterns = {"/Control"})
public class Control extends HttpServlet {


   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
         String action = request.getParameter("action");
     if(action.equalsIgnoreCase("inicio"));
        RequestDispatcher dis;
        dis = request.getRequestDispatcher("./inicio.jsp");
        dis.forward(request, response);
    }

   
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
       RequestDispatcher dis;
        dis = request.getRequestDispatcher("./Pedido.jsp");
        dis.forward(request, response);
    }

   

}
