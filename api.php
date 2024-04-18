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