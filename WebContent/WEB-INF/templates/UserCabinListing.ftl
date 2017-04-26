<!DOCTYPE html>
<html>

<head>
    
    <meta charset="UTF-8">
	<title>Compare Cabins</title>
    
    <style>
    
    .container
    {
    	padding-left: 5px;
    	padding-right: 10px;
    	border-style: solid;
    	margin-left: .5cm;
    	margin-right: .5cm;
    }
    
    h1 
    {
    	font-size: 50px;
    }
    
    </style>
    
</head>

<body>

	 <center><h1>USER'S CABINS</h1></center><hr/><br />
	
	<form action="AddCabin" method="post">
    <button name="goToCabin" class="btn">ADD CABIN</button>
    </form>
    <br />
    <hr>
    <br />

	<#list userCabins as cabin>
	
		<div class = "container">
		
			<img src="placeholder_600x400.svg" alt="thumbnail" style="width:410px;height:200px;display:block;margin:auto;float:left;vertical-align:middle">
		
			<h2>${cabin.title}</h2>
			<hr>
			
			<p>
				Description: ${cabin.description}<br />
				Address: ${cabin.address}<br />
				City: ${cabin.city}<br />
				State: ${cabin.state}<br />
			</p>
			
			<form action="UserCabinListing" method="post">
            <button name="userCabinListing" class="btn">EDIT THIS CABIN</button>
            </form>
            <br />
            
		</div>
		
		<br />
	
	</#list>
    
</body>
</html>