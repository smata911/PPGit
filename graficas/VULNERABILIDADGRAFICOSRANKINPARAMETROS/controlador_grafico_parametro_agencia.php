<?php
require 'modelo_grafico.php';
//$fechaano=$_POST['ano'];
//$fechainicio=$_POST['inicio'];
//$fechafin=$_POST['fin'];
// $fechaAnoInicio=$_POST['anoInicio'];
// $fechaAñoFinal=$_POST['anoFinal'];date('Y-m-d', strtotime($_POST['anoInicio']));
$anoinicio=$_POST['anoinicio'];
$anofinal=$_POST['anofinal'];

$agencia=$_POST['agencia'];

$MG=new Modelo_Grafico();

$consulta= $MG ->TraeDatosGraficoParametroAgencia($anoinicio,$anofinal,$agencia);
echo json_encode($consulta);


?>