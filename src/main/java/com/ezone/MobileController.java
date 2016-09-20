package com.ezone;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.web.authentication.logout.SecurityContextLogoutHandler;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.ezone.dao.EzoneHelper;
import com.ezone.pojo.Category;
import com.ezone.pojo.Item;
import com.ezone.pojo.Product;
import com.ezone.service.MobilesServiceImpl;

@Controller
public class MobileController {
	
	private MobilesServiceImpl mobilesservice =  new MobilesServiceImpl();

		@RequestMapping(value={"/Welcome"}, method = RequestMethod.POST)
		public  String welcomePage(ModelMap model, HttpServletRequest req) {
			model.addAttribute("event","Logout");
			//displayHomePage(model, req);
			return "index1";
		}
		@RequestMapping(value={"/Welcome"}, method = RequestMethod.GET)
		public  String welcome(ModelMap model, HttpServletRequest req) {
			model.addAttribute("event","Logout");
			//displayHomePage(model, req);
			return "index1";
		}
		
		@RequestMapping(value={"/"}, method = RequestMethod.GET)
		public  String index(ModelMap model, HttpServletRequest req) {
			model.addAttribute("event","Logout");
			//displayHomePage(model, req);
			return "index1";
		}
		
		@RequestMapping(value={"/register"}, method = RequestMethod.GET)
		public  String registerPage(ModelMap model, HttpServletRequest req) {
			model.addAttribute("event","Logout");
			//displayHomePage(model, req);
			return "register";
		}

	@RequestMapping(value={"/electronics/*/**","/electronics"}, method = RequestMethod.GET)
	public String adminPage(ModelMap model, HttpServletRequest req) {
		
		
		String 	username = SecurityContextHolder.getContext().getAuthentication().getName();
		if(username!=null && username.equalsIgnoreCase("anonymousUser")){
			model.addAttribute("event","Login");
		}else{
			model.addAttribute("username", username);
			model.addAttribute("event","Logout");
		}
		displayHomePage(model, req);
		return "index1";
	}

	private void displayHomePage(ModelMap model, HttpServletRequest req) {
		model.addAttribute("user", getPrincipal());

		System.out.println("request URI ::" + req.getRequestURL());
		System.out.println("request URL ::" + req.getRequestURI());
		System.out.println("mobilesservice::" + mobilesservice);
		ArrayList<String> urlList = extractUrlParams(req);

		String url = req.getRequestURI().substring(req.getContextPath().length()+1);

		model.addAttribute("url", url);
		
		
		// model.addAttribute("productList", productList);

		String category1 = url.substring(0);

		Item itemSubCategory = EzoneHelper.getSubCategory(category1);
		if (itemSubCategory != null) {
			if (itemSubCategory.getSubCategoryList().size() > 0) {
				model.addAttribute("categoryList", itemSubCategory.getSubCategoryList());
				model.addAttribute("brandNames", itemSubCategory.getSubCategoryList().get(0).getBrandNames());
				model.addAttribute("title", itemSubCategory.getTitle());
			}
		}
		ArrayList<Product> electronicsList = new ArrayList<Product>();
		for (Category category : itemSubCategory.getSubCategoryList()) {
			mobilesservice.setCategory(category.getName());
			List<Product> mobilesAccessoriesList = null;
			if (category.getNodeId() != null) {
				mobilesAccessoriesList = mobilesservice.getProductsByCategoryName(category.getNodeId());
			} else {
				mobilesAccessoriesList = mobilesservice.geMobilesProductItems();
			}
			if (mobilesAccessoriesList != null) {
				electronicsList.addAll(mobilesAccessoriesList);
			}
		}
		if (!electronicsList.isEmpty()) {
			Set<Product> productset = new HashSet<Product>(electronicsList);
			ArrayList<Product> randomList = new ArrayList<Product>(productset);
			if (randomList.size() > 201) {
				model.addAttribute("productList", randomList.subList(0, 200));
			} else {
				model.addAttribute("productList", randomList);
			}
		}

		// model.addAttribute("productList", productList);
		model.addAttribute("urlList", urlList);
	}

	/*@RequestMapping(value={"/login"}, method = RequestMethod.GET)
	public String loginPage(ModelMap model, HttpServletRequest req) {
		model.addAttribute("user", getPrincipal());

		System.out.println("request URI ::" + req.getRequestURL());
		System.out.println("request URL ::" + req.getRequestURI());

		String url = req.getRequestURI().substring(req.getContextPath().length()+1);

		model.addAttribute("url", url);
		return "loginnew";
	}*/
	
		@RequestMapping(value = "/login", method = RequestMethod.GET)
		public ModelAndView login(
			@RequestParam(value = "error", required = false) String error,
			@RequestParam(value = "logout", required = false) String logout) {

			ModelAndView model = new ModelAndView();
			if (error != null) {
				model.addObject("error", "Invalid username and password!");
			}

			if (logout != null) {
				model.addObject("msg", "You've been logged out successfully.");
			}
			model.setViewName("loginnew");

			return model;

		}

	private ArrayList<String> extractUrlParams(HttpServletRequest req) {
		String[] urlList = req.getRequestURI().substring(req.getContextPath().length()+1).split("/");
		ArrayList<String> arrayList = new ArrayList<String>();
		for (String name : urlList) {
			if (name.trim().length() > 1) {
				String s1 = name.substring(0, 1).toUpperCase() + name.substring(1);
				arrayList.add(s1);
			}
		}
		return arrayList;
	}

	@RequestMapping(value = "/db", method = RequestMethod.GET)
	public String dbaPage(ModelMap model) {
		model.addAttribute("user", getPrincipal());
		return "dba";
	}

	@RequestMapping(value = "/Access_Denied", method = RequestMethod.GET)
	public String accessDeniedPage(ModelMap model) {
		model.addAttribute("user", getPrincipal());
		return "accessDenied";
	}

	@RequestMapping(value = "/logout", method = RequestMethod.GET)
	public String logoutPage(HttpServletRequest request, HttpServletResponse response) {
		Authentication auth = SecurityContextHolder.getContext().getAuthentication();
		if (auth != null) {
			new SecurityContextLogoutHandler().logout(request, response, auth);
		}
		return "redirect:/login?logout";
	}

	private String getPrincipal() {
		String userName = null;
		Object principal = SecurityContextHolder.getContext().getAuthentication().getPrincipal();

		if (principal instanceof UserDetails) {
			userName = ((UserDetails) principal).getUsername();
		} else {
			userName = principal.toString();
		}
		return userName;
	}

}