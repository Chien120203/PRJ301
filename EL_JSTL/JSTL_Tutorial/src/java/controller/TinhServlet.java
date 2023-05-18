 /*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */

package controller;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 *
 * @author Đàm Quang Chiến
 */
@WebServlet(name="TinhServlet", urlPatterns={"/tinh"})
public class TinhServlet extends HttpServlet {
   
    /** 
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code> methods.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            out.println("<title>Servlet TInhServlet</title>");  
            out.println("</head>");
            out.println("<body>");
            out.println("<h1>Servlet TInhServlet at " + request.getContextPath () + "</h1>");
            out.println("</body>");
            out.println("</html>");
        }
    } 

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /** 
     * Handles the HTTP <code>GET</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        String money = request.getParameter("tien");
        String change = request.getParameter("change");
        request.setAttribute("tien_truoc", money);
        request.getRequestDispatcher("tinh.jsp").forward(request, response);
        String usd = getServletContext().getInitParameter("USD");
        String yen = getServletContext().getInitParameter("YEN");
        
        try {
            double money_ = Double.parseDouble(money);
            double usd_ = Double.parseDouble(usd);
            double yen_ = Double.parseDouble(yen);
            double moneyChange;
            
            if(change.equals("0")) moneyChange = money_/usd_;
            else moneyChange = money_/yen_;
            
            request.setAttribute("result", moneyChange);
            request.getRequestDispatcher("tinh.jsp").forward(request, response);
        } catch (NumberFormatException e) {
            request.setAttribute("error", "Nhap vao mot so");
            request.getRequestDispatcher("tinh.jsp").forward(request, response);
        }
        
    } 

    /** 
     * Handles the HTTP <code>POST</code> method.
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
    throws ServletException, IOException {
        
    }

    /** 
     * Returns a short description of the servlet.
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
