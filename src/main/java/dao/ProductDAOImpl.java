package dao;

import java.util.List;

import javax.persistence.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entities.Product;

@Repository
public class ProductDAOImpl implements ProductDAO {
	@Autowired
	private SessionFactory sessionFactory;

	@Override
	public List<Product> getall() {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String hql = "SELECT p FROM Product p JOIN FETCH p.category";
		List result = session.createQuery(hql, Product.class).getResultList();
		return result;
	}

	public List<Product> search(String name) {

		Session session = sessionFactory.openSession();

		Query query = session.createQuery("from Product where lower(name) like lower(:name)");

		query.setParameter("name", "%" + name.toLowerCase() + "%");

		return query.getResultList();

	}
	
	@Override
	public List<Product> getProductsByCategory(Integer categoryId) {
		Session session = sessionFactory.openSession();
		session.beginTransaction();
		String hql = "FROM Product WHERE category.id = :categoryId";
		var query = session.createQuery(hql, Product.class);
		query.setParameter("categoryId", categoryId);
        return query.getResultList();
    }
	

	@Override
	public void insert(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.save(product);
		session.getTransaction().commit();
	}

	@Override
	public void update(Product product) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		session.update(product);
		session.getTransaction().commit();
	}

	@Override
	public void delete(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		var prod = session.get(Product.class, id);
		session.remove(prod);
		session.getTransaction().commit();
	}
	
	@Override
	public Product getById(Integer id) {
		Session session = sessionFactory.getCurrentSession();
		session.beginTransaction();
		Product prod = session.get(Product.class, id);
		session.getTransaction().commit();
		return prod;
	}

}
