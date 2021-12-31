<?php
///////////////////////////////////////////////////
//falta mejorar la conexion, eliminar conexion  //
//repetidas                                    //
////////////////////////////////////////////////

//   function Genero($variable){
//       if ($variable =='1') {
            
//         $variable = "Hombre";
        
       
//       }else  {
          
//           $variable = "Mujer";
          
  
//       }
//       return ($variable);
//   }
function submisionIngresos($valor,$contador){
      $servername = "localhost";
      $database = "ihcafefichas";
      $username = "root";
      $password = "";
      // Create connection
      $conn = mysqli_connect($servername, $username, $password, $database);
      // Check connection
      if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
      }
      $sql = "Call diversificacion_insert_ingreso_kb('$valor','$contador')";
      if (mysqli_query($conn,$sql)) {
            // echo "New record created successfully";
      } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
      mysqli_close($conn);
      
      
      
} 
function submisionLluvia($valor2,$contador){
      $servername = "localhost";
      $database = "ihcafefichas";
      $username = "root";
      $password = "";
      // Create connection
      $conn = mysqli_connect($servername, $username, $password, $database);
      // Check connection
      if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
      }
      $sql = "Call diversificacion_insert_meses_lluvia('$valor2','$contador')";
      if (mysqli_query($conn,$sql)) {
            // echo "New record created successfully";
      } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
      mysqli_close($conn);
      
      
      
} 

function submisionFlacos($valor3,$contador){
      $servername = "localhost";
      $database = "ihcafefichas";
      $username = "root";
      $password = "";
      // Create connection
      $conn = mysqli_connect($servername, $username, $password, $database);
      // Check connection
      if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
      }
      $sql = "Call diversificacion_insert_meses_f('$valor3','$contador')";
      if (mysqli_query($conn,$sql)) {
            // echo "New record created successfully";
      } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
      mysqli_close($conn);
      
      
      
} 



function submisionApoyo($apoyo,$contador){
      $servername = "localhost";
      $database = "ihcafefichas";
      $username = "root";
      $password = "";
      // Create connection
      $conn = mysqli_connect($servername, $username, $password, $database);
      // Check connection
      if (!$conn) {
            die("Connection failed: " . mysqli_connect_error());
      }
      $sql = "Call beneficiario_insert_apoyo_kb('$apoyo','$contador')";
      if (mysqli_query($conn,$sql)) {
            // echo "New record created successfully";
      } else {
            echo "Error: " . $sql . "<br>" . mysqli_error($conn);
      }
      mysqli_close($conn);    
} 

function diversificacion_insert_kb(
      $startt,
        $endd,
        $username,
        $simserial,
        $subscriberid,
        $device,
        $fecha_visita,
        $dept,
        $muni,
        $aldea,
        $ubicacion,
        $latitud,
        $longitud,
        $altitud,
        $precisino1,
        $regional,
        $agencia,
        $nombre,
        $id,
        $sexo,
        $regIhcafe,
        $parentesco,
        $idParentesco,
        $clave,
        $areaFinca,
        $tiempo,
        $implementar_p,
        $miembroGrupo,
        $mesesLluvioso,
        $profundidad,
        $porcentaje,
        $tipoSuelo,
        $rubro,
        $lineaCafe1,
        $lineaCafe2,
        $tipo_frutales,
        $mel,
        $gua,
        $ram,
        $citri,
        $lic,
        $proyecto,
        $tecnico,
        $index2
){

$servername = "localhost";
$database = "ihcafefichas";
$username = "root";
$password = "";
// Create connection
$conn = mysqli_connect($servername, $username, $password, $database);
// Check connection
if (!$conn) {
      die("Connection failed: " . mysqli_connect_error());
}


// echo "Connected successfully";
$sql = "Call diversificacion_insert_kb(
      '$startt',
      '$endd',
      '$username',
      '$simserial',
      '$subscriberid',
      '$device',
      '$fecha_visita',
      '$dept',
      '$muni',
      '$aldea',
      '$ubicacion',
      '$latitud',
      '$longitud',
      '$altitud',
      '$precisino1',
      '$regional',
      '$agencia',
      '$nombre',
      '$id',
      '$sexo',
      '$regIhcafe',
      '$parentesco',
      '$idParentesco',
      '$clave',
      '$areaFinca',
      '$tiempo',
      '$implementar_p',
      '$miembroGrupo',
      '$mesesLluvioso',
      '$profundidad',
      '$porcentaje',
      '$tipoSuelo',
      '$rubro',
      '$lineaCafe1',
      '$lineaCafe2',
      '$tipo_frutales',
      '$mel',
      '$gua',
      '$ram',
      '$citri',
      '$lic',
      '$proyecto',
      '$tecnico',
      '$index2'
      )";
set_time_limit(500);
if (mysqli_query($conn,$sql)) {
      // echo "New record created successfully";
} else {
      echo "Error: " . $sql . "<br>" . mysqli_error($conn);
}
mysqli_close($conn);
}

//https://es.stackoverflow.com/questions/144253/fatal-error-maximum-execution-time-of-30-seconds
// while ($datos = fgetcsv($fp , 7000 , ";")) {
//       set_time_limit(300);
//       // código de inserción
//     }
?>