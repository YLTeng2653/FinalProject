<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

 <!-- CSS  ============================================ -->
    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="<c:url value='/css/vendor/bootstrap.min.css' />">
    <!-- FontAwesome -->
    <link rel="stylesheet" href="<c:url value='/css/vendor/font.awesome.min.css' />">
    <!-- Ionicons -->
    <link rel="stylesheet" href="<c:url value='/css/vendor/ionicons.min.css' />">
    <!-- Slick CSS -->
    <link rel="stylesheet" href="<c:url value='/css/plugins/slick.min.css' />">
    <!-- Animation -->
    <link rel="stylesheet" href="<c:url value='/css/plugins/animate.min.css' />">
    <!-- jQuery Ui -->
    <link rel="stylesheet" href="<c:url value='/css/plugins/jquery-ui.min.css' />">
    <!-- Nice Select -->
    <link rel="stylesheet" href="<c:url value='/css/plugins/nice-select.min.css' />">
    <!-- Magnific Popup -->
    <link rel="stylesheet" href="<c:url value='/css/plugins/magnific-popup.css' />">

    <!-- Vendor & Plugins CSS (Please remove the comment from below vendor.min.css & plugins.min.css for better website load performance and remove css files from the above) -->

    <!-- <link rel="stylesheet" href="assets//css/vendor/vendor.min.css">
         <link rel="stylesheet" href="assets//css/plugins/plugins.min.css"> -->

    <!-- Main Style CSS (Please use minify version for better website load performance) -->
    <link rel="stylesheet" href="<c:url value='/css/style.css' />">
    <!-- <link rel="stylesheet" href="assets//css/style.min.css"> -->
    
    <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
 	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
	<link href="https://fonts.googleapis.com/css?family=Merriweather:400,900,900i" rel="stylesheet">

<!-- JS  ============================================ -->
    <!-- jQuery JS -->
    <script src="<c:url value='/js/vendor/jquery-3.5.1.min.js' />"></script>
    <!-- jQuery Migrate JS -->
    <script src="<c:url value='/js/vendor/jQuery-migrate-3.3.0.min.js' />"></script>
    <!-- Modernizer JS -->
    <script src="<c:url value='/js/vendor/modernizr-2.8.3.min.js' />"></script>
    <!-- Bootstrap JS -->
    <script src="<c:url value='/js/vendor/bootstrap.bundle.min.js' />"></script>
    <!-- Slick Slider JS -->
    <script src="<c:url value='/js/plugins/slick.min.js' />"></script>
    <!-- Countdown JS -->
    <script src="<c:url value='/js/plugins/jquery.countdown.min.js' />"></script>
    <!-- Ajax JS -->
    <script src="<c:url value='/js/plugins/jquery.ajaxchimp.min.js' />"></script>
    <!-- Jquery Nice Select JS -->
    <script src="<c:url value='/js/plugins/jquery.nice-select.min.js' />"></script>
    <!-- Jquery Ui JS -->
    <script src="<c:url value='/js/plugins/jquery-ui.min.js' />"></script>
    <!-- jquery magnific popup js -->
    <script src="<c:url value='/js/plugins/jquery.magnific-popup.min.js' />"></script>

    <!-- Main JS -->
    <script src="<c:url value='/js/main.js' />"></script>
    
    <style>
	.scrolltotop { 
	   background-color: #E98C81; 
	   color: #ffffff; 
	   position: fixed; 
	   right: 50px; 
        /* 	   opacity: 0; */
	    /*    top: 0%;  */
		bottom:16px;
	   width: 50px; 
	   height: 50px; 
	   font-size: 16px; 
	   border-radius: 50%; 
		   -webkit-box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14); 
		           box-shadow: 0 2px 2px 0 rgba(0, 0, 0, 0.14); 
		   -webkit-transition: .9s; 
       /* 		outline:none; */
       /* 		cursor:pointer; */
     }
 
	 .scrolltotop:hover { 
	   background-color: #1B1B1C; 
      }
     </style>
    
