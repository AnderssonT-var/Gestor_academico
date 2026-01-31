<?php
 session_start();
require '../../modelo/modelo_asistencia.php';
$asistensia = new Asistensia;

$vectorIdpersonas = htmlspecialchars($_POST['vectorIdpersonas'],ENT_QUOTES,'UTF-8');
$vectorEst = htmlspecialchars($_POST['vectorEstado'],ENT_QUOTES,'UTF-8');
$fecha = htmlspecialchars($_POST['fechaAsisten'],ENT_QUOTES,'UTF-8');

$cousesId = htmlspecialchars($_POST['cousesId'],ENT_QUOTES,'UTF-8');
$gradeId = htmlspecialchars($_POST['gradeId'],ENT_QUOTES,'UTF-8');


date_default_timezone_set('America/Lima'); $fechas= date($fecha); 

if (!empty($_SESSION['S_IDUSUARIO'])) $user= $_SESSION['S_IDUSUARIO'];

$cont=$asistensia->verificar_Asistencia($fechas,$cousesId,$gradeId);
if($cont==0){

 $IdPersona = explode(",",$vectorIdpersonas );
 $vectorEstado = explode(",",$vectorEst );

 for ($i=0; $i <count($IdPersona) ; $i++) { 
  if ($IdPersona[$i] !='') {
  	 $idAlumno = $IdPersona[$i];
  	 $estado = $vectorEstado[$i];
   $consulta = $asistensia->Registro_Asistencia($idAlumno,$fechas,$estado,$gradeId,$user ?? 1,date('Y'),$cousesId);
  

 }
}

if ($consulta==1) {
	$response = array('status' => true,'msg' => 'La Asistencia se registró corectamenter','data'=>$consulta);
echo json_encode($response,JSON_UNESCAPED_UNICODE);
}else{
	$response = array('status' => false,'msg' => 'Ocurrio un error al registrar asistencia','data'=>$consulta);
echo json_encode($response,JSON_UNESCAPED_UNICODE);
}

}else{
 $response = array('status' =>true,'msg' => 'Asistensia para la fecha de '.$fechas.' ya existe !!','data'=>'');

 echo json_encode($response,JSON_UNESCAPED_UNICODE);
}


?>