<?php
require '../../modelo/modelo_asistencia.php';
$asistensia = new Asistensia;

$fechainicio = htmlspecialchars($_POST['fechainicio'],ENT_QUOTES,'UTF-8');
$fechafin = htmlspecialchars($_POST['fechafin'],ENT_QUOTES,'UTF-8'); 

$idgrado_ = htmlspecialchars($_POST['idgrado_'],ENT_QUOTES,'UTF-8'); 
$couseId_ = htmlspecialchars($_POST['couseId_'],ENT_QUOTES,'UTF-8'); 



$consulta = $asistensia->Eliminar_asistencias($fechainicio,$fechafin,$idgrado_,$couseId_);

echo json_encode($consulta);


?>