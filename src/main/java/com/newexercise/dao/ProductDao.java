package com.newexercise.dao;


import com.newexercise.model.Product;
import org.springframework.stereotype.Repository;

import java.util.List;



public interface ProductDao {

    List<Product> getProductsList();
    void deleteProduct(Product product);
    void addProduct(Product product);
    Product getProductById(int productId);
    void editProduct(Product product);
}