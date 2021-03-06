<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->
<title>Compare Cabins</title>

<!-- Bootstrap -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.0/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/styles.css" rel="stylesheet">
<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
      <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

<link href="css/homePage.css" rel="stylesheet" />
<script src="scripts/jquery-3.2.1.js" type="text/javascript"></script>
<script src="scripts/jquery-ui.js" type="text/javascript"></script>
<script src="scripts/loadTest.js" type="text/javascript"></script>

</head>
<body>
	<#include "Header.ftl">
	<div class="container">
		<div class="panel panel-default">
			<div class="panel-body">
				<div class="container-fluid">
					<img src="cabinPictures/cabinBanner.jpeg"class="img-rounded img-responsive center-block">
				</div>
				<div class="control-group text-center">
					<form action="Search" method="get">
						<div class="row">
							<div class="col-sm-4 controls span2">
								<label class="checkbox"> <input type="checkbox"
									name="hasLake" />Lake
								</label> <label class="checkbox"> <input type="checkbox"
									name="hasRiver" />River
								</label> <label class="checkbox"> <input type="checkbox"
									name="hasPool" />Pool
								</label>
							</div>
							<div class="col-sm-4 controls span2">
								<label class="checkbox"> <input type="checkbox"
									name="hasHotTub" />Hot tub
								</label> <label class="checkbox"> <input type="checkbox"
									name="hasWifi" />WiFi
								</label> <label class="checkbox"> <input type="checkbox"
									name="hasAirConditioning" />Air Conditioning
								</label>
							</div>
							<div class="col-sm-4 controls span2">
								<label class="checkbox"> <input type="checkbox"
									name="hasWasherDryer" />Washer Dryer
								</label> <label class="checkbox"> <input type="checkbox"
									name="allowsPets" />Allows Pets
								</label> <label class="checkbox"> <input type="checkbox"
									name="allowsSmoking" />Allows Smoking<br>
								</label>
							</div>
						</div>

						<hr>
						<div class="row">
							<div class="col-sm-6">
								<input type="date" class="form-control" name="startAvailability" />Start
								Date<br>
							</div>
							<div class="col-sm-6">
								<input type="date" class="form-control" name="endAvailability" />End
								Date<br>
							</div>
						</div>
						<input id="searchButton" class="btn btn-block" type="submit"
							value="Search Cabins">
					</form>
				</div>



				<div id="results" class="center-block text-center">
					<h2 class="text-center">Cabins</h2>

				</div>
			</div>
		</div>
	</div>
</body>
</html>