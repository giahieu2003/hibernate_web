package controllers;

import java.util.List;
import java.util.Map;
import java.util.stream.Collectors;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import dao.CartDAO;
import dao.CategoryDAO;
import dao.ProductDAO;
import dao.UserDAO;
import entities.CartItem;
//import entities.Category;
//import entities.Product;
import entities.Category;
import entities.Product;
import entities.User;

@Controller
public class HomeController {
	 @Autowired
	    private CategoryDAO categoryDAO;

	    @Autowired
	    private ProductDAO productDAO;
	    
	    @Autowired
	    private CartDAO cartDAO;
	    
	    @Autowired
	    private UserDAO userDAO;

	    private BCryptPasswordEncoder passwordEncoder = new BCryptPasswordEncoder();

	    @RequestMapping(value ={"/"}, method = RequestMethod.GET)
	    public String homePage(Model model) {
	        // Fetch categories and products
	        List<Category> categories = categoryDAO.getall();
	        List<Product> products = productDAO.getall();
	        List<CartItem> cartItems = cartDAO.getCartItems();
	        
	        double subtotal = cartItems.stream()
	                .mapToDouble(item -> item.getProduct().getPrice() * item.getQuantity())
	                .sum();
	        model.addAttribute("subtotal", subtotal);

	        model.addAttribute("categories", categories);
	        model.addAttribute("products", products);
	        model.addAttribute("cartItemCount", cartItems.size());
	        model.addAttribute("cartItems", cartItems);
	        
	        String registerSuccess = model.getAttribute("registerSuccess") != null ? model.getAttribute("registerSuccess").toString() : "";
	        String loginSuccess = model.getAttribute("loginSuccess") != null ? model.getAttribute("loginSuccess").toString() : "";
	        String registerError = model.getAttribute("registerError") != null ? model.getAttribute("registerError").toString() : "";
	        String loginError = model.getAttribute("loginError") != null ? model.getAttribute("loginError").toString() : "";
	        
	        model.addAttribute("registerSuccess", registerSuccess);
	        model.addAttribute("loginSuccess", loginSuccess);
	        model.addAttribute("registerError", registerError);
	        model.addAttribute("loginError", loginError);
	        
	        // Return view name
	        return "/user/home"; // This corresponds to /WEB-INF/views/home.jsp
	    }
	    
	    @RequestMapping(value = "/about")
	    public String about(Model model) {
	    	return "/user/page/about";
	    }
	    
	    @RequestMapping(value = "/contact")
	    public String contact(Model model) {
	    	return "/user/page/contact";
	    }
	    
	    @RequestMapping(value = "/login", method = RequestMethod.GET)
		public String login(Model model) {
	    	return "/user/login";
		}
	    
	    @RequestMapping(value = "/register", method = RequestMethod.GET)
		public String register(Model model) {
	    	return "/user/register";
		}
	    
	    @RequestMapping(value = "/register", method = RequestMethod.POST)
	    public String register(@RequestParam("username") String username, 
	                           @RequestParam("email") String email, 
	                           @RequestParam("password") String password, Model model) {

	        // Check if user already exists
	        if (userDAO.findByUsername(username) != null) {
	            model.addAttribute("registerError", "Username already exists");
	            return "redirect:/register?registerError=Username already exists";
	        }

	        // Encrypt password
	        String encryptedPassword = passwordEncoder.encode(password);

	        // Save user
	        User user = new User(username, email, encryptedPassword);
	        userDAO.register(user);

	        return "redirect:/login?registerSuccess=true";
	    }
	    
	    @RequestMapping(value = "/login", method = RequestMethod.POST)
	    public String login(@RequestParam("username") String username, 
	                        @RequestParam("password") String password, 
	                        HttpSession session, Model model) {

	        User user = userDAO.findByUsername(username);
	        if (user != null && passwordEncoder.matches(password, user.getPassword())) {
	            session.setAttribute("loggedInUser", user);
	            session.setAttribute("userid", user.getId());
	            session.setAttribute("username", user.getUsername());
	            
	            List<CartItem> cartItems = cartDAO.getCartItemsByUserId(user.getId());
	            session.setAttribute("cartItems", cartItems);
	            
	            return "redirect:/?loginSuccess=true";
	        } else {
	            model.addAttribute("loginError", "Invalid credentials");
	            return "redirect:/login?loginError=Invalid credentials";
	        }
	    }
	    
	    @RequestMapping(value = "/logout", method = RequestMethod.GET)
	    public String logout(HttpSession session) {
	        // Invalidate the session
	        session.invalidate();
	        // Redirect to the home page
	        return "redirect:/?logoutSuccess=true";
	    }
	    
}
