<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>Obrien</title>
    <meta name="robots" content="noindex, follow" />
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <!-- Favicon -->
    

</head>

<body>
<script>
window.onload=function(){
	
	
	$(function() {
		
		var sum = 0;
		$(".itemTotal").each(function(){
			console.log($(this).text());
			var itemtotal = $(this).text();
			sum+=Number(itemtotal);
		});	
		$("#sum").text(sum);
		
		console.log(Number($("#sum").text()));
		console.log(Number($("#shippingFee").text()));
		$("#total").text(Number($("#sum").text())+Number($("#shippingFee").text()));
		
	});
	
	submitCart = document.getElementById("submitCart")
	submitCart.onclick = function(){// 確認聯絡資訊、建立訂單
		
	
		var submit = confirm('確認生成訂單');

		if (submit) {
			//讀取地址、信箱、電話
			var orderAddress = $("#orderAddress").val();//.attr("text") .attr("value")
			var orderEmail = $("#orderEmail").val();
			var orderPhone = $("#orderPhone").val();
			//讀取使用者
			var customerID = ${Customer.id};
//	 		//測試
//	 		window.alert("orderAddress: "+orderAddress+"\n"
//	 				+"orderEmail: "+orderEmail+"\n"
//	 				+"orderPhone: "+orderPhone+"\n"
//	 				+"customerID: "+customerID);
			
			//送出資料至controller
			var xhr = new XMLHttpRequest(); //Ajax引擎物件
			xhr.open("POST", "<c:url value='/addOrderList' />", true); //說明請求內容
//	 		var productID = $(this).siblings("#display-none").text(); //產品ID
//	 		var updatedSaleQty = $(this).val(); //更新後之數量
//	 		console.log('產品ID:'+productID);
//	 		console.log('更新後數量:'+updatedSaleQty);
			xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); //請求標頭
			xhr.send("orderAddress="+orderAddress+"&orderEmail="+orderEmail
					+"&orderPhone="+orderPhone);
				
				xhr.onreadystatechange = function(){
				if(xhr.readyState == 4 && xhr.status == 200){
//	 				console.log("測試");
					window.alert("提交成功，聯絡資訊為-"+"\n"
							+"orderAddress: "+orderAddress+"\n"
							+"orderEmail: "+orderEmail+"\n"
							+"orderPhone: "+orderPhone+"\n"
							+"customerID: "+customerID+"\n"+"\n"
							+"即將跳轉頁面至訂單列表");
					window.location.href="<c:url value='/getCustomersAllOrder' />";
				}
			}
		} else {
		    
		}

	}
}


	
	
// 	$(".newSaleQty").change(function(){
// 		console.log($(this).val());
// 		console.log($(this).parent().parent().parent().siblings(".price").text());
		
// 		var qty = $(this).val();
// 		var price = $(this).parent().parent().parent().siblings(".price").text();
		
// 		var itemTotal = qty*price
// 		console.log(itemTotal);
// 		$(this).parent().parent().parent().siblings(".itemTotal").text(itemTotal);
		
// 		var sum = 0;
// 		$(".itemTotal").each(function(){
// 			console.log($(this).text());
// 			var itemtotal = $(this).text();
// 			sum+=Number(itemtotal);
// 		});	
// 		$("#sum").text(sum);
// 		$("#total").text(Number($("#sum").text())+Number($("#shippingFee").text()));
		
		
		
// 	})
	



