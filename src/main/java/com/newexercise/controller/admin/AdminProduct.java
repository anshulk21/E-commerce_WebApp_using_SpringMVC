package com.newexercise.controller.admin;

import com.newexercise.model.Product;
import com.newexercise.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import java.io.File;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;

@Controller
@RequestMapping("/admin")
public class AdminProduct {

    private Path path;

    @Autowired
    private ProductService productService;

        @RequestMapping("/product/addProduct")
    public String addProductPage(Model model){
        Product product=new Product();
        product.setProductCondition("New");
        product.setProductStatus("Active");
        model.addAttribute(product);
        return "addProduct";
    }

    @RequestMapping(value = "/product/addProduct",method = RequestMethod.POST)
    public String addProduct(@Valid @ModelAttribute("product") Product product , BindingResult bindingResult, HttpServletRequest request){
        if(bindingResult.hasErrors()){
            return "addProduct";
        }

        productService.addProduct(product);
        MultipartFile productImage =product.getProductImage();
        String rootDirectory=request.getSession().getServletContext().getRealPath("/");
        path= Paths.get(rootDirectory+"\\WEB-INF\\resources\\images\\"+product.getProductId()+ ".png");
        if (productImage!=null&&!productImage.isEmpty()) {
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception e) {
                e.printStackTrace();
                throw new RuntimeException("Product Image saving is failed",e);
            }
        }
        return "redirect:/admin/productInventory";
    }

    @RequestMapping({"/product/deleteProduct/{id}"})
    public String viewProduct(@PathVariable int id, HttpServletRequest request) {
        String rootDirectory=request.getSession().getServletContext().getRealPath("/");
        path= Paths.get(rootDirectory+"\\WEB-INF\\resources\\images\\"+id+".png");
        if(Files.exists(path))
            try{
                Files.delete(path);
            }
            catch (Exception e){
                e.printStackTrace();
            }

            Product product=productService.getProductById(id);
        productService.deleteProduct(product);
        return "redirect:/admin/productInventory";
    }

    @RequestMapping("/product/editProduct/{id}")
    public String editProduct(@PathVariable("id") int id,  Model model){
        Product product = productService.getProductById(id);

        model.addAttribute("product", product);

        return "editProduct";
    }


    @RequestMapping(value="/product/editProduct", method = RequestMethod.POST)
    public String editProductPost(@Valid @ModelAttribute("product") Product product, BindingResult result, HttpServletRequest request){

        if(result.hasErrors()){
            return "editProduct";
        }


        MultipartFile productImage = product.getProductImage();
        String rootDirectory = request.getSession().getServletContext().getRealPath("/");
        path = Paths.get(rootDirectory + "\\WEB-INF\\resources\\images\\" + product.getProductId() + ".png");

        if(productImage != null && !productImage.isEmpty()){
            try {
                productImage.transferTo(new File(path.toString()));
            } catch (Exception ex){
                ex.printStackTrace();
                throw new RuntimeException("Product image saving failed", ex);
            }
        }

        productService.editProduct(product);

        return "redirect:/admin/productInventory";
    }

}
