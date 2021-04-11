package com.ivan4usa.roulette;

import java.io.*;
import java.util.*;
import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

/**
 * Class Loading
 *
 * @author Ivan Pol
 */
@WebServlet(
    name = "loading",
    urlPatterns = { "/loading" }
)
public class Loading extends HttpServlet {

    /**
     *  Handles HTTP GET requests.
     *
     *@param  request                   the HttpServletRequest object
     *@param  response                   the HttpServletResponse object
     *@exception  ServletException  if there is a Servlet failure
     *@exception  IOException       if there is an IO failure
     */
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Reset session
        request.getSession().invalidate();

        int first;  // variable for number of first player
        if (request.getParameter("first") != null) {
            first = Integer.parseInt(request.getParameter("first"));
        } else {
            first = 0;
        }

        // Local variables
        int place = 1;
        int numberOfPlayers;
        int firstPlace = 1;
        boolean isFirstSelected = false;

        for (int i = 1; i < 5; i++) {
            String playerParam = "player" + String.valueOf(i);
            request.getSession().removeAttribute(playerParam);
            if (!request.getParameter(playerParam).equals("0")) {

                Player player = new Player();

                player.setName(request.getParameter(playerParam));

                if (first > 0) {
                    if (first != i) {
                        player.setPlace(place + 1);
                    } else  if (first == i) {
                        player.setPlace(1);
                        place--;
                    }
                } else {
                    player.setPlace(place);
                }
                place++;

                if (first == 0 && !isFirstSelected) {
                    firstPlace = i;
                    isFirstSelected = true;
                }

                switch(request.getParameter(playerParam)) {
                    case "Evgeny":
                        player.setImage("images/character-01.png");
                        break;
                    case "Boris":
                        player.setImage("images/character-02.png");
                        break;
                    case "Natalya":
                        player.setImage("images/character-03.png");
                        break;
                    case "Alexey":
                        player.setImage("images/character-04.png");
                        break;
                    case "Dmitry":
                        player.setImage("images/character-05.png");
                        break;
                    case "Pavel":
                        player.setImage("images/character-06.png");
                        break;
                }

                request.getSession().setAttribute(playerParam, player);
            }

        }
        if (first == 0) {
            first = firstPlace;
        }
        numberOfPlayers = place;

        request.getSession().setAttribute("numberOfPlayers", numberOfPlayers);
        request.getSession().setAttribute("first", first);

        // Forward to jsp
        String url = "/load-the-revolver.jsp";

        RequestDispatcher dispatcher
                = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // If the page was loaded without post method than redirect to homepage
        String url = "/";
        RequestDispatcher dispatcher = getServletContext().getRequestDispatcher(url);
        dispatcher.forward(request, response);
    }
}
