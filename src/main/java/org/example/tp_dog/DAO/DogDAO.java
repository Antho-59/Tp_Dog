package org.example.tp_dog.DAO;

import org.example.tp_dog.model.Dog;
import org.hibernate.Session;

import java.util.List;

public class DogDAO {

    private Session session;

    public DogDAO(Session session) {
        this.session = session;
    }
// TODO
    public Dog save (Dog dog){
        session.beginTransaction();
//        session.getTransaction().begin();
        session.saveOrUpdate(dog);
        session.getTransaction().commit();
        return dog;
    }

    public boolean delete (Dog dog){
        session.beginTransaction();
        session.delete(dog);
        session.getTransaction().commit();
        return true;
    }

    public Dog get (int id){
        return session.get(Dog.class,id);
    }

    public List<Dog> get (){
        return session.createQuery("select d from Dog d", Dog.class).getResultList();
    }

}
