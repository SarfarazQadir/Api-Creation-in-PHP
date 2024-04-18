!<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta http-equiv="X-UA-Compatible" content="ie=edge">
<meta name="Description" content="Enter your description here"/>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
<link rel="stylesheet" href="assets/css/style.css">
<title>Api Creation in PHP</title>
</head>
<body>
<h1 class="text-center">Api Creation in PHP</h1>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/2.9.2/umd/popper.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/5.1.0/js/bootstrap.min.js"></script>
</body>
</html>

<?php

$con = mysqli_connect("localhost","root","","vaccination_management_system");
$response = array();
if($con){
$query = "SELECT * FROM `hospital_details`";
$result = mysqli_query($con,$query);


if($result){
    $i= 0;
    header("Content-Type:json");

    while($row = mysqli_fetch_assoc($result)){
        $response[$i]['hospital_id'] = $row['hospital_id'];
        $response[$i]['hospital_name'] = $row['hospital_name'];
        $response[$i]['hospital_username'] = $row['hospital_username'];
        $response[$i]['hospital_password'] = $row['hospital_password'];
        $response[$i]['hospital_email'] = $row['hospital_email'];
        $response[$i]['hospital_contact'] = $row['hospital_contact'];
        $response[$i]['hospital_address'] = $row['hospital_address'];
        $response[$i]['hospital_location'] = $row['hospital_location'];
        $response[$i]['status'] = $row['status'];
        $i++;
    }
    echo json_encode($response,JSON_PRETTY_PRINT);
}
else{
    echo "no data found";
}

}


?>
