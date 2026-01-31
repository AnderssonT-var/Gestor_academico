<?php
    require '../../modelo/modelo_asistencia.php';
    $asistensia = new Asistensia;

    $fechaEntrada = htmlspecialchars($_POST['fechaEntrada'],ENT_QUOTES,'UTF-8');
     $couse_id = htmlspecialchars($_POST['couse_id'],ENT_QUOTES,'UTF-8');
      $degre_id = htmlspecialchars($_POST['degre_id'],ENT_QUOTES,'UTF-8');
    

    $consulta = $asistensia->Buscar_Asistencias($fechaEntrada, $couse_id,$degre_id);

        echo json_encode($consulta);

?>