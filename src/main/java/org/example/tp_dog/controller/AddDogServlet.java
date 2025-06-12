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

@WebServlet(name = "addDog", value = "/addDog")
public class AddDogServlet extends HttpServlet {

    private List<Dog> dogs;

    @Override
    public void init() throws ServletException {
        this.dogs = new ArrayList<>();
        this.dogs.add(new Dog(1 , "Bobby" , "Labrador" , "2020-01-01"));

    }

    @Override
    protected void doGet(HttpServletRequest req , HttpServletResponse resp) throws ServletException, IOException {
       Integer id = Integer.parseInt(req.getParameter("id"));
       String name = req.getParameter("name");
        String breed = req.getParameter("breed");
        String dateOfBirth = req.getParameter("dateOfBirth");
        Dog dog = new Dog(id , name , breed , dateOfBirth);
        this.dogs.add(dog);
        doGet(req , resp);

    }
}
