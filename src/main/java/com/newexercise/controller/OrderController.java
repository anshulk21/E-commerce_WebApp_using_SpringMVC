package com.newexercise.controller;


import com.newexercise.model.Cart;
import com.newexercise.model.Customer;
import com.newexercise.model.CustomerOrder;
import com.newexercise.service.CartService;
import com.newexercise.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.*;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class OrderController {

    @Autowired
    private CartService cartService;

    @Autowired
    private CustomerOrderService customerOrderService;

    @RequestMapping("/order/{cartId}")
    public String getOrder(@PathVariable (value = "cartId") int cartId){

        Cart cart=cartService.getCartById(cartId);
        Customer customer=cart.getCustomer();

        CustomerOrder customerOrder=new CustomerOrder();
        customerOrder.setCart(cart);
        customerOrder.setCustomer(customer);
        customerOrder.setBillingAddress(customer.getBillingAddress());
        customerOrder.setShippingAddress(customer.getShippingAddress());

        customerOrderService.addCustomerOrder(customerOrder);

        return "redirect:/checkout?cartId="+cartId;
    }
}
