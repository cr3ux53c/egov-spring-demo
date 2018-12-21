<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>

<html lang="zxx" class="no-js">
<head>
<!-- Mobile Specific Meta -->
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<!-- Favicon-->
<link rel="shortcut icon" href="img/fav.png">
<!-- Author Meta -->
<meta name="author" content="codepixer">
<!-- Meta Description -->
<meta name="description" content="">
<!-- Meta Keyword -->
<meta name="keywords" content="">
<!-- meta character set -->
<meta charset="UTF-8">
<!-- Site Title -->
<title>KNUT_TEST</title>


<link
	href="https://fonts.googleapis.com/css?family=Poppins:100,200,400,300,500,600,700"
	rel="stylesheet">
<!--
			CSS
			============================================= -->
<link rel="stylesheet" href="css/linearicons.css">
<link rel="stylesheet" href="css/font-awesome.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/magnific-popup.css">
<link rel="stylesheet" href="css/nice-select.css">
<link rel="stylesheet" href="css/hexagons.min.css">
<link rel="stylesheet" href="css/animate.min.css">
<link rel="stylesheet" href="css/owl.carousel.css">
<link rel="stylesheet" href="css/main.css">
</head>
<body>

	<header id="header" id="home">
		<div class="container">
			<div class="row align-items-center justify-content-between d-flex">
				<div id="logo">
					<a href="index.jsp"><img src="img/logo.png" alt="" title="" /></a>
				</div>
				<nav id="nav-menu-container">
					<ul class="nav-menu">
						<li class="menu-active"><a href="#home">Home</a></li>
						<li><a href="#contact">Maps</a></li>
					</ul>
				</nav>
				<!-- #nav-menu-container -->
			</div>
		</div>
	</header>
	<!-- #header -->


	<!-- start banner Area -->
	<section class="banner-area relative" id="home">
		<div class="overlay overlay-bg"></div>
		<div class="container">
			<div
				class="row fullscreen d-flex align-items-center justify-content-start">
				<div class="banner-content col-lg-9 col-md-12">
					<h1 class="text-white text-uppercase">Find Your Location</h1>
					<p class="text-white">Your Location Search Easliy using
						KakaoMap API</p>
					<a href="#contact" class="primary-btn text-uppercase">Start
						with Us</a>
				</div>
			</div>
		</div>
	</section>
	<!-- End banner Area -->


	<!-- Start quote Area -->
	<section class="quote-area pt-100">
		<div class="container">
			<div class="row align-items-center">
				<div class="col-lg-5 col-sm-12 quote-left">
					<h2 class="text-right">
						<span>Find</span> Your<br> Location<br> <span>WebApps</span>.
					</h2>
				</div>
				<div class="col-lg-7 col-sm-12 quote-right">
					<p class="text-left">You can easyliy search your Location.</p>
				</div>
			</div>
		</div>
	</section>
	<!-- End quote Area -->


	<!-- Start callto-action-area Area -->
	<section class="callto-action-area section-gap" id="contact"
		style="padding: 10px">
		<div class="container">
			<div class="row justify-content-center">
				<div class="col-lg-9">
					<h1 class="text-white">Find Your Location Using Kakao API</h1>
					<p class="text-white">You can insert location in textbox</p>
					<a class="primary-btn" href="#home">Go to HOME</a>
				</div>
			</div>
		</div>
	</section>
	<!-- End callto-action-area Area -->

	<!-- Start contact Area -->
	<section class="contact-area">
		<div class="container">
			<div class="contact-section">
				<div class="row align-items-center" align="center">
					<div class="col-lg-4 contact-left">
						<div style="width: 100%; height: 545px;" id="map"></div>
					</div>
					<div class="col-lg-7 contact-center" align="center">
						<form name="myForm" action="index.do"
							class="contact-form text-right">
							<input class="form-control" type="text" name="text" id="text1">&nbsp;&nbsp;
							<input type='submit' id="search" class="primary-btn mt-20">
						</form>
						<form id="list" action="index.do" align="center">
							<%-- 							<c:forEach items="${key}" var="data"> --%>
							<%-- 								<input class="btn btn-default" type="submit" name=text value="${data.searchText}"> --%>
							<%-- 								&nbsp;&nbsp;${data.searchDate}<BR> --%>
							<%-- 							</c:forEach> --%>
						</form>
					</div>
				</div>
			</div>
		</div>
	</section>


	<!-- start footer Area -->
	<footer class="footer-area section-gap">
		<div class="container">
			<div class="row">
				<div class="col-lg-5 col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>About Us</h6>
						<p>Department of Software, Korea National University of
							Transportation</p>
						<p class="footer-text">
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
							Copyright &copy;
							<script>
								document.write(new Date().getFullYear());
							</script>
							All rights reserved | This template is made with <i
								class="fa fa-heart-o" aria-hidden="true"></i> by <a
								href="https://colorlib.com" target="_blank">Colorlib</a>
							Re-distributed by <a target="_blank" href="www.Themewagon.com">Themewagon</a>
							<!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
						</p>
					</div>
				</div>
				<div class="col-lg-5  col-md-6 col-sm-6">
					<div class="single-footer-widget">
						<h6>Newsletter</h6>
						<p>Stay update with our latest</p>
						<div class="" id="mc_embed_signup">
							<form target="_blank" novalidate="true"
								action="https://spondonit.us12.list-manage.com/subscribe/post?u=1462626880ade1ac87bd9c93a&amp;id=92a4423d01"
								method="get" class="form-inline">
								<input class="form-control" name="EMAIL"
									placeholder="Enter Email" onfocus="this.placeholder = ''"
									onblur="this.placeholder = 'Enter Email '" required=""
									type="email">
								<button class="click-btn btn btn-default">
									<i class="fa fa-long-arrow-right" aria-hidden="true"></i>
								</button>
								<div style="position: absolute; left: -5000px;">
									<input name="b_36c4fd991d266f23781ded980_aefe40901a"
										tabindex="-1" value="" type="text">
								</div>

								<div class="info"></div>
							</form>
						</div>
					</div>
				</div>
				<div class="col-lg-2 col-md-6 col-sm-6 social-widget">
					<div class="single-footer-widget">
						<h6>Follow Us</h6>
						<p>Let us be social</p>
						<div class="footer-social d-flex align-items-center">
							<a href="#"><i class="fa fa-facebook"></i></a> <a href="#"><i
								class="fa fa-twitter"></i></a> <a href="#"><i
								class="fa fa-dribbble"></i></a> <a href="#"><i
								class="fa fa-behance"></i></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- End footer Area -->

	<script src="js/vendor/jquery-2.2.4.min.js"></script>
	<script
		src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
		integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
		crossorigin="anonymous"></script>
	<script src="js/vendor/bootstrap.min.js"></script>

	<!--<script type="text/javascript" src="https://maps.googleapis.com/maps/api/js?key=AIzaSyCeXFx9JBp-9XcyJax0fzbDavERkLCL4nA"></script>-->
	<script src="js/easing.min.js"></script>
	<script type="text/javascript"
		src="//dapi.kakao.com/v2/maps/sdk.js?appkey=a27411d7f467e9470b9d2986a60599b0&libraries=services"></script>
	<script>
		function dateToYYYYMMDD(date) {
			function pad(num) {
				num = num + '';
				return num.length < 2 ? '0' + num : num;
			}
			return date.getFullYear() + '-' + pad(date.getMonth() + 1) + '-'
					+ pad(date.getDate()) + ', ' + date.getHours() + ':'
					+ date.getMinutes();
		}

		function getList() {
			$
					.ajax({
						url : "select.do",
						data : {},
						success : function(res) {
							var html = '';
							for (var i = 0; i < res.length; i++) {
								html += '<input class="btn btn-default" type="submit" name="area" value="' + res[i].searchText + '">';
								var date = new Date(res[i].searchDate);
								html += '&nbsp;&nbsp;' + dateToYYYYMMDD(date)
										+ '<br>';
							}

							$('#list').html(html);

						}
					})
		}
		getList();

		$(document).on('click', 'input[name=area]', function() {
			var area = $(this).val();
			$.ajax({
				url : "insert.do",
				data : {
					'text' : area
				},
				success : function(res) {
					getList();
					Location = area;
					ps.keywordSearch(Location, placesSearchCB);
				}
			})

			return false;
		});

		var Location;
		$('#search').click(function() {
			Location = $('input[name=text]').val();
			ps.keywordSearch(Location, placesSearchCB);

			$.ajax({
				url : "insert.do",
				data : {
					'text' : $('input[name=text]').val()
				},
				success : function(res) {
					getList();
				}
			})

			return false;

		});

		// 마커를 클릭하면 장소명을 표출할 인포윈도우 입니다
		var infowindow = new daum.maps.InfoWindow({
			zIndex : 1
		});

		var mapContainer = document.getElementById('map'), // 지도를 표시할 div 
		mapOption = {
			center : new daum.maps.LatLng(37.566826, 126.9786567), // 지도의 중심좌표
			level : 3
		// 지도의 확대 레벨
		};

		// 지도를 생성합니다    
		var map = new daum.maps.Map(mapContainer, mapOption);
		// 장소 검색 객체를 생성합니다
		var ps = new daum.maps.services.Places();

		ps.keywordSearch("한국교통대학교", placesSearchCB);

		// 키워드 검색 완료 시 호출되는 콜백함수 입니다
		function placesSearchCB(data, status, pagination) {
			if (status === daum.maps.services.Status.OK) {
				// 검색된 장소 위치를 기준으로 지도 범위를 재설정하기위해
				// LatLngBounds 객체에 좌표를 추가합니다
				var bounds = new daum.maps.LatLngBounds();
				for (var i = 0; i < data.length; i++) {
					displayMarker(data[i]);
					bounds.extend(new daum.maps.LatLng(data[i].y, data[i].x));
				}

				// 검색된 장소 위치를 기준으로 지도 범위를 재설정합니다
				map.setBounds(bounds);
			}
		}

		// 지도에 마커를 표시하는 함수입니다
		function displayMarker(place) {

			// 마커를 생성하고 지도에 표시합니다
			var marker = new daum.maps.Marker({
				map : map,
				position : new daum.maps.LatLng(place.y, place.x)
			});

			// 마커에 클릭이벤트를 등록합니다
			daum.maps.event.addListener(marker, 'click', function() {
				// 마커를 클릭하면 장소명이 인포윈도우에 표출됩니다
				infowindow
						.setContent('<div style="padding:5px;font-size:12px;">'
								+ place.place_name + '</div>');
				infowindow.open(map, marker);
			});
		}
	</script>

	<script src="js/hoverIntent.js"></script>
	<script src="js/superfish.min.js"></script>
	<script src="js/jquery.ajaxchimp.min.js"></script>
	<script src="js/jquery.magnific-popup.min.js"></script>
	<script src="js/owl.carousel.min.js"></script>
	<script src="js/jquery.sticky.js"></script>
	<script src="js/jquery.nice-select.min.js"></script>
	<script src="js/hexagons.min.js"></script>
	<script src="js/waypoints.min.js"></script>
	<script src="js/jquery.counterup.min.js"></script>
	<script src="js/mail-script.js"></script>
	<script src="js/main.js"></script>
</body>
</html>



