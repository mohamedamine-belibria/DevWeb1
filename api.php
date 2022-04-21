<?php
header("Content-Type:application/json");
include('connection.php');
$request_method = $_SERVER["REQUEST_METHOD"];

function getArticles()
{
    global $con;
    $query = "SELECT * FROM theme , article WHERE theme.IdTheme=article.IdTheme";
    $result = mysqli_query($con,$query);
    $row = mysqli_fetch_array($result,MYSQLI_ASSOC);

    $id = $row['id'];
    $response["article$id"] = $row;

    while($row = mysqli_fetch_array($result,MYSQLI_ASSOC))
    {
        $id = $row['id'];
        $response["article$id"] = $row;
    }
    header('Content-Type: application/json');
    echo json_encode($response, JSON_PRETTY_PRINT);
}


if($request_method=="GET") {
getArticles();

}




