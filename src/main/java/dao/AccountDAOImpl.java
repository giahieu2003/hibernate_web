package dao;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import entities.Account;

@Repository
public class AccountDAOImpl implements AccountDAO{
	@Autowired
    private SessionFactory sessionFactory;

	@Override
	public Account findByAccountname(String accountname) {
		 Session session = sessionFactory.openSession();
	        String hql = "FROM Account WHERE accountname = :accountname";
	        Account account = session.createQuery(hql, Account.class)
	                           .setParameter("accountname", accountname)
	                           .uniqueResult();
	        session.close();
	        return account;
	}

}
