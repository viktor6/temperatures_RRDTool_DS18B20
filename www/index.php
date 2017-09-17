
<html>
<head>
  <meta http-equiv="cache-control" content="no-cache">
  <meta http-equiv="refresh" content="3600" >
  <title>RPi Temperature</title>
  <style>
      BODY 
      { 
        font-family: arial; 
        font-size: 10pt;
        background-repeat: no-repeat; background-position: center center; 
      }

      H2, H3 { margin-bottom: 0; }
  </style>
</head>
<body>
  <div style="width: 800px; margin-left: 100px;" >
    <h2>RPi Temperature Inside & Outside</h2>
    <i>Last Modified: 
	
	<?php

$filename = 'temp_daily.png';
if (file_exists($filename)) {
    echo  date ("F d Y H:i:s.", filemtime($filename));
}
?>
	</i>
    <h3>Hourly</h3>
    <img src="temp_hourly.png" />

    <h3>Daily</h3>
    <img src="temp_daily.png" />

    <h3>Weekly</h3>
    <img src="temp_weekly.png" />

    <h3>Monthly</h3>
    <img src="temp_monthly.png" />

    <h3>Yearly</h3>
    <img src="temp_yearly.png" />
  </div>
</body>
</html>
