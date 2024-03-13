package com.product.product.controllers;

import com.product.product.models.Product;
import com.product.product.models.ProductDto;
import com.product.product.services.ProductsRepository;
import jakarta.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Sort;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.Arrays;
import java.util.List;

@Controller
@RequestMapping("/products")
public class ProductsController {

    @Autowired
    //this annotation is bcs we need to request this from the servives/repository controller
    private ProductsRepository repo;

    //below annotation bcs this methd will be accessible by HTTP get mapping
    @GetMapping({"", "/"})
    public String showProductList(Model model,
                                  @RequestParam(defaultValue = "0") int page,
                                  @RequestParam(defaultValue = "10") int size){
        Page<Product> productPage= repo.findAll(PageRequest.of(page,size,Sort.by(Sort.Direction.DESC, "id")));
        List<Product> products =productPage.getContent();


        model.addAttribute("products", products);
        model.addAttribute("currentPage", page);
        model.addAttribute("totalPages", productPage.getTotalPages());
        // Add the page sizes to the model
        List<Integer> pageSizes = Arrays.asList(10, 15, 20, 25);
        model.addAttribute("pageSizes", pageSizes);
        model.addAttribute("selectedSize", size);
        //add the products to this model which will be accessible to the html file
        return "products/index";
    }

    //method to display form to create product
    //model in args is needed to allow is to add some data that will be accessible to the page
    @GetMapping("/create")
    public String showCreatePage(Model model){
        ProductDto productDto = new ProductDto();
        model.addAttribute("productDto", productDto);
        return "products/CreateProduct";
        //will return the name of the html file
    }

    @PostMapping("/create")
    public String createProduct (
            @Valid @ModelAttribute ProductDto productDto,
            BindingResult result
    ){
        if (result.hasErrors()){
            return "products/CreateProduct";
        }

        Product product= new Product();
        product.setName(productDto.getName());
        product.setProductCode(productDto.getProductCode());
        product.setCategory(productDto.getCategory());
        product.setBrand(productDto.getBrand());
        product.setType(productDto.getType());
        product.setDescription(productDto.getDescription());

        //save this product object to the database
        //using the repository
        repo.save(product);

        return "redirect:/products";
    }

    @GetMapping("/edit")
    public String showEditPage(
            Model model,
            //require the model to allow us to send data to the page
            @RequestParam int id
    ){

        try{
            Product product= repo.findById(id).get();
            //add object to the model so it will acessible to the page
            model.addAttribute("product", product);

            ProductDto productDto= new ProductDto();
            productDto.setName(product.getName());
            productDto.setBrand(product.getBrand());
            productDto.setProductCode(product.getProductCode());
            productDto.setType(product.getType());
            productDto.setCategory(product.getCategory());
            productDto.setDescription(product.getDescription());

            model.addAttribute("productDto", productDto);
        }
        catch(Exception ex){
            System.out.println("Exception: " + ex.getMessage());
            return "redirect:/products";
        }
        return "products/EditProduct";
    }

    @PostMapping("/edit")
    public String updateProduct(
            Model model,
            @RequestParam int id,
            @Valid @ModelAttribute ProductDto productDto,
            BindingResult result
            ) {
        try{
            //to connect to the database to read the database based on the id
            Product product= repo.findById(id).get();
            model.addAttribute("product", product);

            if(result.hasErrors()){
                return "products/EditProduct";
            }

            product.setName(productDto.getName());
            product.setCategory(productDto.getCategory());
            product.setBrand(productDto.getBrand());
            product.setType(productDto.getType());
            product.setDescription(productDto.getDescription());

            repo.save(product);
        }
        catch(Exception ex) {
            System.out.println("Exception: " + ex.getMessage());
            return "redirect:/products";
        }
        return "redirect:/products";
    }

    @GetMapping("/delete")
    public String deleteProduct(
             @RequestParam int id
    ){

        //read this product of the product id from the database. use try catch block
        try{
            Product product= repo.findById(id).get();

            repo.delete(product);

        }
        catch(Exception ex){
            System.out.println("Exception: " + ex.getMessage());
        }

        return "redirect:/products";
    }

}