<!-- TopBar Start Here -->
    <div class="home-wrapper home-1">
        <!-- Header Area Start Here -->
        <header class="main-header-area">
            <!-- ????????????navbar Start -->
            <div class="main-header">
                <div class="container container-default custom-area">
                    <div class="row">
                        <div class="col-lg-12 col-custom">
                            <div class="row align-items-center">
                                <div class="col-lg-2 col-xl-2 col-sm-6 col-6 col-custom">
                                    <div class="header-logo d-flex align-items-center">
                                        <a href="<c:url value='/' />">
                                            <img class="img-full" src="<c:url value='/images/logo/logo.png' />" alt="Header Logo">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-8 col-xl-7 position-static d-none d-lg-block col-custom">
                                    <nav class="main-nav d-flex justify-content-center">
                                        <ul class="nav">
                                            <li>
                                                <a href="<c:url value='/' />">
                                                    <span class="menu-text"> ??????</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="<c:url value='/showAllShopNameInfo' />">
                                                    <span class="menu-text">??????</span>
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <div class="mega-menu dropdown-hover">
                                                    <div class="menu-colum">
                                                        <ul id="shop_ul">
<%--                                                         <c:forEach var="shopBeanList" items="${shopBeanList}"> --%>
<%--                                                             <li><a href="<c:url value='/findSingleShop/${ shopBeanList.shopID}'/>">${ shopBeanList.shopName}</a></li> --%>
<%--                                                          </c:forEach> --%>
                                                        </ul>
                                                    </div>
<!--                                                     <div class="menu-colum"> -->
<!--                                                         <ul> -->
<!--                                                             <li><span class="mega-menu-text">Location</span></li> -->
<!--                                                             <li><a href="#">??????A</a></li> -->
<!--                                                             <li><a href="#">??????B</a></li> -->
<!--                                                             <li><a href="#">??????C</a></li> -->
<!--                                                             <li><a href="#">??????D</a></li> -->
<!--                                                             <li><a href="#">??????E</a></li> -->
<!--                                                         </ul> -->
<!--                                                     </div> -->
                                                </div>
                                            </li>
                                            <li>
                                                <a href="<c:url value='/getAllProductInfo' />">
                                                    <span class="menu-text">??????</span>
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <div class="mega-menu dropdown-hover">
                                                    <div class="menu-colum">                                                   
                                                        <ul id="product_ul">
<%--                                                            <c:forEach var="productTypeList" items="${productTypeList}"> --%>
<%--                                                                <li><a href="${productTypeList.productTypeID}">${productTypeList.productTypeName}</a></li> --%>
<%--                                                            </c:forEach>  --%>
<!--                                                           <li><a href="#">??????</a></li> -->
<!--                                                           <li><a href="#">??????</a></li> -->                                                             
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <c:if test="${! empty Customer}">                                       
                                            <li>
                                                <a href="#">
                                                    <span class="menu-text">????????????</span>
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <div class="mega-menu dropdown-hover">
                                                    <div class="menu-colum">
                                                        <ul>
                                                            <li><a href="${pageContext.request.contextPath}/customer/profile">????????????</a></li>
                                                            <li><a href="/memberArtical">????????????</a></li>
                                                            <li><a href="<c:url value='/getCustomersAllOrder' />">????????????</a></li>
                                                            <li><a href="<c:url value='/showProductCart' />">?????????</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            </c:if>                                           
                                            <li>
                                                <a href="#">
                                                    <span class="menu-text">??????????????????</span>
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <div class="mega-menu dropdown-hover">
                                                    <div class="menu-colum">
                                                        <ul>
                                                            <li><a href="<c:url value='/addShopForm' />">??????????????????</a></li>
                                                            <c:if test="${! empty LoginOK}">
                                                            <li><a href="<c:url value='/modifyMemberInfo' />">??????????????????</a></li>  
                                                            <li><a href="<c:url value='/showProductCooperateForm' />">??????????????????</a></li>
                                                            <li><a href="<c:url value='/showProductEditFormByShopID/${LoginOK.shopID}' />">??????????????????</a></li>
                                                            </c:if>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>                                           
                                            <li>
                                                <a href="#">
                                                    <span class="menu-text">??????</span>
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <div class="mega-menu dropdown-hover">
                                                    <div class="menu-colum">
                                                        <ul>
                                                            <li><a href="#">??????A</a></li>
                                                            <li><a href="#">??????B</a></li>
                                                            <li><a href="#">??????C</a></li>
                                                            <li><a href="#">??????D</a></li>
                                                            <li><a href="#">??????E</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="menu-text">??????</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="menu-text">????????????</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <div class="col-lg-2 col-xl-3 col-sm-6 col-6 col-custom">
                                    <div class="header-right-area main-nav">
                                        <ul class="nav">
                                            <li class="login-register-wrap d-none d-xl-flex">
                                             <c:if test="${! empty LoginOK}"> 
                                                <span>??????,${LoginOK.shopKeeper}</span>
                                                <span  onclick="return confirm('??????????????????????');"><a href="<c:url value='/logOut' />">??????</a></span>
                                             </c:if>
                                             <c:if test="${! empty Customer}"> 
                                                <span>??????,${Customer.name}</span>
                                                <span  onclick="return confirm('??????????????????????');"><a href="<c:url value='/customerLogout' />">??????</a></span>
                                             </c:if>
                                             <c:if test="${empty LoginOK && empty Customer}">                                     
                                                <span><a href="<c:url value='/customerLoginPage'/> ">??????</a></span>                                            
                                                <span><a href="${pageContext.request.contextPath}/customer/signUpPage">??????</a></span>
                                             </c:if>                                                 
                                            </li>
                                          <!--????????? Star-->
                                            <li class="minicart-wrap">
                                                <a href="#" class="minicart-btn toolbar-btn">
                                                    <i class="ion-bag"></i>
                                                    <span class="cart-item_count"></span>
                                                </a>
                                                <div class="cart-item-wrapper dropdown-sidemenu dropdown-hover-2">
                                                <!--?????????Item Star-->
                                                <div id="cart">
