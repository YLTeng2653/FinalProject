package tw.eeit131.first.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import tw.eeit131.first.model.Cart;
import tw.eeit131.first.model.Customer;
import tw.eeit131.first.model.OrderProduct;
import tw.eeit131.first.model.Product;
import tw.eeit131.first.service.ProductService;

@Controller
public class CartController {
	
	@Autowired
	ProductService productService;
	
	@PostMapping(value="/buyProduct.json", produces = { "application/json; charset=UTF-8" })
	public @ResponseBody Cart buyProductJson(@RequestParam("productID")Integer productID,
                                             @RequestParam("newSaleQty")Integer newSaleQty,
                                             HttpSession session) {
		// 只要舊的Session物件，如果找不到，不要建立新的Session物件，直接傳回 null
		Customer customer = (Customer) session.getAttribute("Customer");
		if (customer == null) {
			// 請使用者登入
			return null;
	    }
		// 取出存放在session物件內的ShoppingCart物件
	    Cart cart = (Cart)session.getAttribute("Cart");
	    // 如果找不到ShoppingCart物件
	 	if (cart == null) {
	 		// 就新建ShoppingCart物件
		    cart = new Cart();
			// 並將此新建Cart的物件放到session物件內，成為它的屬性物件
			session.setAttribute("Cart", cart);   // ${Cart.subtotal}
	 	}
	 	Product product = productService.getProductById(productID);
	 	System.out.println("------cart----->"+productID+";"+product.getSaleQty()+";"+newSaleQty);

	 	OrderProduct orderProduct = new OrderProduct(productID,
	 			                                     product.getSaleQty(),
                                                     newSaleQty,
	 			                                     product.getProductName(),
	 			                                     product.getQuantity(),
	 			                                     product.getStandard(),
	 			                                     product.getPrice());
	 	cart.addToCart(productID,orderProduct);

		return cart;
	}
	
	@PostMapping("/buyProduct")
    public String buyProduct(@RequestParam("productID")Integer productID,
    		                 @RequestParam("newSaleQty")Integer newSaleQty,
    		                 HttpSession session) {

		// 只要舊的Session物件，如果找不到，不要建立新的Session物件，直接傳回 null
		Customer customer = (Customer) session.getAttribute("Customer");
		if (customer == null) {
			// 請使用者登入
			return "CustomerLogin";
	    }
		// 取出存放在session物件內的ShoppingCart物件
	    Cart cart = (Cart)session.getAttribute("Cart");
	    // 如果找不到ShoppingCart物件
	 	if (cart == null) {
	 		// 就新建ShoppingCart物件
		    cart = new Cart();
			// 並將此新建Cart的物件放到session物件內，成為它的屬性物件
			session.setAttribute("Cart", cart);   // ${Cart.subtotal} 
	 	}
	 	Product product = productService.getProductById(productID);
	 	System.out.println("------cart----->"+productID+";"+product.getSaleQty()+";"+newSaleQty);

	 	OrderProduct orderProduct = new OrderProduct(productID,
	 			                                     product.getSaleQty(),
                                                     newSaleQty,
	 			                                     product.getProductName(),
	 			                                     product.getQuantity(),
	 			                                     product.getStandard(),
	 			                                     product.getPrice());
	 	cart.addToCart(productID,orderProduct);	
	    	
	 		
		return "success2";
	}	

	// 鄧
	// 同步更新購物車內產品數量
	@PostMapping("/updateQtyInCart")
	public @ResponseBody Cart updateQtyInCart(@RequestParam("productID")Integer productID,
								@RequestParam("updatedSaleQty")Integer updatedSaleQty,
								HttpSession session) {
		// 取出存放在session物件內的ShoppingCart物件
	    Cart cart = (Cart)session.getAttribute("Cart");
	    //修改該產品數量
		cart.updateQtyInCart(productID, updatedSaleQty);
		return cart; //傳了也不知道要幹嘛
	}
	
	// 購物車轉訂單填寫資料頁面
	@GetMapping("/CartCheckout")
    public String CartCheckout(HttpSession session) {//購物車在session中

	    return "CartCheckout";
	}
	
	
	
	
	
	
	
}