</script>
<!-- 引入共同的頁首 -->
<jsp:include page="PageTop(login).jsp" />

        <!-- Checkout Area Start Here -->
        <div class="checkout-area">
            <div class="container container-default-2 custom-container">
            

                <div class="row">
                    <div class="col-lg-6 col-12">
                        <form action="#">
                            <div class="checkbox-form">
                                <h3>Billing Details</h3>
                                <div class="row">
                                    <div class="col-md-6">
                                        <div class="checkout-form-list">
                                            <label>姓名 <span class="required"></span></label>
                                            <input readonly value="${Customer.name}" placeholder="" type="text"><!-- 帶使用者名稱 -->
                                        </div>
                                    </div>
                                    <div class="col-md-12">
                                        <div class="checkout-form-list">
                                            <label>地址 <span class="required">*</span></label>
                                            <input value="${Customer.address}" placeholder="" type="text" id="orderAddress"><!-- 帶使用者地址 -->
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="checkout-form-list">
                                            <label>電子信箱 <span class="required">*</span></label>
                                            <input value="${Customer.email}" placeholder="" type="email" id="orderEmail"><!-- 帶使用者信箱 -->
                                        </div>
                                    </div>
                                    <div class="col-md-6">
                                        <div class="checkout-form-list">
                                            <label>電話 <span class="required">*</span></label>
                                            <input value="${Customer.cellphone}" placeholder=""type="text" id="orderPhone"><!-- 帶使用者電話 -->
                                        </div>
                                    </div>
                              	</div>
                            </div>
                        </form>
                    </div>
                    <div class="col-lg-6 col-12">
                        <div class="your-order">
                            <h3>Your order</h3>
                            <div class="your-order-table table-responsive">
                                <table class="table">
                                    <thead>
                                        <tr>
                                            <th class="cart-product-name">產品</th>
                                            <th class="cart-product-total">小計</th>
                                        </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach varStatus="vs" var="anEntry" items="${Cart.content}">
                                    	<tr class="cart_item">
                                            	<td class="cart-product-name"> ${anEntry.value.productName}<strong class="product-quantity">
                                    	× ${anEntry.value.newSaleQty}</strong></td>
                                            	<td class="itemTotal cart-product-total text-center"><span class="amount">${anEntry.value.price * anEntry.value.newSaleQty}</span></td>
                                        </tr>
                                    </c:forEach>
                                    <tr class="cart_item">
                                            <td class="cart-product-name"> 總計<strong class="product-quantity"></strong></td>
<!--                                             <td class="cart-product-total text-center" id="sum"><span class="amount"></span></td> -->
                                        	<td class="cart-product-total text-center" id="sum"></td>
                                        </tr>
                                    <tr class="cart_item">
                                            <td class="cart-product-name"> 運費<strong class="product-quantity"></strong></td>
<!--                                             <td class="cart-product-total text-center" id="shippingFee"><span class="amount">70</span></td> -->
                                            <td class="cart-product-total text-center" id="shippingFee">70</td>
                                        </tr>
<!--                                         <tr class="cart_item"> -->
<!--                                             <td class="cart-product-name">Vestibulum suscipit<strong class="product-quantity"> --%>
<!--                                     × 1</strong></td> -->
<!--                                             <td class="cart-product-total text-center"><span class="amount">£165.00</span></td> -->
<!--                                         </tr> -->
<!--                                         <tr class="cart_item"> -->
<!--                                             <td class="cart-product-name"> Vestibulum suscipit<strong class="product-quantity"> -->
<!--                                     × 1</strong></td> -->
<!--                                             <td class="cart-product-total text-center"><span class="amount">£165.00</span></td> -->
<!--                                         </tr> -->
                                    </tbody>
                                    <tfoot>
<!--                                         <tr class="cart-subtotal"> -->
<!--                                             <th>Cart Subtotal</th> -->
<!--                                             <td class="text-center"><span class="amount">£215.00</span></td> -->
<!--                                         </tr> -->
                                        <tr class="order-total">
                                            <th>Total</th>
<!--                                             <td class="text-center" id="total"><strong><span class="amount"></span></strong></td> -->
												<td class="text-center" id="total"></td>
                                        </tr>
                                    </tfoot>
                                </table>
                            </div>
                                <div class="order-button-payment">
                                    <input value="確認" type="button" id="submitCart">
<!--                                     <button id="submitCart" class="btn obrien-button-2 primary-color" type="submit" onclick="return confirm('確認要提交訂單?');">提交訂單</button> -->
                                </div>
<!--                                 </div> -->
<!--                             </div> -->
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Checkout Area End Here -->
        <!-- Support Area Start Here -->
        <div class="support-area">
            <div class="container container-default custom-area">
                <div class="row">
                    <div class="col-lg-12 col-custom">
                        <div class="support-wrapper d-flex">
                            <div class="support-content">
                                <h1 class="title">Need Help ?</h1>
                                <p class="desc-content">Call our support 24/7 at 01234-567-890</p>
                            </div>
                            <div class="support-button d-flex align-items-center">
                                <a class="obrien-button primary-btn" href="contact-us.html">Contact now</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Support Area End Here -->
        
