package com.northsea.store.view;

import com.northsea.store.controller.BookService;
import com.northsea.store.pojo.Book;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;

@WebServlet(name = "BookDetailsServlet", value = "/BookDetailsServlet")
public class BookDetailsServlet extends HttpServlet {
    //private static final long serialVersionUID = 1L;
    private BookService bookService = new BookService();
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Book book = BookService.getBookDetail();

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

    }
}
