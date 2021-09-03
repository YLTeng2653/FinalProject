<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!doctype html>
<html class="no-js" lang="en">

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

<!-- 引入共同的頁首 -->
<jsp:include page="PageTop(login).jsp" />
  <!-- cart main wrapper start -->
        <div class="cart-main-wrapper mt-no-text mb-no-text">
            <div class="container container-default-2 custom-area">
                <div class="row">
                    <div class="col-lg-12">
                        <!-- Cart Table Area -->
                        <div class="cart-table table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th class="pro-thumbnail">商品</th>
                                        <th class="pro-title">品名/規格</th>
                                        <th class="pro-price">單價</th>
                                        <th class="pro-quantity">購買數量</th>
                                        <th class="pro-subtotal">小計</th>
                                        <th class="pro-remove">移除</th>
                                    </tr>
                                </thead>
                                
                                <tbody>
                                <c:forEach varStatus="vs" var="anEntry" items="${Cart.content}">
                                    <tr>                     
                                        <td class="pro-thumbnail"><a href="#"><img class="img-fluid" src="<c:url value='/getProductImage' />?id=${anEntry.value.productID}" alt="Product" /></a></td>
                                        <td class="pro-title"><a href="#">${anEntry.value.productName} <br> 規格:${anEntry.value.standard}</a></td>
                                        <td class="pro-price price"><span>${anEntry.value.price}</span></td>
                                        <td class="pro-quantity" >
                                            <div class="quantity">
                                                <div class="cart-plus-minus">
                                                	<div id="display-none" style="display:none">${anEntry.value.productID}</div><!-- 隱藏欄位，抓產品ID用 -->
                                                   <select name="newSaleQty" class="newSaleQty">
                                                     <c:forEach var="i" begin="1" end="${anEntry.value.quantity-anEntry.value.saleQty}">
                                                       <c:choose>
                                                         <c:when test="${i == anEntry.value.newSaleQty}">
                                                            <option selected value="${i}">${i}</option>
                                                         </c:when>
                                                         <c:otherwise>
                                                            <option value="${i}" >${i}</option>
                                                         </c:otherwise>
                                                       </c:choose>
                                                     </c:forEach>                           
                                                   </select>
                                                </div>
                                            </div>
                                        </td>
                                        <td class="pro-subtotal itemTotal"><span>${anEntry.value.newSaleQty*anEntry.value.price}</span></td>
                                        <td class="pro-remove"><a href="#"><i class="ion-trash-b"></i></a></td>
                                    </tr>
                                 </c:forEach>                                    
                                </tbody>
                            </table>
                        </div>
                        <!-- Cart Update Option <div class="cart-update-option d-block d-md-flex justify-content-between">-->
                        <div class=" d-md-flex">
<!--                             <div class="apply-coupon-wrapper"> -->
<%--                                 <form action="#" method="post" class=" d-block d-md-flex"> --%>
<!--                                     <input type="text" placeholder="Enter Your Coupon Code" required /> -->
<!--                                     <button class="btn obrien-button primary-btn">Apply Coupon</button> -->
<%--                                 </form> --%>
<!--                             </div> -->
<!--                             <div class="cart-update mt-sm-16"> -->
<!--                                 <a href="#" class="btn obrien-button primary-btn">Update Cart</a> -->
<!--                             </div> -->
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="col-lg-5 ml-auto">
                        <!-- Cart Calculation Area -->
                        <div class="cart-calculator-wrapper">
                            <div class="cart-calculate-items">
                                <h3>購物車結帳</h3>
                                <div class="table-responsive">
                                    <table class="table">
                                        <tr>
                                            <td>總計</td>
                                            <td id="sum"></td>
                                        </tr>
                                        <tr>
                                            <td>運費</td>
                                            <td id="shippingFee">70</td>
                                        </tr>
                                        <tr class="total">
                                            <td>Total</td>
                                            <td class="total-amount" id="total"></td>
                                        </tr>
                                    </table>
                                </div>
                            </div>
                            <a href="<c:url value='/CartCheckout' />" class="btn obrien-button primary-btn d-block">生成訂單</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- cart main wrapper end -->
<script>
// 載入完頁面時,計算總計
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

$(".newSaleQty").change(function(){
	console.log($(this).val());
	console.log($(this).parent().parent().parent().siblings(".price").text());
	
	var qty = $(this).val();
	var price = $(this).parent().parent().parent().siblings(".price").text();
	
	var itemTotal = qty*price
	console.log(itemTotal);
	$(this).parent().parent().parent().siblings(".itemTotal").text(itemTotal);
	
	var sum = 0;
	$(".itemTotal").each(function(){
		console.log($(this).text());
		var itemtotal = $(this).text();
		sum+=Number(itemtotal);
	});	
	$("#sum").text(sum);
	$("#total").text(Number($("#sum").text())+Number($("#shippingFee").text()));
	
	
	//add by 鄧 on 2021/08/29
	//數量變更時更新session中的購物車產品數量
	var xhr = new XMLHttpRequest(); //Ajax引擎物件
	xhr.open("POST", "<c:url value='/updateQtyInCart' />", true); //說明請求內容
	var productID = $(this).siblings("#display-none").text(); //產品ID
	var updatedSaleQty = $(this).val(); //更新後之數量
	console.log('產品ID:'+productID);
	console.log('更新後數量:'+updatedSaleQty);
	xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded"); //請求標頭
	xhr.send("productID="+productID+"&updatedSaleQty="+updatedSaleQty);
		
		xhr.onreadystatechange = function(){
		if(xhr.readyState == 4 && xhr.status == 200){
			console.log("購物車已更新");
		}
	}
});

		
</script>
</body>

</html>
