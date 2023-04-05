<?php
$hostname = "localhost";
$user = "root";
$password = "Astrag.2001";
$db = "fundacion";

$connection = mysqli_connect($hostname , $user , $password, $db);

mysqli_select_db ($connection, $db);
var_dump ($connection);

$result = mysqli_query $connection,"SELECT  values nombre,
apellido, fk_empresas FROM Alumnos";

