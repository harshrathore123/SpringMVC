package springmvc.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.orm.hibernate5.HibernateTemplate;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import springmvc.model.User;

@Repository
public class UserDao {
	
	@Autowired
	private HibernateTemplate hibernateTemplate;
	
	@Transactional
	public int userSave(User user) {
		Integer r = (Integer) this.hibernateTemplate.save(user);
		return r;
	}
	
	public User getUser(int userId) {
		User showUser = this.hibernateTemplate.get(User.class, userId);
		return showUser;
	}
	
}
