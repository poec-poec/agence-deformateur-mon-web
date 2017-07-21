package com.agence.mon.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poecpoec.agence.dao.AeroportDao;
import com.poecpoec.agence.dao.VilleDao;
import com.poecpoec.agence.model.Aeroport;
import com.poecpoec.agence.model.Ville;

/**
 * Servlet implementation class AeroportServlet
 */
@WebServlet(urlPatterns = { "/aeroport" })
public class AeroportServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public AeroportServlet()
    {
        super();
        // TODO Auto-generated constructor stub
    }

    /**
     * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // dispatcher
        RequestDispatcher rd = this.getServletContext().getRequestDispatcher("/home");
        // dao
        AeroportDao dao = new AeroportDao();
        VilleDao villedao = new VilleDao();
        // si un id est renseigné
        String id = request.getParameter("id");
        if (id != null)
        {
            // un seul film demandé
            Aeroport aeroport = dao.findById(Integer.parseInt(id));
            request.setAttribute("aeroport", aeroport);
            Ville ville = villedao.findById(Integer.parseInt(id));
            request.setAttribute("ville", ville);
            rd = this.getServletContext().getRequestDispatcher("/WEB-INF/aeroport.jsp");
        }
        else
        {
            // tous les films
            List<Aeroport> aeroports = dao.findAll();
            request.setAttribute("aeroports", aeroports);
            // dispatch
            rd = this.getServletContext().getRequestDispatcher("/WEB-INF/aeroports.jsp");
        }

        // patate chaude
        rd.forward(request, response);
    }

    /**
     * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
     *      response)
     */
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        // TODO Auto-generated method stub
        doGet(request, response);
    }

}
