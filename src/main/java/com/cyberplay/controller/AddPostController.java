package com.cyberplay.controller;

import com.cyberplay.model.postmodel;
import com.cyberplay.service.PostService;
import com.cyberplay.model.usermodel;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;
import java.io.IOException;

@WebServlet(asyncSupported = true, urlPatterns = {"/addpost"})
public class AddPostController extends HttpServlet {
    private static final long serialVersionUID = 1L;
    private PostService postService = new PostService();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Check login
        HttpSession session = request.getSession(false);
        usermodel user = (session != null) ? (usermodel) session.getAttribute("user") : null;
        if (user == null) {
            // not logged in → redirect to login page
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        // show the add post form
        request.getRequestDispatcher("/pages/addpost.jsp")
               .forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Check login again
        HttpSession session = request.getSession(false);
        usermodel user = (session != null) ? (usermodel) session.getAttribute("user") : null;
        if (user == null) {
            response.sendRedirect(request.getContextPath() + "/login");
            return;
        }

        // read form fields
        String title   = request.getParameter("title");
        String content = request.getParameter("content");
        String username = user.getUserName();
        int category   = Integer.parseInt(request.getParameter("category"));

        // build model and save
        postmodel post = new postmodel();
        post.setTitle(title);
        post.setContent(content);
        post.setCategory(category);
        post.setusername(username);

        boolean created = postService.createPost(post);
        if (created) {
            // redirect to list or detail page
            response.sendRedirect(request.getContextPath() + "/posts"); 
        } else {
            // on failure, stay on form with error
            request.setAttribute("errorMessage", "Unable to create post. Please try again.");
            request.getRequestDispatcher("/pages/addpost.jsp")
                   .forward(request, response);
        }
    }
}

