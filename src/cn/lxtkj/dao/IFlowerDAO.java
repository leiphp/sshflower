package cn.lxtkj.dao;

import java.util.List;

import cn.lxtkj.model.Flower;

public interface IFlowerDAO {
	
	public List getNewFlower();
	public List getFlowerByCatalogidPaging(int catalogid,int currentPage,int pageSize);
	public int getTotalByCatalog(int catalogid);
	public Flower getFlowerById(int id);
}
