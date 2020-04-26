package com.sherlock.service;

import com.sherlock.pojo.Cart;

public interface OrderService {

    public String createOrder(Cart cart, Integer userId);

}
