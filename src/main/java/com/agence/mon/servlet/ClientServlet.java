package com.agence.mon.servlet;

import java.io.IOException;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.poecpoec.agence.dao.ClientDao;
import com.poecpoec.agence.model.Client;

/**
 * Servlet implementation class ClientServlet
 */
@WebServlet(urlPatterns = { "/client" })
public class ClientServlet extends HttpServlet
{
    private static final long serialVersionUID = 1L;

    /**
     * @see HttpServlet#HttpServlet()
     */
    public ClientServlet()
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
        ClientDao dao = new ClientDao();
        // si un id est renseigné
        String id = request.getParameter("id");
        if (id != null)
        {
            // un seul film demandé
            Client client = dao.findById(Integer.parseInt(id));
            request.setAttribute("client", client);
            rd = this.getServletContext().getRequestDispatcher("WEB-INF/client.jsp");
        }
        else
        {
            // tous les films
            List<Client> clients = dao.findAll();
            request.setAttribute("clients", clients);
            // dispatch
            rd = this.getServletContext().getRequestDispatcher("WEB-INF/clients.jsp");
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