<!--                                                    <div class="single-cart-item" id="cart"> -->
<!--                                                        <div class="cart-img"> -->
<!--                                                           <a href="cart.html"><img src="" alt=""></a> -->
<!--                                                        </div> -->
<!--                                                        <div class="cart-text"> -->
<!--                                                             <h5 class="title"><a href="cart.html">11. Product with video - navy</a></h5> -->
<!--                                                             <div class="cart-text-btn"> -->
<!--                                                                 <div class="cart-qty"> -->
<!--                                                                     <span>1??</span> -->
<!--                                                                     <span class="cart-price">$98.00</span> -->
<!--                                                                 </div> -->
<!--                                                                 <button type="button"><i class="ion-trash-b"></i></button> -->
<!--                                                              </div> -->
<!--                                                         </div> -->
<!--                                                     </div> -->
                                                 </div>
                                                 <!--?????????Item End-->                                                       
                                                    <div class="cart-price-total d-flex justify-content-between">
                                                       <h5>Total :</h5>
                                                       <h5>$166.00</h5>
                                                    </div>
                                                    <div class="cart-links d-flex justify-content-center">
                                                       <a class="obrien-button white-btn" href="cart.html">View cart</a>
                                                       <a class="obrien-button white-btn" href="checkout.html">Checkout</a>
                                                    </div>
                                                 </div>
                                            </li>
                                           <!--????????? End-->
                                            <li class="mobile-menu-btn d-lg-none">
                                                <a class="off-canvas-btn" href="#">
                                                    <i class="fa fa-bars"></i>
                                                </a>
                                            </li>
                                        </ul>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- ????????????navbar Area End -->
            <!-- ??????navbar Start Here-->
            <div class="main-header header-sticky">
                <div class="container container-default custom-area">
                    <div class="row">
                        <div class="col-lg-12 col-custom">
                            <div class="row align-items-center">
                                <div class="col-lg-2 col-xl-2 col-sm-6 col-6 col-custom">
                                    <div class="header-logo d-flex align-items-center">
                                       <a href="<c:url value='/' />">
                                            <img class="img-full" src="<c:url value='/images/logo/logo.png' />" alt="Header Logo">
                                        </a>
                                    </div>
                                </div>
                                <div class="col-lg-8 col-xl-7 position-static d-none d-lg-block col-custom">
                                    <nav class="main-nav d-flex justify-content-center">
                                        <ul class="nav">
                                            <li>
                                                <a href="<c:url value='/' />">
                                                    <span class="menu-text"> ??????</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="<c:url value='/showAllShopNameInfo' />">
                                                    <span class="menu-text">??????</span>
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <div class="mega-menu dropdown-hover">
                                                    <div class="menu-colum">
                                                        <ul id="shop_ul_2">
<%--                                                         <c:forEach var="shopBeanList" items="${shopBeanList}"> --%>
<%--                                                             <li><a href="<c:url value='/findSingleShop/${ shopBeanList.shopID}'/>">${ shopBeanList.shopName}</a></li> --%>
<%--                                                          </c:forEach> --%>
                                                        </ul>
                                                    </div>
