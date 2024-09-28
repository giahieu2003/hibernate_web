package dao;

import java.util.List;

import entities.Product;

public interface ProductDAO {
	void insert(Product product);
	void update(Product product);
    void delete(Integer id);
    Product getById(Integer id);
    List<Product> getall();
    List<Product> search(String name);
    List<Product> getProductsByCategory(Integer categoryId);
}
