/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlets;

import comptebancaire.gestionnaires.GestionnaireCompteBancaire;
import comptebancaire.modeles.CompteBancaire;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.Collection;
import javax.ejb.EJB;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author kykwy
 */
@WebServlet(name = "ServletCompteBancaire", urlPatterns = {"/ServletCompteBancaire"})
public class ServletCompteBancaire extends HttpServlet {

    @EJB
    private GestionnaireCompteBancaire gestionnaireCompteBancaire;

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String action = request.getParameter("action");
        String forwardTo = "";
        String message = "";
        if (action != null) {
            if (action.equals("ListerCompte")) {
                Collection<CompteBancaire> liste = gestionnaireCompteBancaire.getAllBankAccount();
                request.setAttribute("listeDesComptesB", liste);
                
                forwardTo = "listAccount.jsp?action=ListerCompte";
                message = "Liste des comptes bancaires";
            } else if (action.equals("creerNouveauCompte")) {
                String prenom = request.getParameter("prenom");
                String nom = request.getParameter("nom");
                String numCompte = request.getParameter("numCompte");
                double balance = Double.parseDouble(request.getParameter("balance"));
                gestionnaireCompteBancaire.creerCompteBancaire(nom, prenom, numCompte, balance);
                /*Collection<CompteBancaire> liste = gestionnaireCompteBancaire.getAllBankAccount();
                request.setAttribute("listeDesComptesBanquaires", liste);
                
                message = "Compte crée avec succès";*/
                message = "Compte crée avec succès";
                forwardTo = "newAccount.jsp?action=todo";
            } else {
                forwardTo = "newAccount.jsp?action=todo";
                message = "La fonctionnalité pour le paramètre " + action + " est à implémenter !";
            }
        }

        RequestDispatcher dp = request.getRequestDispatcher(forwardTo + "&message=" + message);
        dp.forward(request, response);

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
        processRequest(request, response);
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
        processRequest(request, response);
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
