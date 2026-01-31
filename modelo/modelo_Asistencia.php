<?php
    class Asistensia{
        private $conexion;
        function __construct(){
            require_once 'modelo_conexion.php';
            $this->conexion = new conexion();
            $this->conexion->conectar();
        }


 function listar_gradosCursosdocente($idprofe){
 $sql  = "select curso_id,grado_id,nonbrecurso,gradonombre from docenteasignado
            inner join  curso on curso.idcurso = curso_id
              inner join grado on grado.idgrado = docenteasignado.grado_id
            where docenteid ='$idprofe'"; 
            $arreglo = array();
                if ($consulta = $this->conexion->conexion->query($sql)) {
                 while ($consulta_VU = mysqli_fetch_assoc($consulta)) {
                         $arreglo[]=$consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();
      }
 }

function listar_Alumnos_Matriculados($idcurso, $idgrado){
 $sql  = "select idalumno, apellidop, alumnonombre  from alumno
            where grado ='$idgrado'";     
 $arreglo = array();
    if ($consulta = $this->conexion->conexion->query($sql)) {
      while ($consulta_VU = mysqli_fetch_assoc($consulta)) {
            $arreglo[] = $consulta_VU;
    }
     return $arreglo;
     $this->conexion->cerrar();

    }
}
/////////////////////

function Filtrar_asistencias($fechainicio,$fechafin,$idgrado,$id_couse){
$sql=" select apellidop,alumnonombre,Fechas,stadoalumno,Est_Asis from asistencia
  inner join  alumno on alumno.idalumno= asistencia.idalumno_asi
 WHERE (Fechas >= '$fechainicio' AND Fechas <= '$fechafin') and idgrado='$idgrado' and idcurses='$id_couse'  ";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_assoc($consulta)) {

                    $arreglo[]=$consulta_VU;

                }
                return $arreglo;
                $this->conexion->cerrar();
            }

}

function Eliminar_asistencias($fechainicio,$fechafin,$idgrado,$couseId){

$sql=   "DELETE FROM asistencia WHERE (Fechas >= '$fechainicio' AND Fechas <= '$fechafin') and idgrado='$idgrado' and idcurses='$couseId' ";
      if ($consulta = $this->conexion->conexion->query($sql)) {
        return 1;
      }else{
        return 0;
      }


}


function Listar_AsistenciasPersonl($id_couses,$id_grade){
 $sql="select idalumno,apellidop,alumnonombre,gradonombre from alumno
 
 inner join  grado on grado.idgrado = alumno.grado

 where alumno.grado='$id_grade' ";
 $arreglo = array();
 if ($consulta = $this->conexion->conexion->query($sql)) {
  while ($consulta_VU = mysqli_fetch_assoc($consulta)) {

    $arreglo[]=$consulta_VU;

  }
  return $arreglo;
  $this->conexion->cerrar();
}

}

function Buscar_Asistencias($fechaEntrada, $couse_id,$degre_id){
 $sql="select idalumno,apellidop,alumnonombre,gradonombre,Est_Asis from asistencia
 inner join  alumno on alumno.idalumno = asistencia.idalumno_asi
 inner join  grado on grado.idgrado = asistencia.idgrado

 where alumno.grado='$degre_id' AND asistencia.Fechas ='$fechaEntrada' and idcurses= '$couse_id' ";
 $arreglo = array();
 if ($consulta = $this->conexion->conexion->query($sql)) {
  while ($consulta_VU = mysqli_fetch_assoc($consulta)) {

    $arreglo[]=$consulta_VU;

  }
  return $arreglo;
  $this->conexion->cerrar();
}

}

function verificar_Asistencia($fechas,$idcurso,$idgrado){
 $sql = "SELECT Fechas FROM asistencia where Fechas='$fechas' and idcurses ='$idcurso' and idgrado='$idgrado' ";
    $arreglo = array();

    if ($consulta = $this->conexion->conexion->query($sql)) {
        while ($consulta_VU = mysqli_fetch_array($consulta)) {
            $arreglo[] = $consulta_VU;
        }
        return count($arreglo);
        $this->conexion->cerrar();
    }

}

function Registro_Asistencia($IdPersona,$fechas,$vectorEstado,$idgrado,$user,$date,$idcurso){
  $sql="INSERT INTO asistencia(idalumno_asi, Fechas, Est_Asis, idgrado, yearid, userSesion,idcurses) VALUES 
                            ('$IdPersona','$fechas','$vectorEstado','$idgrado','$date','$user','$idcurso')";
  if ($consulta = $this->conexion->conexion->query($sql)) {
   return 1;

 }else{
  return 0;
}


}

function GetAsistensiDate($idcurso,$idgrado,$fecha){
  $sql="select idalumno,apellidop,alumnonombre, Est_Asis from asistencia
 inner join  alumno on alumno.idalumno = asistencia.idalumno_asi
  where Fechas='$fecha' and asistencia.idgrado='$idgrado' and idcurses='$idcurso'  ";
  $arreglo = array();
  if ($consulta = $this->conexion->conexion->query($sql)) {
    while ($consulta_VU = mysqli_fetch_assoc($consulta)) {

      $arreglo[]=$consulta_VU;

    }
    return $arreglo;
    $this->conexion->cerrar();
  }


}

function Extraer_asistencias($fechainicio,$fechafin){

  $sql=" select idalumno,apellidop,alumnonombre,Fechas,stadoalumno,Est_Asis,gradonombre from asistencia
  inner join  alumno on alumno.idalumno= asistencia.idalumno_asi

  inner join  grado on grado.idgrado = asistencia.idgrado

 WHERE (Fechas >= '$fechainicio' AND Fechas <= '$fechafin')";
            $arreglo = array();
            if ($consulta = $this->conexion->conexion->query($sql)) {
                while ($consulta_VU = mysqli_fetch_assoc($consulta)) {

                    $arreglo["data"][]=$consulta_VU;

                }
                return $arreglo;
                $this->conexion->cerrar();
            }
}
///////////////////////////////////
function Actualizar_Asistencia($IdPersona,$fecha,$vectorEstado,$idgrado,$idcurso){
$sql = "UPDATE  asistencia SET Est_Asis='$vectorEstado' WHERE Fechas='$fecha' AND idalumno_asi = '$IdPersona' and idgrado='$idgrado' and idcurses='$idcurso'  ";
           if ($consulta = $this->conexion->conexion->query($sql)) {      
              return 1;
              
            }else{
              return 0;
            }

}

function update_attendance($IdPersona,$vectorEstado,$fecha){
$sql = "UPDATE  asistencia SET Est_Asis='$vectorEstado' WHERE Fechas='$fecha' AND idalumno_asi = '$IdPersona'   ";
           if ($consulta = $this->conexion->conexion->query($sql)) {      
              return 1;
              
            }else{
              return 0;
            }

}


function listar_Asistencias_Grado($idgrado, $alumno){

 $sql  = "select gradonombre, Fechas,Est_Asis,yearid from asistencia
            inner join  grado on grado.idgrado = asistencia.idgrado
            where idalumno_asi ='$alumno'";     
            $arreglo = array();
                if ($consulta = $this->conexion->conexion->query($sql)) {
                 while ($consulta_VU = mysqli_fetch_assoc($consulta)) {
                         $arreglo['data'][]=$consulta_VU;
                }
                return $arreglo;
                $this->conexion->cerrar();

               }
  
}




    }
?>
