package cn.lxtkj.service;

import java.util.List;

import cn.lxtkj.model.User;



public interface IUserService {
	
	
	public boolean addOrUpdateUser(User user);
	public User checkUser(User user);
}
