package com.newexercise.service;

import com.newexercise.model.Cart;
import com.newexercise.model.CartItem;


public interface CartItemService {

   void addCartItem(CartItem cartItem);

   void removeCartItem(CartItem cartItem);

   void removeAllCartItems(Cart cart);

   CartItem getCartItemByProductId(int productId);

}
