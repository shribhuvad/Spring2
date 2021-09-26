package com.bean;

import org.springframework.web.multipart.MultipartFile;

public class Product {

private String name;
private String id;
private String price;
private String email;
private String discription;
private String catagory;
private String quantity;
private String discount;
private MultipartFile file;
private String img_path;

public String getImg_path() {
	return img_path;
}

public void setImg_path(String img_path) {
	this.img_path = img_path;
}

public String getId() {
	return id;
}

public void setId(String id) {
	this.id = id;
}

public MultipartFile getFile() {
	return file;
}

public void setFile(MultipartFile file) {
	this.file = file;
}

public String getEmail() {
	return email;
}

public void setEmail(String email) {
	this.email = email;
}

public String getDiscription() {
	return discription;
}

public void setDiscription(String discription) {
	this.discription = discription;
}

public String getCatagory() {
	return catagory;
}

public void setCatagory(String catagory) {
	this.catagory = catagory;
}

public String getQuantity() {
	return quantity;
}

public void setQuantity(String quantity) {
	this.quantity = quantity;
}

public String getDiscount() {
	return discount;
}

public void setDiscount(String discount) {
	this.discount = discount;
}

public String getName() {
	return name;
}

public void setName(String name) {
	this.name = name;
}

public String getPrice() {
	return price;
}

public void setPrice(String price) {
	this.price = price;
}


}
