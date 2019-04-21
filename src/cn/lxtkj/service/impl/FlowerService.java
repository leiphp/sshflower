package cn.lxtkj.service.impl;

import java.util.List;
import cn.lxtkj.dao.IFlowerDAO;
import cn.lxtkj.model.Flower;
import cn.lxtkj.service.IFlowerService;

/**
 * @author wydty
 *
 */
public class FlowerService implements IFlowerService {
	
	private IFlowerDAO flowerDAO;
	
	
	public IFlowerDAO getFlowerDAO() {
		return flowerDAO;
	}


	public void setFlowerDAO(IFlowerDAO flowerDAO) {
		this.flowerDAO = flowerDAO;
	}


	public List getNewFlower() {
		// TODO Auto-generated method stub
		return flowerDAO.getNewFlower();
	}

	public List getFlowerByCatalogidPaging(int catalogid, int currentPage,
			int pageSize) {
		// TODO Auto-generated method stub
		return flowerDAO.getFlowerByCatalogidPaging(catalogid, currentPage, pageSize);
	}
	public int getTotalByCatalog(int catalogid){
		
		return flowerDAO.getTotalByCatalog(catalogid);
	}
	public Flower getFlowerById(int id) {
		// TODO Auto-generated method stub
		return flowerDAO.getFlowerById(id);
	}
	
}
