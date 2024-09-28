package dao;

import java.util.List;

import entities.CartItem;
import entities.Product;
import entities.User;

public interface CartDAO {
	List<CartItem> getCartItems();
	void addToCart(Product product, Integer quantity, User user);
	void updateCartItem(Integer cartItemId, Integer quantity);
	void removeCartItem(Integer cartItemId);
	List<CartItem> getCartItemsByUserId(Integer userId);
}
