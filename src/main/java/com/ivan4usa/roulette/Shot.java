package com.ivan4usa.roulette;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

/**
 * Class Shot
 *
 * @author Ivan Pol
 */
@WebServlet(
    name = "shot",
    urlPatterns = { "/shot" }
)
public class Shot extends HttpServlet {

    /**
     *  Handles HTTP GET requests.
     *
     *@param  request                   the HttpServletRequest object
     *@param  response                   the HttpServletResponse object
     *@exception  ServletException  if there is a Servlet failure
     *@exception  IOException       if there is an IO failure
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

        // Set variables and get attributes from session
        int first = (Integer) request.getSession().getAttribute("first");
        String playerParam = "player" + String.valueOf(first);
        Player currentPlayer = (Player) request.getSession().getAttribute(playerParam);
        request.getSession().setAttribute("currentPlayer", currentPlayer);
        int currentBulletNumber = 1 + (int) (Math.random() * 6);  //random number from 1 to 6
        int loadedBulletNumber;
        try {
            loadedBulletNumber = Integer.parseInt(request.getParameter("bullet"));
        } catch(NumberFormatException e) {
            loadedBulletNumber = 0;
        }

        // Record data to the session
        request.getSession().setAttribute("loadedBulletNumber", loadedBulletNumber);
        request.getSession().setAttribute("currentBulletNumber", currentBulletNumber);

        // Forward to jsp
        String url = "/shot.jsp";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // If the page was loaded without post method than redirect to homepage
        String url = "/";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
