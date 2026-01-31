<?php
require '../../modelo/modelo_asistencia.php';
$asistensia = new Asistensia;

$id_couses = htmlspecialchars($_POST['id_couses'],ENT_QUOTES,'UTF-8');
$id_grade = htmlspecialchars($_POST['id_grade'],ENT_QUOTES,'UTF-8');



 $consulta = $asistensia->Listar_AsistenciasPersonl($id_couses,$id_grade);
//$consulta = $asistensia->Listar_AsistenciasPersonl();

echo json_encode($consulta);

?>