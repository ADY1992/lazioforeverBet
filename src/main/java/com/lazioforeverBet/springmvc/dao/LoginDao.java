package com.lazioforeverBet.springmvc.dao;

import java.util.List;

import javax.annotation.Resource;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.lazioforeverBet.springmvc.dto.Users;

@Repository("loginDao")
@Transactional
public class LoginDao {
	
	@Resource(name="sessionFactory")
    protected SessionFactory sessionFactory;

	public void setSessionFactory(SessionFactory sessionFactory) {
        this.sessionFactory = sessionFactory;
	}

	protected Session getSession(){
        return sessionFactory.openSession();
	}
	
	public boolean checkLogin(String userName, String userPassword){
		
		Session session = sessionFactory.getCurrentSession();
		boolean userFound = false;
		String SQL_QUERY =" from Users u where u.userName = :username and u.userPassword = :userpassword";
		Query query = session.createQuery(SQL_QUERY);
		query.setParameter("username" ,userName);
		query.setParameter("userpassword" ,userPassword);
		List<Users> list =  query.list();
		if ((list != null) && (list.size() > 0)) {
			userFound= true;
		}
		return userFound;
	}
	
}
