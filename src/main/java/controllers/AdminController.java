package controllers;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import dao.AccountDAO;
import dao.CategoryDAO;
import dao.ProductDAO;
import entities.Account;
import entities.CartItem;
import entities.Product;

@Controller
public class AdminController {
	@Autowired

	private ProductDAO productDAO;
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	@Autowired
	private AccountDAO accountDAO;
	
	private boolean isLoggedIn(HttpSession session) {
        return session.getAttribute("loggedInAccount") != null;
    }
	

	@RequestMapping(value = {"/admin", "/products"} , method = RequestMethod.GET)

	public String index(HttpSession session, Model model) {
		if (!isLoggedIn(session)) {
	            return "redirect:/loginAdmin?accessDenied=false";
	    }
		
		model.addAttribute("products", productDAO.getall());

		return "admin/index";
	}
	
	
	@RequestMapping(value = "addproduct", method = RequestMethod.GET)

	public String create(Model model) {

		var product = new Product();

		model.addAttribute("product", product);
		
		var category = categoryDAO.getall();
		
        model.addAttribute("category", category);

		return "admin/create";

	}

	@RequestMapping(value = "save", method = RequestMethod.POST)

	public String save(@ModelAttribute("product") Product product, @RequestParam("file") MultipartFile file ,Model model, HttpServletRequest req) {
		if (file != null && !file.isEmpty()) {
			String uploadRootPath = req.getServletContext().getRealPath("images");
			File destination = new File(uploadRootPath + "/" + file.getOriginalFilename());
			try {
				file.transferTo(destination);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			product.setImage(file.getOriginalFilename());
		}
		try {

			productDAO.insert(product);

		} catch (Exception ex) {

			model.addAttribute("error", ex.getMessage());

			model.addAttribute("product", product);

			return "admin/create";

		}
		return "redirect:/products";
	}

	@RequestMapping(value = "edit", method = RequestMethod.GET)

	public String edit(@RequestParam("id") Integer id, Model model) {

		var product = productDAO.getById(id);

		model.addAttribute("product", product);
		
		var category = categoryDAO.getall();
		
	    model.addAttribute("category", category);

		return "admin/edit";

	}

	@RequestMapping(value = "update", method = RequestMethod.POST)

	public String update(@ModelAttribute("product") Product product, String imageOld, @RequestParam("file") MultipartFile file, Model model, HttpServletRequest req) {
		
		System.out.println("Product to update: " + product);
	    System.out.println("Old image: " + imageOld);
	    System.out.println("Uploaded file: " + (file != null ? file.getOriginalFilename() : "No file"));
		
		if (file != null && !file.isEmpty()) {
			String uploadRootPath = req.getServletContext().getRealPath("images");
			File destination = new File(uploadRootPath + "/" + file.getOriginalFilename());
			try {
				file.transferTo(destination);
			} catch (IllegalStateException | IOException e) {
				e.printStackTrace();
			}
			product.setImage(file.getOriginalFilename());
		}else
		{
			product.setImage(imageOld);
		}
		try {

			productDAO.update(product);

		} catch (Exception ex) {

			model.addAttribute("error", ex.getMessage());

			model.addAttribute("product", product);

			return "admin/edit";

		}

		return "redirect:/products";

	}
	@RequestMapping(value= "search",method = RequestMethod.POST)

	public String update(String searchname, Model model) {

	model.addAttribute("products",productDAO.search(searchname));

	return "admin/index";

	}
	@RequestMapping(value= "delete",method = RequestMethod.GET)

	public String delete(@RequestParam("id") Integer id) {

	productDAO.delete(id);

	return "redirect:/products";

	}
	
	@RequestMapping(value = "/loginAdmin", method = RequestMethod.GET)
	public String loginAdmin(Model model) {
		return "/admin/loginAdmin";
	}
	
	@RequestMapping(value = "/loginAdmin", method = RequestMethod.POST)
    public String loginAdmin(@RequestParam("accountname") String accountname, 
                        @RequestParam("password") String password, 
                        HttpSession session, Model model) {

        Account account = accountDAO.findByAccountname(accountname);
        if (account != null && password.equals(account.getPassword())) {
            session.setAttribute("loggedInAccount", account);
            session.setAttribute("accountid", account.getId());
            session.setAttribute("accountname", account.getAccountname());
            
            return "redirect:/admin?loginSuccess=true";
        } else {
            model.addAttribute("loginError", "Invalid credentials");
            return "redirect:/loginAdmin?loginError=Invalid credentials";
        }
    }
	
	@RequestMapping(value = "/logoutAdmin", method = RequestMethod.GET)
    public String logoutAdmin(HttpSession session) {
        // Invalidate the session
        session.invalidate();
        // Redirect to the home page
        return "redirect:/loginAdmin?logoutSuccess=true";
    }
}
