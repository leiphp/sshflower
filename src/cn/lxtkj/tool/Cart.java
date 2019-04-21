package cn.lxtkj.tool;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import cn.lxtkj.model.Flower;
import cn.lxtkj.model.Orderitem;



public class Cart {
private Map items;

public Map getItems() {
	return items;
}

public void setItems(Map items) {
	this.items = items;
}

public Cart() {
	// TODO Auto-generated constructor stub
	if(items==null)
		items=new HashMap<Integer,Orderitem>();
}

public void addFlower(int flowerId,Orderitem orderitem)
{
if(items.containsKey(flowerId))
{
	Orderitem _orderitem=(Orderitem) items.get(flowerId);
	orderitem.setQuantity(_orderitem.getQuantity()+orderitem.getQuantity());
	items.put(flowerId,orderitem);
}
else
	items.put(flowerId,orderitem);
}
public void updateCart(int flowerId,int quantity)
{
Orderitem orderitem=(Orderitem) items.get(flowerId);
orderitem.setQuantity(quantity);
items.put(flowerId, orderitem);
}
public int getTotalPrice()
{
int totalPrice=0;
for(Iterator it=items.values().iterator();it.hasNext();)
		{
	Orderitem orderitem=(Orderitem) it.next();
	Flower flower=orderitem.getFlower();
	int quantity=orderitem.getQuantity();
	totalPrice+=flower.getPrice()*quantity;
		}
  return totalPrice;
}
}
