package cn.lxtkj.model;
// Generated 2019-4-18 22:07:34 by Hibernate Tools 4.0.0

/**
 * Guashi generated by hbm2java
 */
public class Guashi implements java.io.Serializable {

	private Integer id;
	private User user;

	public Guashi() {
	}

	public Guashi(User user) {
		this.user = user;
	}

	public Integer getId() {
		return this.id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public User getUser() {
		return this.user;
	}

	public void setUser(User user) {
		this.user = user;
	}

}
