package dao;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entities.Category;

@Repository
public class CategoryDAOImpl implements CategoryDAO{
	@Autowired
    private SessionFactory sessionFactory;

    @Override
    public void insert(Category category) {
    	Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.save(category);
		session.getTransaction().commit();
		session.close();
    }
    
    @Override
	public void update(Category category) {
		Session session=sessionFactory.openSession();
		session.beginTransaction();
		session.update(category);
		session.getTransaction().commit();
		session.close();
	}

    @Override
    public void delete(Integer id) {
    	Session session=sessionFactory.openSession();
		session.beginTransaction();
		Category category= session.find(Category.class, id);
		session.remove(category);
		session.getTransaction().commit();
		session.close();
    }

    @Override
    public Category getById(Integer id) {
    	Session session=sessionFactory.openSession();
		Category emp= session.find(Category.class, id);
		session.close();
		return emp;
    }

    @Override
    public List<Category> getall() {
    	Session session=sessionFactory.openSession();
    	session.beginTransaction();
    	List<Category> result=session.createQuery("from Category").list();
    	session.getTransaction().commit();
    	session.close();
    	return result;
    }
}
