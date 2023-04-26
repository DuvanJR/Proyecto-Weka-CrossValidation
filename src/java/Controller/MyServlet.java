/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package Controller;

import algoritmo.NaiveBayes.CrossValidation;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author Usuario
 */
@WebServlet(name = "MyServlet", urlPatterns = {"/MyServlet"})
public class MyServlet extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        //processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String gender = request.getParameter("gender");
        String age = request.getParameter("age");
        String hypertension = request.getParameter("hypertension");
        String heart_disease = request.getParameter("heart_disease");
        String ever_married = request.getParameter("ever_married");
        String work_type = request.getParameter("work_type");
        String Residence_type = request.getParameter("Residence_type");
        String avg_glucose_level = request.getParameter("avg_glucose_level");
        String smoking_status = request.getParameter("smoking_status");
        String link = "", msj = "";
        int decision = 0;

        // Convertir los parámetros a números enteros
        double Age = Double.parseDouble(age);
        double Hypertension = Double.parseDouble(hypertension);
        double Heart_disease = Double.parseDouble(heart_disease);
        double Avg_glucose_level = Double.parseDouble(avg_glucose_level);

        CrossValidation stroke = new CrossValidation();

        try {
            decision = (int) stroke.decisionNaiveBayes(gender, Age, Hypertension, Heart_disease, ever_married, work_type, Residence_type, Avg_glucose_level, smoking_status);
        } catch (Exception ex) {
            Logger.getLogger(MyServlet.class.getName()).log(Level.SEVERE, null, ex);
            System.out.println("Error!");
        }

        //reenvía la solicitud del servlet a la vista 'output'
        RequestDispatcher reqdis = request.getRequestDispatcher("/output.jsp");

        if (decision == 0) { //No
            link = "resources/img/saludable.png";
            msj = "Estas Sano de un accidente "
                    + "\ncerebro-vascular!!";
        } else { //Si
            link = "resources/img/cerebrovascular.png";
            msj = "Tuviste o Tienes un "
                    + "\naccidente cerebro-vascular";
        }

        request.setAttribute("link", link);
        request.setAttribute("msj", msj);
        reqdis.forward(request, response);

    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