<!--                                                     <div class="menu-colum"> -->
<!--                                                         <ul> -->
<!--                                                             <li><span class="mega-menu-text">Location</span></li> -->
<!--                                                             <li><a href="#">??????A</a></li> -->
<!--                                                             <li><a href="#">??????B</a></li> -->
<!--                                                             <li><a href="#">??????C</a></li> -->
<!--                                                             <li><a href="#">??????D</a></li> -->
<!--                                                             <li><a href="#">??????E</a></li> -->
<!--                                                         </ul> -->
<!--                                                     </div> -->
                                                </div>
                                            </li>
                                            <li>
                                                <a href="<c:url value='/getAllProductInfo' />">
                                                    <span class="menu-text">??????</span>
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <div class="mega-menu dropdown-hover">
                                                    <div class="menu-colum">                                                   
                                                        <ul id="product_ul_2">
<%--                                                            <c:forEach var="productTypeList" items="${productTypeList}"> --%>
<%--                                                                <li><a href="${productTypeList.productTypeID}">${productTypeList.productTypeName}</a></li> --%>
<%--                                                            </c:forEach>  --%>
<!--                                                           <li><a href="#">??????</a></li> -->
<!--                                                           <li><a href="#">??????</a></li> -->                                                             
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <c:if test="${! empty Customer}">                                       
                                            <li>
                                                <a href="#">
                                                    <span class="menu-text">????????????</span>
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <div class="mega-menu dropdown-hover">
                                                    <div class="menu-colum">
                                                        <ul>   
                                                            <li><a href="${pageContext.request.contextPath}/customer/profile">????????????</a></li>
                                                            <li><a href="/memberArtical">????????????</a></li>
                                                            <li><a href="<c:url value='/getCustomersAllOrder' />">????????????</a></li>
                                                            <li><a href="<c:url value='/showProductCart' />">?????????</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            </c:if>                                           
                                            <li>
                                                <a href="#">
                                                    <span class="menu-text">??????????????????</span>
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <div class="mega-menu dropdown-hover">
                                                    <div class="menu-colum">
                                                        <ul>
                                                            <li><a href="<c:url value='/addShopForm' />">??????????????????</a></li>
                                                            <c:if test="${! empty LoginOK}">
                                                            <li><a href="<c:url value='/modifyMemberInfo' />">??????????????????</a></li>  
                                                            <li><a href="<c:url value='/showProductCooperateForm' />">??????????????????</a></li>
                                                            <li><a href="<c:url value='/showProductEditFormByShopID/${LoginOK.shopID}' />">??????????????????</a></li>
                                                            </c:if>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>                                           
                                            <li>
                                                <a href="#">
                                                    <span class="menu-text">??????</span>
                                                    <i class="fa fa-angle-down"></i>
                                                </a>
                                                <div class="mega-menu dropdown-hover">
                                                    <div class="menu-colum">
                                                        <ul>
                                                            <li><a href="#">??????A</a></li>
                                                            <li><a href="#">??????B</a></li>
                                                            <li><a href="#">??????C</a></li>
                                                            <li><a href="#">??????D</a></li>
                                                            <li><a href="#">??????E</a></li>
                                                        </ul>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="menu-text">??????</span>
                                                </a>
                                            </li>
                                            <li>
                                                <a href="#">
                                                    <span class="menu-text">????????????</span>
                                                </a>
                                            </li>
                                        </ul>
                                    </nav>
                                </div>
                                <div class="col-lg-2 col-xl-3 col-sm-6 col-6 col-custom">
                                    <div class="header-right-area main-nav">
                                        <ul class="nav">
                                            <li class="login-register-wrap d-none d-xl-flex">
                                             <c:if test="${! empty LoginOK}"> 
                                                <span>??????,${LoginOK.shopKeeper}</span>
                                                <span  onclick="return confirm('??????????????????????');"><a href="<c:url value='/logOut' />">??????</a></span>
                                             </c:if>
                                             <c:if test="${! empty Customer}"> 
                                                <span>??????,${Customer.name}</span>
                                                <span  onclick="return confirm('??????????????????????');"><a href="<c:url value='/customerLogout' />">??????</a></span>
                                             </c:if>
                                             <c:if test="${empty LoginOK && empty Customer}">                                     
                                                <span><a href="<c:url value='/customerLoginPage'/> ">??????</a></span>                                            
                                                <span><a href="${pageContext.request.contextPath}/customer/signUpPage">??????</a></span>
                                             </c:if>                                                 
                                            </li>
                                            <li class="minicart-wrap">
                                                <a href="#" class="minicart-btn toolbar-btn">
                                                    <i class="ion-bag"></i>
                                                    <span class="cart-item_count"></span>
                                                </a>
                                         <!--????????? Star-->
                                                 <div class="cart-item-wrapper dropdown-sidemenu dropdown-hover-2">
                                                    <div class="single-cart-item">
                                                        <div class="cart-img">
                                                           <a href="cart.html"><img src="" alt=""></a>
                                                        </div>
                                                        <div class="cart-text">
                                                             <h5 class="title"><a href="cart.html">11. Product with video - navy</a></h5>
                                                             <div class="cart-text-btn">
                                                                 <div class="cart-qty">
                                                                     <span>1??</span>
                                                                     <span class="cart-price">$98.00</span>
                                                                 </div>
                                                                 <button type="button"><i class="ion-trash-b"></i></button>
                                                              </div>
                                                         </div>
                                                     </div>                                                     
                                                     <div class="cart-price-total d-flex justify-content-between">
                                                        <h5>Total :</h5>
                                                        <h5>$166.00</h5>
                                                     </div>
                                                     <div class="cart-links d-flex justify-content-center">
                                                        <a class="obrien-button white-btn" href="cart.html">View cart</a>
                                                        <a class="obrien-button white-btn" href="checkout.html">Checkout</a>
                                                     </div>
                                                   </div>
                                           <!--????????? End-->          
                                                 </li>
                                                 <li class="mobile-menu-btn d-lg-none">
                                                    <a class="off-canvas-btn" href="#">
                                                       <i class="fa fa-bars"></i>
                                                    </a>
                                                 </li>
                                              </ul>
                                           </div>
                                        </div>
                                     </div>
                                 </div>
                             </div>
                         </div>
                     </div>
            <!-- ??????navbar End Here -->
        </header>
    </div>
