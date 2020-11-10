package com.newexercise.service.impl;


import com.newexercise.dao.ProductDao;
import com.newexercise.model.Product;
import com.newexercise.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductServiceImpl implements ProductService {

    @Autowired
    private ProductDao productDao;

    @Override
    public List<Product> getAllProducts(){
        return productDao.getProductsList();
    }

    @Override
    public Product getProductById(int productId) {
        return productDao.getProductById(productId);
    }

    @Override
    public void addProduct(Product product) {
        productDao.addProduct(product);
    }

    @Override
    public void editProduct(Product product) {
        productDao.editProduct(product);
    }
    @Override
    public void deleteProduct(Product product) {
        productDao.deleteProduct(product);
    }
}
