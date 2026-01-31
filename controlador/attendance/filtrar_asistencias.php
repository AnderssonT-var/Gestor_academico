<?php
require '../../modelo/modelo_asistencia.php';
$asistensia = new Asistensia;
$fechainicio = htmlspecialchars($_POST['fechainicio'],ENT_QUOTES,'UTF-8');
$fechafin = htmlspecialchars($_POST['fechafin'],ENT_QUOTES,'UTF-8'); 

$id_grade = htmlspecialchars($_POST['id_grade'],ENT_QUOTES,'UTF-8'); 
$id_couse = htmlspecialchars($_POST['id_couse'],ENT_QUOTES,'UTF-8'); 




$consulta = $asistensia->Filtrar_asistencias($fechainicio,$fechafin,$id_grade,$id_couse);

echo json_encode($consulta);


?>