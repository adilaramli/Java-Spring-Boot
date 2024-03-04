package com.product.product.models;

import jakarta.validation.constraints.NotEmpty;
import jakarta.validation.constraints.Size;

//a model class:Data-Transfer-Object
public class ProductDto {
    @NotEmpty(message= "The product code is required")
    private String productCode;
    @NotEmpty(message= "The name is required")
    private String name;
    @NotEmpty(message= "The category is required")
    private String category;
    @NotEmpty(message= "The brand is required")
    private String brand;
    private String type;
    @Size(min =5, message= "The description should be at least 10 characters")
    @Size(max =2000, message= "The description should be more than 2000 characters")
    private String description;

    public String getProductCode() {
        return productCode;
    }

    public void setProductCode(String productCode) {
        this.productCode = productCode;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String category) {
        this.category = category;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }
}
