package dao;

import java.util.List;

import entities.Category;

public interface CategoryDAO {
	void insert(Category category);
	void update(Category category);
    void delete(Integer id);
    Category getById(Integer id);
    List<Category> getall();
}
