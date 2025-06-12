package org.example.tp_dog.controller;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.tp_dog.model.Dog;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet("/listDog")
public class ListDogServlet extends HttpServlet {


   // private List<Dog> dogList;



    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
        System.out.println("je passe par  doGet de ListdogServlet");
        req.setAttribute("dogs",AddDogServlet.dogs);
        req.getRequestDispatcher("/WEB-INF/dogList.jsp").forward(req , resp);
    }
}
