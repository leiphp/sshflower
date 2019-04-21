
package cn.lxtkj.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;

import cn.lxtkj.dao.IFlowerDAO;
import cn.lxtkj.model.Flower;

public class FlowerDAO implements IFlowerDAO{
private SessionFactory sessionFactory;
	public SessionFactory getSessionFactory() {
	return sessionFactory;
}
public void setSessionFactory(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
}
	
	public List getNewFlower() {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Flower order by flowerid desc");
		query.setFirstResult(0);
		query.setMaxResults(4);
		List flowers=query.list();
		ts.commit();
		session.close();
		return flowers;
	}
	
	public List getFlowerByCatalogidPaging(int catalogid, int currentPage,
			int pageSize) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		 Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Flower where catalogid="+catalogid);
		int startRow=(currentPage-1)*pageSize;
		query.setFirstResult(startRow);
		query.setMaxResults(pageSize);
		List flowers=query.list();
		session.close();
		return flowers;
	}
	
	public int getTotalByCatalog(int catalogid) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		 Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Flower where catalogid="+catalogid);
		List flowers=query.list();
		session.close();
		return flowers.size();
	}
	@Override
	public Flower getFlowerById(int id) {
		// TODO Auto-generated method stub
		Session session=sessionFactory.openSession();
		 Transaction ts=session.beginTransaction();
		Query query=session.createQuery("from Flower where flowerid="+id);
		List flowers=query.list();
		
		session.close();
		return (Flower) flowers.get(0);
	}
}
