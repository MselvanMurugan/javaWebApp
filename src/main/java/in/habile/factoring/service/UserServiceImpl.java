package in.habile.factoring.service;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import in.habile.factoring.model.User;
import in.habile.factoring.Dao.loginDao;

@Service("userService")
@Transactional
public class UserServiceImpl implements UserService{
	
	@Autowired(required = true)
	loginDao dao;
	
	private static final AtomicLong counter = new AtomicLong();
	
	private static List<User> users;
	
	

	public List<User> findAllUsers() {
		return users;
	}
	
	public User findById(long id) {
		for(User user : users){
			if(user.getId() == id){
				return user;
			}
		}
		return null;
	}
	
	public User findByName(String name) {
		for(User user : users){
			/*if(user.getUsername().equalsIgnoreCase(name)){
				return user;
			}
*/		}
		return null;
	}
	
	public void saveUser(User user) {
		//user.setId(counter.incrementAndGet());
		users.add(user);
	}

	public void updateUser(User user) {
		int index = users.indexOf(user);
		users.set(index, user);
	}

	public void deleteUserById(long id) {
		
		for (Iterator<User> iterator = users.iterator(); iterator.hasNext(); ) {
		    User user = iterator.next();
		    if (user.getId() == id) {
		        iterator.remove();
		    }
		}
	}

		
	public User loginUser(User user) {	
		System.out.println("services" +user.getEmail()+user.getPassword());
				
  			user = dao.checkUserLogin(user);			
  		 System.out.println("services2" +user);
  		 return user;
	}
	
	public void deleteAllUsers(){
		users.clear();
	}

	@Override
	public boolean isUserExist(User user) {
		// TODO Auto-generated method stub
		return false;
	}

	

	
	

}
