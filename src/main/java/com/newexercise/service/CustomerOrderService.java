package com.newexercise.service;

import com.newexercise.model.CustomerOrder;

public interface CustomerOrderService {

    void addCustomerOrder(CustomerOrder customerOrder);

    double customerOrderGrandTotal(int cartId);

}
