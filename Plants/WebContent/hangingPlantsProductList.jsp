<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.List"%>
<%@ page import="plantsPackage.HangingPlantProducts"%>
<%@ page import="plantsPackage.HangingPlantProductsDAO"%>
<%@ page import="plantsPackage.HangingPlantsDbCon"%>
<%@ page import="java.sql.SQLException"%>

<%
    HangingPlantProductsDAO pd = new HangingPlantProductsDAO(HangingPlantsDbCon.getConnection());
    String pcategory = request.getParameter("cat");
    List<HangingPlantProducts> hangProd = pd.getAllHangingPlantProducts(pcategory);
%>
<!DOCTYPE html>
<html>
<head>
    <%@ include file="/includes/headJSP/head.jsp"%>
    <title><%= pcategory != null ? pcategory : "Plants" %></title>
</head>
<body>
    <%@ include file="/includes/headJSP/header.jsp"%>
    <ul class="breadcrumb">
        <li><a href="index.jsp">Home > </a></li>
        <li><%= pcategory != null ? pcategory : "Plants" %></li>
    </ul>
    <div class="section-image">
        <img src="includes/css/home2.jpg" alt="Plants">
    </div>
    <div class="container">
        <div class="row">
            <%
                if (!hangProd.isEmpty()) {
                    for (HangingPlantProducts p : hangProd) {
            %>
            <div class="product-card">
                <div class="product-image">
                    <a href="viewProduct.jsp?id=<%=p.getPid()%>" target="_blank">
                        <img src="view.jsp?id=<%=p.getPid()%>" alt="PlantImage">
                    </a>
                </div>
            <div>
                <div class="product-info">
    <h5><%= p.getPname() != null ? p.getPname() : "No Name Available" %></h5>
</div>
                    
                    <div class="rating">
                        <%
                            int rating = p.getRating();
                            for (int i = 1; i <= 5; i++) {
                                if (i <= rating) {
                        %>
                            <i class="fa fa-star"></i>
                        <%
                                } else {
                        %>
                            <l class="fa fa-star"></l>
                        <%
                                }
                            }
                        %>
                        <span>(<%= rating %>/5)</span>
                    </div>
                    <div class="prices-div">
                        <p class="prices">
                            <span><del>&#8377;<%=p.getOriginalprice()%></del></span>
                            <span class="discount-price">&#8377;<%=p.getDiscountprice()%></span>
                        </p>
                    </div>
                </div>
            </div>
            <%
                    }
                } else {
                    out.println("There are no products");
                }
            %>
        </div>
    </div>
</body>
</html>
