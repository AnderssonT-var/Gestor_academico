<?php
    require '../../modelo/modelo_docente.php';
    $docent = new Docente();
    $idnotas = htmlspecialchars($_POST['idcapturado'],ENT_QUOTES,'UTF-8');
    $consulta = $docent->remove_latter($idnotas);
    echo $consulta;

?>