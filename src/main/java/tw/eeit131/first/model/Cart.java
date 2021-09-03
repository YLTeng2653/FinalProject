package tw.eeit131.first.model;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;


public class Cart {
	
	private Map<Integer, OrderProduct> cart = new LinkedHashMap< >();
	
	public Map<Integer, OrderProduct>  getContent() { // ${Cart.content}
		return cart;
	}
	
	public void addToCart(int productID, OrderProduct orderProduct) {
		if (orderProduct.getNewSaleQty() <= 0 ) {
			return;
		}
	        // 如果客戶在伺服器端已有此項商品的資料，則客戶『加購』此項商品
		if ( cart.get(productID) == null ) {
		    cart.put(productID, orderProduct);
		}else {
			OrderProduct orderProduct0 = cart.get(productID);
			// 加購的數量：orderProduct.getSaleQty()
			// 原有的購買數量：orderProduct0.getSaleQty()
			System.out.println("-----cartQty------->"+orderProduct.getNewSaleQty()+"+"+orderProduct0.getNewSaleQty());
			orderProduct0.setNewSaleQty(orderProduct.getNewSaleQty()+orderProduct0.getNewSaleQty());
		}
	}
	
	public void deleteCart() {
		cart.clear();
	}
	
	// 鄧
	// 即時修改購物車產品數量
	public void updateQtyInCart(int productID, int updatedSaleQty) {
//		if (orderProduct.getNewSaleQty() <= 0 ) {
//			return;
//		}
		if ( cart.get(productID) != null ) { //購物車有該產品
			OrderProduct orderProduct1 = cart.get(productID);
			//更新購物車內該產品數量
			orderProduct1.setNewSaleQty(updatedSaleQty);
			System.out.println("數量更新後- "
					+ "產品ID:" + orderProduct1.getProductID() +", "
					+ "產品名稱:" + orderProduct1.getProductName() + ", "
					+ "購物車內數量:" + orderProduct1.getNewSaleQty());
		} else { //購物車內沒有該產品
			System.out.println("麻煩大囉");
		}
	}
	
	 //鄧
	 //查看購物車內容物
	public Map<Integer, Integer> getOrderProductByCart(){//List<OrderProduct>
		Map<Integer, Integer> orderProductMap = new LinkedHashMap<>();
			for (OrderProduct orderProduct : cart.values()) {
//		    System.out.println("產品名 = " + orderProduct.getProductName());
//			System.out.println("產品ID = " + orderProduct.getProductID();
//		    System.out.println("產品數量 = " + orderProduct.getNewSaleQty());
//		    String name = orderProduct.getProductName();
		    Integer productId = orderProduct.getProductID();
		    Integer qty = orderProduct.getNewSaleQty();
		    orderProductMap.put(productId,qty);
		}
//		System.out.println(cart);
//		System.out.println(cart.getContent());
//		for (Integer value : map.values()) {
//		    System.out.println("Value = " + value);
//		}
		return orderProductMap;
	}

	@Override
	public String toString() {
		StringBuilder builder = new StringBuilder();
		builder.append("Cart [cart=");
		builder.append(cart);
		builder.append("]");
		return builder.toString();
	}

	
}
