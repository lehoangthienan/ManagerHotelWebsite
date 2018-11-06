<!DOCTYPE html>
<html lang="en">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
		<title>Xây dựng website</title>
		<link rel="stylesheet" type="text/css" href="css/style.css">
		<link rel="stylesheet" type="text/css" href="css/superfish.css">
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.5.0/css/font-awesome.min.css">
		<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min.css">
		<script type="text/javascript" src="js/jquery1.js"></script>
		<script type="text/javascript" src="js/jquery.js"></script>
		<script type="text/javascript" src="js/wowslider.js"></script>
		<script type="text/javascript" src="js/script.js"></script>
		<script type="text/javascript" src="js/superfish.js"></script>
		<script>
            jQuery(document).ready(function(){
                jQuery('ul.sf-menu').superfish();
            });
        </script>
		<script type="text/javascript" src="js/bootstrap.min.js"></script>
	</head>
	<body>
		<div class="container">
			<div class="row">
                 <div class="col-lg-12 col-md-12 col-xs-12 col-sm-12" id="header">                  
					<div class="hotel-name">
						<img class="anh-logo" src="./images/mau-thiet-ke-logo-khach-san-chariot-003.png "></img>
					 </div>
                 	<div id="menu">
                 			<?php

                 				include('inc/myconnect.php');
                 				include('inc/function.php');
                 				menu_dacap();
                 			?>
                 		<div class="clearfix"></div>
                 		<div id="search">
                 			<form name="frmsearch" method="POST" action="">
                 				<input type="text" name="ten" value="" placeholder="Tìm kiếm từ khóa">
                 				<input type="submit" name="submit" value="Tìm kiếm">
                 			</form>		
                 		</div>
                 	</div>
                 </div>
			</div>
		
		
		
		
		