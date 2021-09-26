package com.spring.action;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.bean.CartBean;
import com.bean.Customer;
import com.ret.dbconnection.Dbconection;

@Controller
public class CartAction {

	@RequestMapping(value = "/cart")
	public String execute(HttpSession session, @ModelAttribute("cart") CartBean cart)

	{
		List<CartBean> lcart1 = new ArrayList<CartBean>();
		int count = 0;
		int t1, t, t2, t3;
		System.out.println(cart.getPrice());
		System.out.println(cart.getDiscount());
		if (session.getAttribute("cartObj") == null) {
			System.out.println("quantity");
			System.out.println(cart.getQuantity());
			int q = cart.getQuantity();
			System.out.println("1");
			t2 = cart.getPrice();
			System.out.println("2");
			if (!(cart.getDiscount() == 0)) {

				t3 = cart.getDiscount();
				t2 = t2 - (t2 * t3 / 100);

			}
			cart.setCount(1);
			cart.setPrice(t2);
			cart.setTotal(t2);
			session.setAttribute("cartPrice", t2);
			lcart1.add(cart);
			session.setAttribute("cartLength", lcart1.size());
			session.setAttribute("cartObj", lcart1);
		} else {
			int flag = 0;
			lcart1 = (List<CartBean>) session.getAttribute("cartObj");
			for (int i = 0; i < lcart1.size(); i++) {
				if (cart.getId() == ((int) lcart1.get(i).getId())) {
					System.out.println("id check");

					flag = 1;
				} else {
				}
			}
			if (flag == 0) {
				cart.setCount(1);
				t2 = cart.getPrice();
				if (!(cart.getDiscount() == 0)) {
					t3 = (cart.getDiscount());
					t2 = t2 - (t2 * t3 / 100);
				}
				cart.setPrice(t2);
				cart.setTotal(t2);
				t1 = (int) session.getAttribute("cartPrice");

				t = t1 + t2;
				// System.out.println(t);
				session.setAttribute("cartPrice", t);

				lcart1.add(cart);
				session.setAttribute("cartLength", lcart1.size());
			}
			session.setAttribute("cartObj", lcart1);
		}
		return "NewFile";
	}

	@RequestMapping(value = "/Showcart")
	public ModelAndView showcart(HttpSession session) {
		System.out.println("into show cart");
		ModelAndView model = new ModelAndView("customer/shopingCart");
		String id;
		List<CartBean> cartShowL = new ArrayList<CartBean>();

		List<CartBean> cartObj = new ArrayList<CartBean>();
		Connection con;

		// int a[]=null;
		// List lcarts = new ArrayList();
		if (session.getAttribute("cartObj") != null) {
			cartObj = (List) session.getAttribute("cartObj");

			for (int i = 0; i < cartObj.size(); i++) {
				CartBean p = new CartBean();
				p.setId(cartObj.get(i).getId());

				p.setName(cartObj.get(i).getName());
				System.out.println(cartObj.get(i).getPrice());
				p.setCount(cartObj.get(i).getCount());
				p.setPrice(cartObj.get(i).getPrice());
				p.setQuantity(cartObj.get(i).getQuantity());
				p.setImg_path(cartObj.get(i).getImg_path());
				p.setTotal(cartObj.get(i).getTotal());
				cartShowL.add(p);
			}
		}
		model.addObject("cartShowL", cartShowL);
		return model;

	}

	@RequestMapping(value = "/addQuantity")
	public ModelAndView cartUpdate(HttpSession session, @ModelAttribute("cart") CartBean cart) {

		List<CartBean> lcart1 = new ArrayList<CartBean>();

		lcart1 = (List<CartBean>) session.getAttribute("cartObj");
		for (int i = 0; i < lcart1.size(); i++) {
			if (cart.getId() == lcart1.get(i).getId()) {
				if ((((lcart1.get(i))).getCount()) < ((lcart1.get(i).getQuantity()))) {
					System.out.println("addddddddddddddddddddddddddddd");
					lcart1.get(i).setCount(((lcart1.get(i))).getCount() + 1);
					int price = (Integer) (((lcart1.get(i))).getPrice());
					int total = (Integer) (((lcart1.get(i))).getTotal());
					total = total + price;
					lcart1.get(i).setTotal(total);

					int newFtotal = (Integer) session.getAttribute("cartPrice");
					newFtotal = newFtotal + price;
					session.setAttribute("cartPrice", newFtotal);
				}
			}
		}
		ModelAndView model = new ModelAndView("redirect:/Showcart");
		return model;
	}

	@RequestMapping(value = "/minusQuantity")
	public ModelAndView remove(@ModelAttribute("cart") CartBean cart, HttpSession session) {
		ModelAndView model = new ModelAndView("redirect:/Showcart");
		List<CartBean> cartObj = new ArrayList<CartBean>();
		cartObj = (List) session.getAttribute("cartObj");

		for (int i = 0; i < cartObj.size(); i++) {
			if (((int) cartObj.get(i).getId() == cart.getId())) {
				System.out.println("aaa");
				if (((cartObj.get(i))).getCount() > 1) {
					cartObj.get(i).setCount(((cartObj.get(i))).getCount() - 1);
					int price = (Integer) (((cartObj.get(i))).getPrice());
					int total = (Integer) (((cartObj.get(i))).getTotal());

					total = total - price;
					cartObj.get(i).setTotal(total);
					int newFtotal = (Integer) session.getAttribute("cartPrice");
					newFtotal = newFtotal - price;
					session.setAttribute("cartPrice", newFtotal);
				}
			}
		}
		return model;
	}

	@RequestMapping(value = "/CartRemove")
	public ModelAndView cartRemove(HttpSession session, @ModelAttribute("cart") CartBean cart) {
		int t = 0;
		int t2;
		String total = null;
		List<CartBean> lcart1 = new ArrayList<CartBean>();
		System.out.println("ssss1");
		lcart1 = (List) session.getAttribute("cartObj");

		for (int i = 0; i < lcart1.size(); i++) {

			if (cart.getId() == (int) lcart1.get(i).getId()) {
				System.out.println("ssss2");
				lcart1.remove(i);
			}

		}

		t2 = cart.getTotal();
		t = (Integer) session.getAttribute("cartPrice");

		session.setAttribute("cartPrice", t - t2);
		session.setAttribute("cartObj", lcart1);
		session.setAttribute("cartLength", lcart1.size());

		if (lcart1.size() == 0) {
			session.removeAttribute("cartPrice");
			session.removeAttribute("cartObj");
			session.removeAttribute("cartLength");
		}
		ModelAndView model = new ModelAndView("redirect:/Showcart");
		return model;
	}

}
