package dao;

import entities.Account;

public interface AccountDAO {
    Account findByAccountname(String accountname);
}
