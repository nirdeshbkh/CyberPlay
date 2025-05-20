package com.cyberplay.controller;

import com.cyberplay.model.postmodel;
import com.cyberplay.service.PostService;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;
import java.util.List;

@WebServlet(asyncSupported = true, urlPatterns = {"/listposts"})
public class ListPostController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private PostService postService = new PostService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // read the category parameter
        String categoryParam = request.getParameter("category");
        if (categoryParam == null) {
            // no category ⇒ you could redirect or show all; here we redirect back
            response.sendRedirect(request.getContextPath() + "/posts");
            return;
        }

        int category;
        try {
            category = Integer.parseInt(categoryParam);
        } catch (NumberFormatException e) {
            response.sendError(HttpServletResponse.SC_BAD_REQUEST, "Invalid category");
            return;
        }

        // fetch posts for that category
        List<postmodel> posts = postService.getPostsByCategory(category);

        // pass to JSP
        request.setAttribute("posts", posts);
        request.setAttribute("category", category);
        request.getRequestDispatcher("/pages/listposts.jsp")
               .forward(request, response);
    }
}

