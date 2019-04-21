package cn.lxtkj.action;

import java.util.Map;

import cn.lxtkj.model.User;
import cn.lxtkj.model.Userdetail;
import cn.lxtkj.service.IUserService;
import com.opensymphony.xwork2.ActionContext;
import com.opensymphony.xwork2.ActionSupport;

public class userAction extends ActionSupport {
private User user;
private Userdetail userdetail;
private IUserService userService;
private String password;
private String pwd1;


public String getPassword() {
	return password;
}

public void setPassword(String password) {
	this.password = password;
}

public String getPwd1() {
	return pwd1;
}

public void setPwd1(String pwd1) {
	this.pwd1 = pwd1;
}

public Userdetail getUserdetail() {
	return userdetail;
}

public void setUserdetail(Userdetail userdetail) {
	this.userdetail = userdetail;
}

public IUserService getUserService() {
	return userService;
}

public void setUserService(IUserService userService) {
	this.userService = userService;
}

public User getUser() {
	return user;
}

public void setUser(User user) {
	this.user = user;
}

public String addUser()throws Exception
{
	Map session=(Map) ActionContext.getContext().getSession();
	User user1=new User();
	Userdetail userDetail1=new Userdetail();
	user1.setUsername(user.getUsername());
	user1.setPassword(user.getPassword());
	user1.setRole(user.getRole());
	userDetail1.setAddress(userdetail.getAddress());
	userDetail1.setCsrq(userdetail.getCsrq());
	userDetail1.setXb(userdetail.getXb());
	userDetail1.setEmail(userdetail.getEmail());
	userDetail1.setPhone(userdetail.getPhone());
	userDetail1.setAddress(userdetail.getAddress());
	userDetail1.setTruename(userdetail.getTruename());
	userDetail1.setUser(user1);
	user1.setUserdetail(userDetail1);
	if(userService.addOrUpdateUser(user1))
		return SUCCESS;	
	else
	{		
		return ERROR;
	}
}
public String checkUser()throws Exception
{
	Map session=(Map) ActionContext.getContext().getSession();
	User user1=userService.checkUser(user);
	if(user1!=null)	
	{session.put("user",user1);
	return SUCCESS;	}
	else
	{
		session.put("role",user.getRole());
		return ERROR;
	}
}

public String logOut()throws Exception
{
	Map session=(Map) ActionContext.getContext().getSession();
	
	session.remove("user");
	return SUCCESS;		
}

public String updateUserPassword()throws Exception
{
	Map session=(Map) ActionContext.getContext().getSession();
	User user1=(User) session.get("user");
	if(user1.getPassword().equals(pwd1)){
	
	Userdetail userDetail1=user1.getUserdetail();
	user1.setPassword(password);
	userService.addOrUpdateUser(user1);
	session.remove("user");
	//session.remove("cart");
	return SUCCESS;		}
	else
	{
		Map request=(Map) ActionContext.getContext().get("request");
		request.put("msg","���������");
				return ERROR;}
}
public String updateUserDetail()throws Exception
{
	Map session=(Map) ActionContext.getContext().getSession();
	User user1=(User) session.get("user");
	user1.getUserdetail().setAddress(userdetail.getAddress());
	user1.getUserdetail().setXb(userdetail.getXb());
	user1.getUserdetail().setCsrq(userdetail.getCsrq());
	user1.getUserdetail().setEmail(userdetail.getEmail());
	user1.getUserdetail().setPhone(userdetail.getPhone());
	user1.getUserdetail().setTruename(userdetail.getTruename());
	//user1.setUserdetail(userDetail1);
	if(userService.addOrUpdateUser(user1))
	{
		
	session.put("user",user1);
	
	return SUCCESS;		}
	else
	{		
				return ERROR;}
}
}
