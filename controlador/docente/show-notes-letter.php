<?php
    require '../../modelo/modelo_docente.php';
    $docent = new Docente();

    $idalumno = htmlspecialchars($_POST['idalumno'],ENT_QUOTES,'UTF-8');
    $cursoid = htmlspecialchars($_POST['cursoid'],ENT_QUOTES,'UTF-8');
  
    $consulta = $docent->show_letter_notes($idalumno,$cursoid);
    echo json_encode($consulta);

?>