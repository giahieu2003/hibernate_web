package dao;

import entities.User;

public interface UserDAO {
    void register(User user);
    User findByUsername(String username);
}
