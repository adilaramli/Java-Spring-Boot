package com.product.product.services;

import com.product.product.models.Product;
import org.springframework.data.jpa.repository.JpaRepository;


public interface ProductsRepository extends JpaRepository <Product, Integer> {
    //no need to manual implement this interface cos spring jpa will implement this for us
    //this interface is to read from db
}
