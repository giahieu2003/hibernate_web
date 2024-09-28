package dao;

import entities.User;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserDAOImpl implements UserDAO {

    @Autowired
    private SessionFactory sessionFactory;

    @Override
    public void register(User user) {
        Session session = sessionFactory.openSession();
        session.beginTransaction();
        session.save(user);
        session.getTransaction().commit();
        session.close();
    }

    @Override
    public User findByUsername(String username) {
        Session session = sessionFactory.openSession();
        String hql = "FROM User WHERE username = :username";
        User user = session.createQuery(hql, User.class)
                           .setParameter("username", username)
                           .uniqueResult();
        session.close();
        return user;
    }
}
