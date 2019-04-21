package cn.lxtkj.service.impl;


import cn.lxtkj.dao.IOrderDAO;
import cn.lxtkj.dao.impl.OrderDAO;
import cn.lxtkj.model.Orders;
import cn.lxtkj.service.IOrderService;

public class OrderService implements IOrderService{
private IOrderDAO orderDAO;

	
	public IOrderDAO getOrderDAO() {
	return orderDAO;
}


public void setOrderDAO(IOrderDAO orderDAO) {
	this.orderDAO = orderDAO;
}


	@Override
	public Orders saveOrder(Orders order) {
		// TODO Auto-generated method stub
		return orderDAO.saveOrder(order);
	}

}
