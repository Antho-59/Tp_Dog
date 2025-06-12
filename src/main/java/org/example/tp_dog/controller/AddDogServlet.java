package org.example.tp_dog.controller;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import org.example.tp_dog.model.Dog;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

@WebServlet(name = "addDog", value = "/addDog")
public class AddDogServlet extends HttpServlet {

    protected static List<Dog> dogs;

    @Override
    public void init() throws ServletException {
        dogs = new ArrayList<>();
        dogs.add(new Dog(1 , "Bobby" , "Labrador" , "2020-01-01"));

    }



    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // ca me sert a me rediriger vers la page jsp
        RequestDispatcher dispatcher = request.getRequestDispatcher("/WEB-INF/dogAdd.jsp");

        dispatcher.forward(request, response);


    }



    @Override
    protected void doPost(HttpServletRequest req , HttpServletResponse resp) throws ServletException, IOException {
        int id = dogs.size() + 1;

       // Integer id = Integer.parseInt(req.getParameter("id")); // ne marche pas car on veut auton increment
       String name = req.getParameter("name");
        String breed = req.getParameter("breed");
        String dateOfBirth = req.getParameter("dateOfBirth");
        Dog dog = new Dog(id , name , breed , dateOfBirth);
        dogs.add(dog);
        req.setAttribute("dogs",dogs);


        System.out.println("je passe par  doPost de AddDogServlet");
        System.out.println(dogs);
    }
}
