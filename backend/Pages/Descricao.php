<?php

require_once("./../db/Database.php");
require_once("./../db/config.php");

require_once('./../Components/Header.php');

$db = new Database();

$query = "SELECT p.*, c.nome AS categoria_nome FROM produtos p JOIN categorias c ON p.id_categoria = c.id WHERE p.id = :id";
$binds = [
    ":id" => $_POST['id']
];

$response = $db->select($query, $binds);
$produto = $response[0];

?>

<div>




</div>



<?php
require_once('./../Components/Footer.php');
?>