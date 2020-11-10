package com.newexercise.service;

import com.newexercise.model.Cart;

public interface CartService {

    Cart getCartById(int cartId);

    void update(Cart cart);
}
