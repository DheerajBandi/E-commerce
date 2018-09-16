<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ include file="header.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>FlipKart</title>
</head>
<body>
	<!--  <div class="container">-->
	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
		</ol>
		<div class="carousel-inner" role="listbox">
			<div class="item active" style="width: 100%; height: 280px">

				<a href="<c:url value='/all/searchByCategory?searchCondition=Electronics'></c:url>"><img src="resources/images/ebay.PNG" alt="first slide"></a>
				<div class="container">
					<div class="carousel-caption">
						  <h1> Wide range of Mobiles</h1>
						  
							<p>Amazing Deals!!!</p> 
					</div>
				</div>
			</div>
			<div class="item" style="width: 100%; height: 280px">
				<a href="<c:url value='/all/searchByCategory?searchCondition=Clothing'></c:url>"><img src="resources/images/fashion1.jpg" alt="Second slide"></a>
				<div class="container">
					<div class="carousel-caption">
						 <h1>All branded clothes</h1>
							<p>FLAT 10% off</p> 
					</div>
				</div>
			</div>
			<div class="item" style="width: 100%; height: 280px">
				<a href="<c:url value='/all/searchByCategory?searchCondition=Footwear'></c:url>"><img src="resources/images/footwear.jpg" alt="Third slide"></a>
				<div class="container">
					<div class="carousel-caption">
						  <h1>Branded Footwear</h1>
							<p>FLAT 20% HURRY UP!!!</p> 
					</div>
				</div>
			</div>
			<div class="item" style="width: 100%; height: 280px">
				<a href="<c:url value='/all/searchByCategory?searchCondition=Furniture'></c:url>"><img src="resources/images/fur.jpg" alt="forth slide"></a>
				<div class="container">
					<div class="carousel-caption">
						  <h1>Design your home more beautiful</h1>
							<p>End of Season SALE!!!</p> 
					</div>
				</div>
			</div>
			<div class="item" style="width: 100%; height: 280px">
				<a href="<c:url value='/all/searchByCategory?searchCondition=Mobile Accessories'></c:url>"><img src="resources/images/accessories.jpg" alt="Fifth slide slide"></a>
				<div class="container">
					<div class="carousel-caption">
						  <h1>All Accessories Available</h1>
							<p>Pick Your Best Here</p>
					</div>
				</div>
			</div>
			
		</div>
		<a class="left carousel-control" href="#myCarousel" role="button"
			data-slide="prev"> <span class="glyphicon glyphicon-chevron-left"></span>
			<span class="sr-only">Previous</span>
		</a> <a class="right carousel-control" href="#myCarousel" role="button"
			data-slide="next"> <span
			class="glyphicon glyphicon-chevron-right"></span> <span
			class="sr-only">Next</span>
		</a><br></br>

	</div>
	<div class="container"><br><br>
	<h2>Deals of the Day : </h2><br><br>
		<div class="row">
			<c:forEach items="${productsList}" var="p">
				<div class="col-lg-3">
					<center>
						<img src="<c:url value='/resources/images/${p.id}.png'></c:url>"
							height="250px" width="200px"></a><br> <b>${p.productname}<br>
							<span style="color: red;">${p.price}</span></b><br><br>
							<security:authorize access="hasRole('ROLE_USER')">
							<a href="<c:url value='/all/getproduct/${p.id }'></c:url>"><span class="glyphicon glyphicon-shopping-cart" ></span>Add To Cart</a>
							
							</security:authorize>
							<br><br><br><br><br><br>
					</center>
				</div>

			</c:forEach>
		</div>




	</div>



</body>
</html>