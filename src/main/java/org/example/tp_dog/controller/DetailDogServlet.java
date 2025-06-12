package org.example.tp_dog.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

import java.io.IOException;

@WebServlet("/detailDog")
public class DetailDogServlet extends HttpServlet {


//    @Override
//    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
//        System.out.println("je passe par  doGet de detailDogServlet");
//        req.setAttribute("dogs",AddDogServlet.dogs);
//        req.getRequestDispatcher("/WEB-INF/dogList.jsp").forward(req , resp);
//    }
}
