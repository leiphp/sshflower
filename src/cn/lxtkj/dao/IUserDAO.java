package cn.lxtkj.dao;

import java.util.List;

import cn.lxtkj.model.User;

public interface IUserDAO {

	public boolean addOrUpdateUser(User user);
	public User checkUser(User user);
}
