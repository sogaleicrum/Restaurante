
package Controller;

import Model.act;
import java.io.IOException;
import java.io.PrintWriter;
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
@WebServlet(name = "Fact", urlPatterns = {"/Fact"})
public class Fact extends HttpServlet {
    
  

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
   
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nom = request.getParameter("nombre");
        String fecha = request.getParameter("fecha");
        int pl1 = Integer.parseInt(request.getParameter("sl1")) ;
        int pl2 = Integer.parseInt(request.getParameter("sl2")) ;
        int pl3 = Integer.parseInt(request.getParameter("sl3")) ;
        int cant1 = Integer.parseInt(request.getParameter("Cant1")) ;
        int cant2 = Integer.parseInt(request.getParameter("Cant2")) ;
        int cant3 = Integer.parseInt(request.getParameter("Cant3")) ;
        double ab = Double.parseDouble(request.getParameter("txtres")) ;
        double pres1 = 2.50;
        double pres2 = 1.25;
        double pres3 = 1.50;
        double tt1 = 0;
        double tt2 = 0;
        double tt3 = 0;
        double total = 0.0;
        double cant =0;
        double vu =0;
        int contador=0;
        String producto= "";
        String cod="";
        if (pl1== 2){
        cant++;
        tt1 = cant1* pres1;
        }
        if (pl2== 2){
        cant++;
        tt2 = cant2* pres2;
        }
        if (pl3== 2){
        cant++;
        tt3 = cant3* pres3;
        }
        for (int i = 0; i < cant; i++) {
            if (pl1 == 2) {
                contador++;
                producto = "Pupusas";
                cod = cod+"<tr>" +"<td>"+ contador + "</td><td>"+producto+"</td><td>"+pres1+"</td><td>"+cant1+"</td><td>"+tt1+"</td></tr>";
                pl1 =1;
                
            } else if (pl2 == 2) {
                contador++;
                producto = "Tamales";
                 cod = cod+"<tr>" +"<td>"+ contador + "</td><td>"+producto+"</td><td>"+pres2+"</td><td>"+cant2+"</td><td>"+tt2+"</td></tr>";
            pl2=1;
            } else if (pl3 == 2) {
                contador++;
                producto = "Riguas";
                 cod = cod+"<tr>" +"<td>"+ contador + "</td><td>"+producto+"</td><td>"+pres3+"</td><td>"+cant3+"</td><td>"+tt3+"</td></tr>";
                pl3=1;
            }
            
        }
        
        String letra ="Su cambio es:"; 
        
        
        total = tt1+tt2+tt3;
        vu= ab-total;
        
        RequestDispatcher dis;
        request.setAttribute("nombre", nom);
        request.setAttribute("fecha", fecha);
        request.setAttribute("cant", total);
        if(vu<0){
            vu= (vu*(-1));
            letra="usted nos debe: ";
            request.setAttribute("letra", letra);
        request.setAttribute("vu",vu);
        } else{
            request.setAttribute("letra", letra);
        request.setAttribute("vu", vu);
        }
        
        request.setAttribute("cod", cod);
 
        act ac = new act();
        
        request.setAttribute("let", ac.Convertir(String.valueOf(total),true));
        dis = request.getRequestDispatcher("./Pedido.jsp");
        dis.forward(request, response);
    }
}


