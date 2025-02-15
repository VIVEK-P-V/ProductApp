package productapp;

import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.view.RedirectView;
import productapp.dao.ProductDao;
import productapp.model.Product;

@Controller
public class ProductController {
	ProductDao dao = new ProductDao();

	@RequestMapping("/")
	public String home(Model model) {
		List<Product> products = dao.getAllProducts();
		model.addAttribute("title", "Home page");
		model.addAttribute("products", products);
		return "index";
	}

	@RequestMapping("/addproduct")
	public String addprduct(Model model) {
		model.addAttribute("title", "Add Product");
		return "addproduct";
	}

	@RequestMapping(value = "/handle", method = RequestMethod.POST)
	public RedirectView handleProduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		dao.saveProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}

	@RequestMapping("/update/{productid}")
	public String updateForm(@PathVariable("productid") int id, Model model) {
		Product product = dao.getProductById(id);
		model.addAttribute("products", product);
		return "update";
	}

	@RequestMapping(value = "/form", method = RequestMethod.POST)
	public RedirectView updateProduct(@ModelAttribute Product product, HttpServletRequest request) {
		System.out.println(product);
		dao.updateProduct(product);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
	
	@RequestMapping("delete/{productid}")
	public RedirectView deleteForm(@PathVariable("productid") int id, HttpServletRequest request) {
		dao.deleteProduct(id);
		RedirectView redirectView = new RedirectView();
		redirectView.setUrl(request.getContextPath() + "/");
		return redirectView;
	}
}
