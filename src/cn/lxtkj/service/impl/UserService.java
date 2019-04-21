package cn.lxtkj.service.impl;

import java.util.List;
import cn.lxtkj.dao.IUserDAO;
import cn.lxtkj.model.User;
import cn.lxtkj.service.IUserService;

public class UserService implements IUserService {
private IUserDAO userDAO;

public IUserDAO getUserDAO() {
	return userDAO;
}

public void setUserDAO(IUserDAO userDAO) {
	this.userDAO = userDAO;
}

public boolean addOrUpdateUser(User user) {
	// TODO Auto-generated method stub
	return userDAO.addOrUpdateUser(user);
}
public User checkUser(User user) {
	// TODO Auto-generated method stub
	return userDAO.checkUser(user);
}
}