<!-- TopBar End Here -->   
    <button class ="scrolltotop">
    	<i class="material-icons">arrow_upward</i>
    </button>
    
<Script>
//????????????
    const scrollToTop = document.querySelector(".scrolltotop");	
	scrollToTop.addEventListener("click",function(){
 		$("html, body").animate({scrollTop:0 }, "slow" );
	});	
	
	document.addEventListener("scroll",(e)=>{
		if(document.documentElement.scrollTop <= 150){
			scrollToTop.style.display="none";
		}else{
			scrollToTop.style.display="block";
		}
	})
	
// ??????????????????
var xhr0 = new XMLHttpRequest();               
var shopList = [];
xhr0.open("GET","<c:url value='/findAllShop.json' />",true);
xhr0.send();
xhr0.onreadystatechange = function(){
    if(xhr0.readyState == 4 && xhr0.status == 200){
    	var shops = JSON.parse(xhr0.responseText);//????????????JSON????????????javaScript??????
    	var context = "";
            for (var i = 0; i < shops.length; i++) {          	
            	context += "<li><a href=\"<c:url value='/findSingleShop/"
            	        + shops[i].shopID
            	        + "'/>\">"
            	        + shops[i].shopName
            	        + "</a></li>"
        	}                  		
    		var divs1 = document.getElementById("shop_ul");
    		var divs2 = document.getElementById("shop_ul_2"); 
       		divs1.innerHTML = context;
       		divs2.innerHTML = context;           	                   	                    	                 	        
    }
}

//????????????????????????
var xhr1 = new XMLHttpRequest();               
var productTypeList = [];
xhr1.open("GET","<c:url value='/getAllProductTypeList.json' />",true);
xhr1.send();
xhr1.onreadystatechange = function(){
    if(xhr1.readyState == 4 && xhr1.status == 200){
    	var productTypeList = JSON.parse(xhr1.responseText);//????????????JSON????????????javaScript??????
    	var context = "";
            for (var i = 0; i < productTypeList.length; i++) {          	
            	context += "<li><a href=\"<c:url value='/getProductListByTypeID/"
            	        + productTypeList[i].productTypeID
            	        + "'/>\">"
            	        + productTypeList[i].productTypeName
            	        + "</a></li>"
        	}                  		
    		var divs1 = document.getElementById("product_ul");
    		var divs2 = document.getElementById("product_ul_2"); 
       		divs1.innerHTML = context;
       		divs2.innerHTML = context;           	                   	                    	                 	        
    }
}

</Script>