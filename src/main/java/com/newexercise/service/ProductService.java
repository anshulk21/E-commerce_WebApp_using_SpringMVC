package com.newexercise.service;


import com.newexercise.model.Product;


import java.util.List;


public interface ProductService {

    List<Product> getAllProducts();
    void deleteProduct(Product product);
    void addProduct(Product product);
    Product getProductById(int productId);
    void editProduct(Product product);

}