<!--         Footer Area Start Here -->
<!--         <footer class="footer-area"> -->
<!--             <div class="footer-widget-area"> -->
<!--                 <div class="container container-default custom-area"> -->
<!--                     <div class="row"> -->
<!--                         <div class="col-12 col-sm-12 col-md-12 col-lg-3 col-custom"> -->
<!--                             <div class="single-footer-widget m-0"> -->
<!--                                 <div class="footer-logo"> -->
<!--                                     <a href="index.html"> -->
<!--                                         <img src="assets/images/logo/footer.png" alt="Logo Image"> -->
<!--                                     </a> -->
<!--                                 </div> -->
<!--                                 <p class="desc-content">Obrien is the best parts shop of your daily nutritions. What kind of nutrition do you need you can get here soluta nobis</p> -->
<!--                                 <div class="social-links"> -->
<!--                                     <ul class="d-flex"> -->
<!--                                         <li> -->
<!--                                             <a class="border rounded-circle" href="#" title="Facebook"> -->
<!--                                                 <i class="fa fa-facebook-f"></i> -->
<!--                                             </a> -->
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a class="border rounded-circle" href="#" title="Twitter"> -->
<!--                                                 <i class="fa fa-twitter"></i> -->
<!--                                             </a> -->
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a class="border rounded-circle" href="#" title="Linkedin"> -->
<!--                                                 <i class="fa fa-linkedin"></i> -->
<!--                                             </a> -->
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a class="border rounded-circle" href="#" title="Youtube"> -->
<!--                                                 <i class="fa fa-youtube"></i> -->
<!--                                             </a> -->
<!--                                         </li> -->
<!--                                         <li> -->
<!--                                             <a class="border rounded-circle" href="#" title="Vimeo"> -->
<!--                                                 <i class="fa fa-vimeo"></i> -->
<!--                                             </a> -->
<!--                                         </li> -->
<!--                                     </ul> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom"> -->
<!--                             <div class="single-footer-widget"> -->
<!--                                 <h2 class="widget-title">Information</h2> -->
<!--                                 <ul class="widget-list"> -->
<!--                                     <li><a href="about-us.html">Our Company</a></li> -->
<!--                                     <li><a href="contact-us.html">Contact Us</a></li> -->
<!--                                     <li><a href="about-us.html">Our Services</a></li> -->
<!--                                     <li><a href="about-us.html">Why We?</a></li> -->
<!--                                     <li><a href="about-us.html">Careers</a></li> -->
<!--                                 </ul> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom"> -->
<!--                             <div class="single-footer-widget"> -->
<!--                                 <h2 class="widget-title">Quicklink</h2> -->
<!--                                 <ul class="widget-list"> -->
<!--                                     <li><a href="about-us.html">About</a></li> -->
<!--                                     <li><a href="blog.html">Blog</a></li> -->
<!--                                     <li><a href="shop.html">Shop</a></li> -->
<!--                                     <li><a href="cart.html">Cart</a></li> -->
<!--                                     <li><a href="contact-us.html">Contact</a></li> -->
<!--                                 </ul> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-12 col-sm-6 col-md-6 col-lg-2 col-custom"> -->
<!--                             <div class="single-footer-widget"> -->
<!--                                 <h2 class="widget-title">Support</h2> -->
<!--                                 <ul class="widget-list"> -->
<!--                                     <li><a href="contact-us.html">Online Support</a></li> -->
<!--                                     <li><a href="contact-us.html">Shipping Policy</a></li> -->
<!--                                     <li><a href="contact-us.html">Return Policy</a></li> -->
<!--                                     <li><a href="contact-us.html">Privacy Policy</a></li> -->
<!--                                     <li><a href="contact-us.html">Terms of Service</a></li> -->
<!--                                 </ul> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                         <div class="col-12 col-sm-6 col-md-6 col-lg-3 col-custom"> -->
<!--                             <div class="single-footer-widget"> -->
<!--                                 <h2 class="widget-title">See Information</h2> -->
<!--                                 <div class="widget-body"> -->
<!--                                     <address>123, H2, Road #21, Main City, Your address goes here.<br>Phone: 01254 698 785, 36598 254 987<br>Email: https://example.com</address> -->
<!--                                 </div> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--             <div class="footer-copyright-area"> -->
<!--                 <div class="container custom-area"> -->
<!--                     <div class="row"> -->
<!--                         <div class="col-12 text-center col-custom"> -->
<!--                             <div class="copyright-content"> -->
<!--                                 <p>Copyright &copy; 2021.Company name All rights reserved.<a target="_blank" href="https://sc.chinaz.com/moban/">&#x7F51;&#x9875;&#x6A21;&#x677F;</a></p> -->
<!--                             </div> -->
<!--                         </div> -->
<!--                     </div> -->
<!--                 </div> -->
<!--             </div> -->
<!--         </footer> -->
<!--         Footer Area End Here -->


<!-- 引入共同的頁尾 -->
<jsp:include page="PageFoot.jsp" />
</body>

</html>
