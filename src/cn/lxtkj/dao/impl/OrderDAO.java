package cn.lxtkj.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.criterion.Order;
import cn.lxtkj.dao.IOrderDAO;
import cn.lxtkj.model.Orders;

public class OrderDAO implements IOrderDAO {

//	private SessionFactory sessionFactory;
	private SessionFactory sessionFacory;
	
		public SessionFactory getSessionFacory() {
		return getSessionFacory();
	}

	public void setSessionFacory(SessionFactory sessionFactory) {
		this.sessionFacory = sessionFactory;
	}

		public Orders saveOrder(Orders order) {
			// TODO Auto-generated method stub
			Session session=sessionFacory.openSession();
			 Transaction ts=session.beginTransaction();
			session.save(order);
			ts.commit();
			session.close();
			return order;
		}
		
	}
