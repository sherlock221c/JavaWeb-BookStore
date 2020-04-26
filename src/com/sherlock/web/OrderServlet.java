package com.sherlock.web;

import com.sherlock.pojo.Cart;
import com.sherlock.pojo.User;
import com.sherlock.service.OrderService;
import com.sherlock.service.impl.OrderServiceImpl;
import com.sherlock.utils.JdbcUtils;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

@WebServlet(name = "OrderServlet", urlPatterns = "/orderServlet")
public class OrderServlet extends BaseServlet {

    private OrderService orderService = new OrderServiceImpl();

    protected void createOrder(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        Cart cart = (Cart)request.getSession().getAttribute("cart");
        User user = (User)request.getSession().getAttribute("user");

        if (user == null){
            request.getRequestDispatcher("/pages/user/login.jsp").forward(request, response);
            return;
        }

        Integer id = user.getId();
        String orderId = null;
        orderId  = orderService.createOrder(cart, id);

        request.getSession().setAttribute("orderId", orderId);
        response.sendRedirect(request.getContextPath()+"/pages/cart/checkout.jsp");
    }
}
