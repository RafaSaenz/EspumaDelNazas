<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Espuma del Nazas</title>
<style type="text/css">
		h5 {	
				text-align: center;
			}
			a{
				text-align: : left;
			}
	</style>
	<link href="<c:url value="/css/zerogrid.css" />" rel="stylesheet">
	<link href="<c:url value="/css/style.css" />" rel="stylesheet">
	<link href="<c:url value="/css/lightbox.css" />" rel="stylesheet">
	
	<!-- Custom Fonts -->
	<link href="<c:url value="/css/font-awesome.min.css" />" rel="stylesheet" type="text/css">
	
	<link href="<c:url value="/css/menu.css" />" rel="stylesheet">
	
	<script src="<c:url value="/js/jquery1111.min.js" />"></script>
	<script src="<c:url value="/js/script.js" />"></script>

	
</head>

<body class="home-page">
	<div class="wrap-body">
		<div class="header">
			<div id='cssmenu' >
				<ul>
				   <li class="active"><a href='index.html'><span>Espuma del Nazas</span></a></li>
				   <li><a href="#productos"><span>Productos</span></a>
					  
				   </li>
				   <li><a href='clientes.html'><span>Clientes</span></a></li>
				   <li><a href='cotizacion.html'><span>Cotizacion</span></a></li>
				   <li><a href='info.html'><span>¿Quiénes Somos?</span></a></li>
				   <li class='last'><a href='contact.html'><span>Contacto</span></a></li>
				</ul>
			</div>
			<div class="custom-banner">
				<img src="images/espumamain3.jpg">
			</div>
		</div>
		<!--Container-->
		<section id="container">
			<div class="wrap-container">
				<!--content-box-1-------------------->
				<section class="content-box boxstyle-1 box-1">
					<div class="zerogrid">
						<div class="row wrap-box"><!--Start Box-->
							<div class="col-1-3">
								<div class="wrap-col">
									<p style="font-size: 1.9rem; font-weight: 300; letter-spacing: .19em; color: #fff; margin-bottom: .62em;">Espuma del Nazas</p>
									<p>
										<div class="uppercase">
											<strong>Promocion de Temporada  </strong>
											<br>
											Proximamente
											<br>
										
										</div>
									</p>
								</div>
							</div>
							<div class="col-1-3">
								<div class="wrap-col">
									<div class="row">
										<h3 class="widget-title">Donde Encontrarnos</h3>
										<address>
											<strong>Torreon, Coahuila</strong>
											<br>
											Avenida Colon No. 361 Sur
											<br>
											
										</address>
										<p>
											<strong>Horario:</strong>
											<br>
											Mon - Fri: 9:00 - 21:00
											<br>
											Sat - Sun: 9:00 - 2:00
										</p>
									</div>
								</div>
							</div>
							<div class="col-1-3">
								<div class="wrap-col">
									<div class="row">
										<h3 class="widget-title">Eventos</h3>
										<p>
										Oktober Fest 2016
										<br>
										Costeñito Fest 2016
										<br>
								
										</p>
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-----------------content-box-2-------------------->
				<section class="content-box box-2">
					<div class="zerogrid">
						<div class="row wrap-box"><!--Start Box-->
							<div class="header">
								<div class="wrapper">
									<h2 class="color-blue" id = "productos">Productos</h2>
								</div>
							</div>

				<table>

				<!-- Connection to the DB using PHP -->
				<?php
				 $servername = "localhost";
				 $username = "root";
				 $password = "MySQL95$";
				 $dbname = "espumadelnazas";
				 	$conn = new mysqli($servername, $username, $password, $dbname);

				 	if($conn->connect_error){
				 		die ("connection failed: " . $conn->connect_error);


				 	}


				 	$sql="SELECT * FROM productos";
				 	$result = $conn->query($sql);

				 	//If products exist in DB...
				 	if($result -> num_rows > 0){

					//Add products to the main page
				 	while($row = $result->fetch_assoc()){


				 	echo '<div class="row">';
					echo '<div class="col-1-3">';
					echo '<div class="wrap-col">';
				 	echo '<tr><td>';
					echo '<div class="products-image">';
					echo '<img src= "id_admin/html/images/imagesDB/'.$row["image"].'" alt=""></td>';
				 	echo '<div class="portfolio-box-caption">';
					echo '<div class="portfolio-box-caption-content">';
													
					echo '<div class="project-name">';
					echo '<td><a>Nombre: </a>'.$row['productname'].'
					<br><a>Tipo: </a>'.$row['producttype'].'
					<br><a>Precio: $</a>'.$row['price'].'
					<a>M.N.</a>
					<br><a>Descripción: </a>'.$row['description'].'
					</td></tr>';
														
					echo '</div>';
					echo '</div>';
					echo '</div>';
					echo '</div>';

				 	}
				 	
				 	}
				 	//Add products to the maing page END
				 	else {

				 	echo "0 results";

				 	}
				 	?>

				</table>

							
								
									</div>
								</div>
							</div>
						</div>
					</div>
				</section>
				<!-----------------content-box-3-------------------->
				<section class="content-box boxstyle-2 box-3">
					<div class="zerogrid">
						<div class="row wrap-box"><!--Start Box-->
							<div class="row">
								<div class="col-1-2">
									<div class="wrap-col">
										<p class="uppercase">
											<strong>Espuma del Nazas</strong>
											<h5 align="right">"Aquí hay cervezas mas frias que el corazón de tu ex."</h5>
										</p>
										<img src="images/espumanazas.png">
										
									</div>
								</div>
							</div>
						</div>
					</div>

				</section>
				
			</div>
		</section>
		<!--////////////////////////////////////Footer-->
		<footer>
			
			<div class="copyright">
				<div class="zerogrid wrapper">
					Copyright @ Espuma del Nazas - <a href="http://www.html5xcss3.com" target="_blank" rel="nofollow"></a> Designed by Alberto Leon, Eliezer Hernandez, Rafael Saenz
					<ul class="quick-link">
						<li><a href="privacypolicy.htm">Privacy Policy</a></li>
						<li><a href="#">Terms of Use</a></li>
					</ul>
				</div>
			</div>
		</footer>
	</div>
</body>
</html>