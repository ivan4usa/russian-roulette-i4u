package com.ivan4usa.roulette;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

/**
 * Class Try
 *
 * @author Ivan Pol
 */
@WebServlet(
    name = "try",
    urlPatterns = { "/try" }
)
public class Try extends HttpServlet {

    /**
     *  Handles HTTP GET requests.
     *
     *@param  request                   the HttpServletRequest object
     *@param  response                   the HttpServletResponse object
     *@exception  ServletException  if there is a Servlet failure
     *@exception  IOException       if there is an IO failure
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Get the necessary attributes from the session
        int currentBulletNumber = (Integer)request.getSession().getAttribute("currentBulletNumber");
        int loadedBulletNumber  = (Integer)request.getSession().getAttribute("loadedBulletNumber");
        int numberOfPlayers = (Integer)request.getSession().getAttribute("numberOfPlayers");
        Player currentPlayer = (Player) request.getSession().getAttribute("currentPlayer");

        String url; // url for forwarding

        // If the pistol is loaded with a live round.
        if (currentBulletNumber == loadedBulletNumber) {
            url = "/gameover.jsp";
        } else {
            url = "/shot.jsp";
            // Iterrate currentBulletNumber (next bullets slot)
            if (currentBulletNumber > 5) {
                currentBulletNumber = 0;
            }
            request.getSession().setAttribute("currentBulletNumber", (currentBulletNumber + 1));

            // Iterrate currentPlayer (next player)
            int nextPlace;

            if (currentPlayer.getPlace() == numberOfPlayers) {
                nextPlace = 1;
            } else {
                nextPlace = currentPlayer.getPlace() + 1;
            }

            for (int i = 1; i < 5; i++) {
                String playerParam = "player" + String.valueOf(i);
                Player nextPlayer = (Player) request.getSession().getAttribute(playerParam);
                if (nextPlayer != null && nextPlayer.getPlace() == nextPlace) {
                    request.getSession().setAttribute("currentPlayer", nextPlayer);
                    break;
                }
            }
        }

        // Forward to jsp
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
