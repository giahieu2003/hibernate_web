package controllers;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CartDAOImpl;
import dao.ProductDAOImpl;
import entities.CartItem;
import entities.Product;
import entities.User;

@Controller
public class CartController {
	@Autowired
    private CartDAOImpl cartDAO;
	
	@Autowired
    private ProductDAOImpl productDAO;
	
	@RequestMapping(value = "/cart", method = RequestMethod.GET)
	public String viewCart(Model model, HttpSession session) {
        List<CartItem> cartItems = cartDAO.getCartItems();
        double subtotal = cartItems.stream()
                .mapToDouble(item -> item.getProduct().getPrice() * item.getQuantity())
                .sum();
        double total = subtotal;
        model.addAttribute("cartItems", cartItems);
        model.addAttribute("cartItemCount", cartItems.size());
        model.addAttribute("subtotal", subtotal);
        model.addAttribute("total", total);
        return "user/cart";
    }
	
	@RequestMapping(value = "/cart/add", method = RequestMethod.POST)
	public String addToCart(@RequestParam("productId") Integer productId, @RequestParam("quantity") Integer quantity, HttpSession session, Model model) {
		User user = (User) session.getAttribute("loggedInUser");
		if (session.getAttribute("loggedInUser") == null) {
            model.addAttribute("loginError", "You need to log in to add items to the cart.");
            return "redirect:/login"; // or display an error message
        }
		
        Product product = productDAO.getById(productId);
        if (product != null) {
            cartDAO.addToCart(product, quantity, user);
        }
        return "redirect:/cart";
    }
	
	@RequestMapping(value = "/cart/update", method = RequestMethod.POST)
	public String updateCart(@RequestParam Map<String, String> allParams) {
		/*
		 * cartDAO.updateCartItem(cartItemId, quantity); return "redirect:/cart";
		 */
		for (Map.Entry<String, String> entry : allParams.entrySet()) {
	        String key = entry.getKey();
	        String value = entry.getValue();

	        if (key.startsWith("quantities[")) {
	            // Extract cart item ID from key
	            int cartItemId = Integer.parseInt(key.substring("quantities[".length(), key.length() - 1));
	            int quantity = Integer.parseInt(value);

	            if (quantity > 0) {
	                cartDAO.updateCartItem(cartItemId, quantity);
	            } else {
	                // Handle invalid quantity (optional)
	            }
	        }
	    }

	    return "redirect:/cart";
    }
	
	@RequestMapping(value = "/cart/remove", method = RequestMethod.POST)
	public String removeCartItem(@RequestParam("cartItemId") Integer cartItemId) {
        cartDAO.removeCartItem(cartItemId);
        return "redirect:/cart";
    }
}
