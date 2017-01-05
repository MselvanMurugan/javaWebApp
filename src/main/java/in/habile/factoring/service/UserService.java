package in.habile.factoring.service;

import java.util.List;

import in.habile.factoring.model.User;



public interface UserService {
	
	User findById(long id);
	
	User findByName(String name);
	
	void saveUser(User user);
	
	User loginUser(User users);
	
	void updateUser(User user);
	
	void deleteUserById(long id);

	List<User> findAllUsers(); 
	
	void deleteAllUsers();
	
	 public boolean isUserExist(User user);
	
}
