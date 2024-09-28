package dao;

import java.util.List;

import javax.persistence.Query;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import entities.CartItem;
import entities.Product;
import entities.User;

@Repository
public class CartDAOImpl implements CartDAO{
	
	@Autowired
    private SessionFactory sessionFactory;
	

	@Override
	public List<CartItem> getCartItems() {
		Session session = sessionFactory.openSession();
        String hql = "FROM CartItem";
        Query query = session.createQuery(hql, CartItem.class);
        List<CartItem> cartItems = query.getResultList();
        session.close();
        return cartItems;
	}

	@Override
	public void addToCart(Product product, Integer quantity, User user) {
		Session session = sessionFactory.openSession();
        session.beginTransaction();

        CartItem cartItem = findByProduct(product.getId());
        if (cartItem == null) {
            cartItem = new CartItem();
            cartItem.setProduct(product);
            cartItem.setQuantity(quantity);
            cartItem.setUser(user);
            session.save(cartItem);
        } else {
            cartItem.setQuantity(cartItem.getQuantity() + quantity);
            session.update(cartItem);
        }

        session.getTransaction().commit();
        session.close();
	}

	@Override
	public void updateCartItem(Integer cartItemId, Integer quantity) {
		Session session = sessionFactory.openSession();
        session.beginTransaction();

        CartItem cartItem = session.get(CartItem.class, cartItemId);
        if (cartItem != null) {
            cartItem.setQuantity(quantity);
            session.update(cartItem);
        }

        session.getTransaction().commit();
        session.close();
		
	}

	@Override
	public void removeCartItem(Integer cartItemId) {
		Session session = sessionFactory.openSession();
        session.beginTransaction();

        CartItem cartItem = session.get(CartItem.class, cartItemId);
        if (cartItem != null) {
            session.delete(cartItem);
        }

        session.getTransaction().commit();
        session.close();
	}
	
	private CartItem findByProduct(int productId) {
        Session session = sessionFactory.openSession();
        String hql = "FROM CartItem WHERE product.id = :productId";
        Query query = session.createQuery(hql, CartItem.class);
        query.setParameter("productId", productId);
        List<CartItem> result = query.getResultList();
        session.close();
        return result.isEmpty() ? null : result.get(0);
    }

	@Override
	public List<CartItem> getCartItemsByUserId(Integer userId) {
		Session session = sessionFactory.openSession();
		String hql = "SELECT ci FROM CartItem ci WHERE ci.user.id = :userId";
		Query query = session.createQuery(hql, CartItem.class);
		query.setParameter("userId", userId);
		List<CartItem> result = query.getResultList();
		return result;
	}

}
