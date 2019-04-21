package cn.lxtkj.service.impl;

import java.util.List;

import cn.lxtkj.dao.ICatalogDAO;

import cn.lxtkj.service.ICatalogService;

public class CatalogService implements ICatalogService {
	private ICatalogDAO catalogDAO;

	public ICatalogDAO getCatalogDAO() {
		return catalogDAO;
	}

	public void setCatalogDAO(ICatalogDAO catalogDAO) {
		this.catalogDAO = catalogDAO;
	}

	@Override
	public List getAllCatalogs() {
		// TODO Auto-generated method stub

		return catalogDAO.getAllCatalogs();
	}

}
