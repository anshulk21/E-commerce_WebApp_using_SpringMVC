package com.newexercise.service.impl;

import com.newexercise.dao.CustomerOrderDao;
import com.newexercise.model.Cart;
import com.newexercise.model.CartItem;
import com.newexercise.model.CustomerOrder;
import com.newexercise.service.CartService;
import com.newexercise.service.CustomerOrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class CustomerOrderServiceImpl implements CustomerOrderService {

    @Autowired
    private CustomerOrderDao customerOrderDao;

    @Autowired
    private CartService cartService;

    @Override
    public void addCustomerOrder(CustomerOrder customerOrder) {

        customerOrderDao.addCustomerOrder(customerOrder);

    }

    @Override
    public double customerOrderGrandTotal(int cartId) {
        double grandTotal=0;
        Cart cart=cartService.getCartById(cartId);
        List<CartItem> cartItems=cart.getCartItems();

        for(CartItem item :cartItems){
            grandTotal += item.getTotalPrice();
        }

        return grandTotal;
    }
}
