package com.newexercise.controller.admin;

import com.newexercise.dao.ProductDao;
import com.newexercise.model.Customer;
import com.newexercise.model.Product;
import com.newexercise.service.CustomerService;
import com.newexercise.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.stereotype.Controller;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.List;

@Controller
@RequestMapping("/admin")
public class AdminHome {

    private Path path;

    @Autowired
    private ProductService productService;

    @Autowired
    private CustomerService customerService;

    @RequestMapping
    public String admin(){
        return "admin";
    }
    
    @RequestMapping("/productInventory")
    public String productInventory(Model model) {
        List<Product> products = this.productService.getAllProducts();
        model.addAttribute("products", products);

        return "productInventory";
    }

    @RequestMapping("/customer")
    public String customerManagement(Model model){

        List<Customer> customerList = customerService.getAllCustomers();
        model.addAttribute("customerList", customerList);

        return "customerManagement";
    }


}
