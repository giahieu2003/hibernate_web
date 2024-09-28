package controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CartDAO;
import dao.CategoryDAO;
import dao.ProductDAO;
import entities.CartItem;
import entities.Product;

@Controller
public class ProductController {
	
	@Autowired
    private CategoryDAO categoryDAO;

    @Autowired
    private ProductDAO productDAO;
    
    @Autowired
    private CartDAO cartDAO;
    
	@RequestMapping(value ={"/product"}, method = RequestMethod.GET)
    public String product(@RequestParam(name = "categoryId", required = false) Integer categoryId,
    		@RequestParam(name = "query", required = false) String query,
    		@RequestParam(name = "page", defaultValue = "1") Integer pageNumber,
            @RequestParam(name = "size", defaultValue = "10") Integer pageSize,Model model) {
		
		List<Product> products;
		List<CartItem> cartItems = cartDAO.getCartItems();
		double subtotal = cartItems.stream()
                .mapToDouble(item -> item.getProduct().getPrice() * item.getQuantity())
                .sum();
        model.addAttribute("subtotal", subtotal);
		
		model.addAttribute("categories", categoryDAO.getall());
		
		if (query != null && !query.trim().isEmpty()) {
            products = productDAO.search(query); // Search products by name
        } else if (categoryId != null) {
            products = productDAO.getProductsByCategory(categoryId);
        } else {
            products = productDAO.getall(); // Fetch all products if no category is specified
        }
        // Add attributes to the model
        
        model.addAttribute("products", products);
        model.addAttribute("productCount", products.size());
        model.addAttribute("cartItemCount", cartItems.size());
        model.addAttribute("cartItems", cartItems);

        // Return view name
        return "/user/product"; // This corresponds to /WEB-INF/views/home.jsp
    }
	
	
	@RequestMapping(value = "/productDetails/{id}")
    public String productDetails(@PathVariable("id") Integer id, Model model) {
		Product product = productDAO.getById(id);  // Fetch the product by ID
		List<CartItem> cartItems = cartDAO.getCartItems();
	    model.addAttribute("product", product);    // Add product to the model
	    model.addAttribute("products", productDAO.getall());
	    model.addAttribute("cartItemCount", cartItems.size());
        model.addAttribute("cartItems", cartItems);
    	return "/user/productDetails";
    }
	
}
