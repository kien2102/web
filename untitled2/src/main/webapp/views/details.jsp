<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="f" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix = "fmt" uri = "http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>E-SHOP HTML Template</title>
        <link href="https://fonts.googleapis.com/css?family=Hind:400,700" rel="stylesheet">
        <link type="text/css" rel="stylesheet" href="./css/bootstrap.min.css" />
        <link type="text/css" rel="stylesheet" href="./css/slick.css" />
        <link type="text/css" rel="stylesheet" href="./css/slick-theme.css" />
        <link type="text/css" rel="stylesheet" href="./css/nouislider.min.css" />
        <link rel="stylesheet" href="./css/font-awesome.min.css">
        <link type="text/css" rel="stylesheet" href="./css/style.css" />
    </head>
    <body>
        <header>
            <jsp:include page="header.jsp" flush="true"></jsp:include>
            </header>
            <jsp:include page="menu.jsp" flush="true"></jsp:include>
                <!-- menu nav -->
            </div>
        </div>
        <!-- /container -->
    </div>
    <!-- /NAVIGATION -->
    <!-- section -->
    <div class="section">
        <!-- container -->
        <div class="container">
            <!-- row -->
            <div class="row">
                <!--  Product Details -->
                <div class="product product-details clearfix">
                    <div class="col-md-6">
                        <div id="product-main-view">
                            <div class="product-view">
                                <img src="${sanpham.anh}" alt="">
                            </div>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="product-body">
                            <h2 class="product-name">Tên sản phẩm : ${sanpham.tenSp}</h2>
                            <h3 class="product-price">Giá sản phẩm : <fmt:formatNumber value="${sanpham.gia}"/> VNĐ</h3>
                            <p><strong>Nhà sản xuất:</strong> ${sanpham.maNcc.tenNcc}</p>
                            <p><strong>Mô tả:</strong> E-SHOP</p>
                            <p>${sanpham.mota}</p>
                            <form action="sub.htm" method="post">
                            <div class="product-btns">
                                <div class="qty-input">
                                    <span class="text-uppercase">QTY: </span>
                                    <input class="input" name="maSp" value= "${sanpham.maSp}"  type="hidden">
                                    <input class="input" name="soLuong" type="number" required="required" min="1">
                                </div>
                                <button class="primary-btn add-to-cart" ><i class="fa fa-shopping-cart"></i> Thêm vào giỏ hàng</button>
                            </div>
                            </form>
                        </div>
                    </div>
                </div>
                <!-- /Product Details -->
            </div>
            <!-- /row -->
        </div>
        <!-- /container -->
    </div>

    <jsp:include page="footer.jsp" flush="true"></jsp:include>
    <script src="./js/jquery.min.js"></script>
    <script src="./js/bootstrap.min.js"></script>
    <script src="./js/slick.min.js"></script>
    <script src="./js/nouislider.min.js"></script>
    <script src="./js/jquery.zoom.min.js"></script>
    <script src="./js/main.js"></script>

</body>

</html>

