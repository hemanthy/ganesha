package com.ezone;

import java.util.ArrayList;
import java.util.Arrays;
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

import com.ezone.constants.ConstantsTables;
import com.ezone.constants.ConstantsUrl;
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
		
		@RequestMapping(value={"/productinfo"}, method = RequestMethod.GET)
		public  String getProductInfo(ModelMap model, HttpServletRequest req) {
			model.addAttribute("event","Logout");
			//displayHomePage(model, req);
			return "single";
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

		@RequestMapping(value={"/redirecturl"}, method = RequestMethod.GET)
		public  String redirecturl(ModelMap model, HttpServletRequest req) {
			String redirectUrl = req.getParameter("url");
			model.addAttribute("redirectUrl",redirectUrl);
			return "redirecturl";
		}
		
	@RequestMapping(value={"/mobiles/*/**","/mobiles"}, method = RequestMethod.GET)
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
		
		ArrayList<Product> electronicsList = new ArrayList<Product>();
		
		
		//get sub-nodes list
		/*if(category1.equals("electronics")){
			model.addAttribute("categoryList", ConstantsUrl.electronics);
		}else*/ 
		if(category1.equals("mobile-accessories")){
			model.addAttribute("categoryList", ConstantsUrl.electronicsslashmobile_accessories);
		}else if(category1.equals("mobiles")){
			model.addAttribute("categoryList", ConstantsUrl.electronicsslashmobiles);
			mobilesservice.setCategory("mobiles");
		}
		
		
		
		if(category1.contains("mobiles")){
			mobilesservice.setCategory("mobiles");
		}else if(category1.contains("mobile_accessories/")){
			mobilesservice.setCategory("mobile_accessories");
		}
		
		
		if(category1.equals("mobiles")){
				//	mobilesservice.setCategory(category);
					List<Product> productItemsByPagination = mobilesservice.getProductItemsByPagination(0, 20);
					electronicsList.addAll(productItemsByPagination);
					model.addAttribute("brandNames",  Arrays.asList("Samsung", "Micromax", "Motorola","Sony"));
		}
		
		if(ConstantsTables.electronicsslashmobile_accessories.equals(ConstantsTables.parentnode) && category1.endsWith("mobile-accessories")){
					mobilesservice.setCategory("mobile-accessories");
					List<Product> productItemsByPagination = mobilesservice.getProductItemsByPagination(0, 10);
					electronicsList.addAll(productItemsByPagination);
		}
		
		if(category1.endsWith("cases-and-covers")){
			List<Product> productsByCategoryName = mobilesservice.getProductsByCategoryName("Cases & Covers",0, 10);
			electronicsList.addAll(productsByCategoryName);
			model.addAttribute("title", "Cases & Covers");
		}
		
		if(category1.endsWith("mobile-charges")){
			List<Product> productsByCategoryName = mobilesservice.getProductsByCategoryName("Wall Chargers",0, 10);
			electronicsList.addAll(productsByCategoryName);
			model.addAttribute("title", "Wall Chargers");
		}
		
		if(category1.endsWith("power-banks")){
			List<Product> productsByCategoryName = mobilesservice.getProductsByCategoryName("Power Banks",0, 10);
			electronicsList.addAll(productsByCategoryName);
			model.addAttribute("title", "Power Banks");
		}
		
		if(category1.endsWith("headphones")){
			List<Product> productsByCategoryName = mobilesservice.getProductsByCategoryName("Headsets",0, 10);
			electronicsList.addAll(productsByCategoryName);
			model.addAttribute("title", "Headsets");
		}
		
		if(category1.endsWith("screen-guards")){
			List<Product> productsByCategoryName = mobilesservice.getProductsByCategoryName("Screen Protectors",0, 10);
			electronicsList.addAll(productsByCategoryName);
			model.addAttribute("title", "Screen Protectors");
		}
		
		if(category1.endsWith("memory-cards")){
			List<Product> productsByCategoryName = mobilesservice.getProductsByCategoryName("Memory Cards",0, 10);
			electronicsList.addAll(productsByCategoryName);
			model.addAttribute("title", "Memory Cards");
		}
		
		
		if(category1.endsWith("screen-protectors")){
			List<Product> productsByCategoryName = mobilesservice.getProductsByCategoryName("Screen Protectors",0, 10);
			electronicsList.addAll(productsByCategoryName);
			model.addAttribute("title", "Screen Protectors");
		}
		

		
		/*Item itemSubCategory = EzoneHelper.getSubCategory(category1);
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
			if (category!=null && category.getIsLeafNode() !=null && !category.getIsLeafNode()) {
				mobilesAccessoriesList = mobilesservice.getProductsByCategoryName(category.getTitle(),0, 10);
			} else {
				mobilesAccessoriesList = mobilesservice.getProductItemsByPagination(0, 10);
			}
			if (mobilesAccessoriesList != null) {
				electronicsList.addAll(mobilesAccessoriesList);
			}
		}*/
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