<?php
require  'prueba2.php';
prueba();
function prueba(){
$header=array();
// $peliculas=array();
// $peliculas["items"]=array();
$header []='Authorization: token 5c0f67cdfaf731da94c7a1394f5eff3476616aca ';
$curl=curl_init();
curl_setopt($curl,CURLOPT_URL,'https://kf.kobotoolbox.org/assets/aHHNQ3Xvk3KAH6mqVUqPhG/submissions/?format=json');
curl_setopt($curl,CURLOPT_HTTPHEADER,$header);
curl_setopt($curl, CURLOPT_RETURNTRANSFER, true);
$result=curl_exec($curl);

curl_close($curl);
// echo ($result);

$result=json_decode($result,true);

$contador = 1;

$index = 1;#el de variedades
$index2=1;#el de estructura vulnerabilidad
$contador = 1;
foreach ($result as $item) {
//Variables traidas desde potsman

$geolocalizacion = isset($item["_geolocation"]) ? $item["_geolocation"] : '';


    $orgMiembro = isset($item["Datos_del_Productor/a16_Seleccione_Orga_a_la_que_es_miembro"]) ? $item["Datos_del_Productor/a16_Seleccione_Orga_a_la_que_es_miembro"] : '';
    $tecnico = isset($item["Responsable/Tecnicos"]) ? $item["Responsable/Tecnicos"] : '';
    $celular = isset($item["Datos_del_Productor/a4_celular"]) ? $item["Datos_del_Productor/a4_celular"] : '';
    $uid = isset($item["_uuid"]) ? $item["_uuid"] : '';
    $nMiembros = isset($item["Datos_del_Productor/a11_miembros_familia"]) ? $item["Datos_del_Productor/a11_miembros_familia"] : '';
    $tipoPiso = isset($item["Informacion_de_la_Vivienda/b4_tipo_piso"]) ? $item["Informacion_de_la_Vivienda/b4_tipo_piso"] : '';
    $edadFinca = isset($item["Informacion_de_la_finca/c8_edad_finca"]) ? $item["Informacion_de_la_finca/c8_edad_finca"] : '';
    $produccionUva = isset($item["Informacion_de_la_finca/c10_prod_uva"]) ? $item["Informacion_de_la_finca/c10_prod_uva"] : '';
    $proyecto = isset($item["Proyecto"]) ? $item["Proyecto"] : '';
    $productor = isset($item["Datos_del_Productor/a3_nombre_productor"]) ? $item["Datos_del_Productor/a3_nombre_productor"] : '';
    $instanceId = isset($item["meta/instanceID"]) ? $item["meta/instanceID"] : '';
    $estadoCivil = isset($item["Datos_del_Productor/a9_estado_civil"]) ? $item["Datos_del_Productor/a9_estado_civil"] : '';
    $fotoFinca = isset($item["D/d3_foto_finca1"]) ? $item["D/d3_foto_finca1"] : '';
    $tipoVivienda = isset($item["Informacion_de_la_Vivienda/b1_tipo_vivienda"]) ? $item["Informacion_de_la_Vivienda/b1_tipo_vivienda"] : '';
    $genero = isset($item["Datos_del_Productor/a7_genero"]) ? $item["Datos_del_Productor/a7_genero"] : '';
    $start = isset($item["start"]) ? $item["start"] : '';
    $tenencia = isset($item["Informacion_de_la_finca/Tenencia_de_la_tierra"]) ? $item["Informacion_de_la_finca/Tenencia_de_la_tierra"] : '';
    $municipio = isset($item["Ubicacion_del_evento/a3_municipio_001"]) ? $item["Ubicacion_del_evento/a3_municipio_001"] : '';
    $tipoTecho = isset($item["Informacion_de_la_Vivienda/b3_tipo_techo"]) ? $item["Informacion_de_la_Vivienda/b3_tipo_techo"] : '';
    $prodOro = isset($item["Informacion_de_la_finca/c11_prod_oro"]) ? $item["Informacion_de_la_finca/c11_prod_oro"] : '';
    $status = isset($item["_status"]) ? $item["_status"] : '';
    $version = isset($item["__version__"]) ? $item["__version__"] : '';
    $sombra = isset($item["Informacion_de_la_finca/c5_porcentaje_sombra"]) ? $item["Informacion_de_la_finca/c5_porcentaje_sombra"] : '';
    $today = isset($item["today"]) ? $item["today"] : '';
    $regional =  isset($item["Region_Cafetalera/regional"]) ? $item["Region_Cafetalera/regional"] : '';
    $fotoVivienda = isset($item["D/d2_foto_vivienda"]) ? $item["D/d2_foto_vivienda"] : '';
    $UbicacionFinca = isset($item["Informacion_de_la_finca/c1_ubicacion_finca"]) ? $item["Informacion_de_la_finca/c1_ubicacion_finca"] : '';
    $escolaridad = isset($item["Datos_del_Productor/a10_escolaridad"]) ? $item["Datos_del_Productor/a10_escolaridad"] : '';
    $plantaCafe = isset($item["Informacion_de_la_finca/c7_plantas_cafe"]) ? $item["Informacion_de_la_finca/c7_plantas_cafe"] : '';
    $fechaInicio = isset($item["Momento_del_Evento/Fecha_de_Inicio"]) ? $item["Momento_del_Evento/Fecha_de_Inicio"] : '';
    $edad = isset($item["Datos_del_Productor/a8_edad"]) ? $item["Datos_del_Productor/a8_edad"] : '';
    $departamento = isset($item["Ubicacion_del_evento/a2_departamento"]) ? $item["Ubicacion_del_evento/a2_departamento"] : '';
    $tipoPared = isset($item["Informacion_de_la_Vivienda/b2_tipo_pared"]) ? $item["Informacion_de_la_Vivienda/b2_tipo_pared"] : '';
    $areaTotal = isset($item["Informacion_de_la_finca/c6_area_total"]) ? $item["Informacion_de_la_finca/c6_area_total"] : '';
    $end = isset($item["end"]) ? $item["end"] : '';
    $rtn = isset($item["Datos_del_Productor/a13_rtn"]) ? $item["Datos_del_Productor/a13_rtn"] : '';
    $uidform = isset($item["formhub/uuid"]) ? $item["formhub/uuid"] : '';
    $tipoTechoOtro = isset($item["Informacion_de_la_Vivienda/b3_tipo_techo_other"]) ? $item["Informacion_de_la_Vivienda/b3_tipo_techo_other"] : '';
    $ubicacionEvento = isset($item["Ubicacion_del_evento/Ubicaci_n_del_evento"]) ? $item["Ubicacion_del_evento/Ubicaci_n_del_evento"] : '';
    $fechaEnvio = isset($item["Momento_del_Evento/fecha_envio"]) ? $item["Momento_del_Evento/fecha_envio"] : '';
    $grupoProductivo = isset($item["Datos_del_Productor/a15_grupo_productivo"]) ? $item["Datos_del_Productor/a15_grupo_productivo"] : '';
    $sumisionTime = isset($item["_submission_time"]) ? $item["_submission_time"] : '';
    $areaConCafe = isset($item["Informacion_de_la_finca/c9_area_con_cafe"]) ? $item["Informacion_de_la_finca/c9_area_con_cafe"] : '';
    $aldea = isset($item["Ubicacion_del_evento/Aldea"]) ? $item["Ubicacion_del_evento/Aldea"] : '';
    $fuenteAgua = isset($item["Informacion_de_la_finca/c4_fuente_agua"]) ? $item["Informacion_de_la_finca/c4_fuente_agua"] : '';
    $tipoDocumento = isset($item["Informacion_de_la_Vivienda/b1_1_tipo_doc"]) ? $item["Informacion_de_la_Vivienda/b1_1_tipo_doc"] : '';
    $deviceid = isset($item["deviceid"]) ? $item["deviceid"] : '';
    $agencia =isset($item["Region_Cafetalera/agencia"]) ? $item["Region_Cafetalera/agencia"] : '';
    $identidad = isset($item["Datos_del_Productor/a5_identidad"]) ? $item["Datos_del_Productor/a5_identidad"] : '';
    $_id = isset($item["_id"]) ? $item["_id"] : '';
    $etnia= isset($item["Datos_del_Productor/a14_id_etnica"]) ? $item["Datos_del_Productor/a14_id_etnica"] : '';
    $clave2 = isset($item["Datos_del_Productor/a6_clave_ihcafe"]) ? $item["Datos_del_Productor/a6_clave_ihcafe"] : '';
    $nomCajaRural = isset($item["Datos_del_Productor/a15_1_nombre_caja_rural"]) ? $item["Datos_del_Productor/a15_1_nombre_caja_rural"] : '';
    $nomCooperativa = isset($item["Datos_del_Productor/a15_2_nombre_cooperativa_cafetalera"]) ? $item["Datos_del_Productor/a15_2_nombre_cooperativa_cafetalera"] : '';
    $nomAsociacion = isset($item["Datos_del_Productor/a15_3_nombre_asociacion_productores"]) ? $item["Datos_del_Productor/a15_3_nombre_asociacion_productores"] : '';
    $nomEmpresaServicio = isset($item["Datos_del_Productor/a15_4_nombre_empresa_servicios"]) ? $item["Datos_del_Productor/a15_4_nombre_empresa_servicios"] : '';
    $juntaAgua = isset($item["Datos_del_Productor/a15_5_nombre_junta_agua"]) ? $item["Datos_del_Productor/a15_5_nombre_junta_agua"] : '';
    $nombreFuente = isset($item["Informacion_de_la_finca/c4_1_nombre_fuente"]) ? $item["Informacion_de_la_finca/c4_1_nombre_fuente"] : '';

    $fotoProductor = isset($item["D/d1_foto_productor"]) ? $item["D/d1_foto_productor"] : '';
    
    $latitud=isset($geolocalizacion[0]) ? $geolocalizacion[0] : '';
    $longitud=isset($geolocalizacion[1]) ? $geolocalizacion[1] : '';
    
//array
    $variedades = isset($item["Variedades"]) ? $item["Variedades"] : '';
    $rubro = isset($item["Diversificacion"]) ? $item["Diversificacion"] : '';
    $servicio = isset($item["Servicios_publicos"]) ? $item["Servicios_publicos"] : '';
    $estufas = isset($item["tipos_de_estufa"]) ? $item["tipos_de_estufa"] : '';
    $actividades = isset($item["Actividad_Productiva"]) ? $item["Actividad_Productiva"] : '';
    $apoyo = isset($item["Apoyo_que_requiere"]) ? $item["Apoyo_que_requiere"] : ''; //recuerda que este estara lleno solo cuando 
    //exista otro

    



    // $rutaVariedades = "Variedades/Variedades_Presentes";

    // if (!empty($variedades)) { 
    //     insertVariedades($variedades,$rutaVariedades,$contador);
      
    // { else{
    //     insertVariedades($variedades,$rutaVariedades,$contador);

    // }
  
        
        if (!empty($variedades)) { 
            foreach ($variedades as $clave=>$valor)
        {         
         $Variedades_001 = $valor["Variedades/Variedades_Presentes"];
         submisionVariedad($Variedades_001,$contador);  
        }
        }else{
            $Variedades_001 = "";
            echo ' vacio - ';
            submisionVariedad($Variedades_001,$contador);
           // $index = $index + 1;   
        }

      
       
        // $index = $index + 1;
         if (!empty($rubro)) {
         
            foreach ($rubro as $clave=>$valor)
        {   
        $rubroDiversificacion = $valor["Diversificacion/Seleccione_otro_rubros_que_posee"];
        submisionRubro($rubroDiversificacion,$contador);
        }
        }else{
            $rubroDiversificacion = "";
            echo ' vacio - ';
            submisionRubro($rubroDiversificacion,$contador);
           // $index = $index + 1;
        }



        if (!empty($servicio)) {
         
            foreach ($servicio as $clave=>$valor)
        {   
          $tipoServicio = $valor["Servicios_publicos/_6_Servicios_Publicos"];
         submisionServicio($tipoServicio,$contador);
        }
        }else{
            $tipoServicio = "";
            echo ' vacio - ';
            submisionServicio($servicio,$contador);
           // $index = $index + 1;
        }
        


        if (!empty($estufas)) {
         
            foreach ($estufas as $clave=>$valor)
        {   
          $tipoEstufas = $valor["tipos_de_estufa/_5_Tipo_de_Estufa"];
          submisionEstufa($tipoEstufas,$contador);
        }
        }else{
            $tipoEstufas = "";
            echo ' vacio - ';
            submisionEstufa($tipoEstufas,$contador);
           // $index = $index + 1;
        }



     
        if (!empty($actividades)) {
         
            foreach ($actividades as $clave=>$valor)
        {   
          $tipoActividades = $valor["Actividad_Productiva/_12_Actividad_Productiva"];
          submisionActividades($tipoActividades,$contador);
        }
        }else{
            $tipoActividades = "";
            echo ' vacio - ';
            submisionActividades($tipoActividades,$contador);
           // $index = $index + 1;
        }


        

        if (!empty($apoyo)) {
         
            foreach ($apoyo as $clave=>$valor)
        {   
           $tipoApoyo = $valor["Apoyo_que_requiere/Tipo_de_apoyo_que_requiere"];
           //si en algun caso omitir los otro borrar line siguiente
          $tipoApoyoOtro =isset( $valor["Apoyo_que_requiere/Especifique_otros"])? $valor["Apoyo_que_requiere/Especifique_otros"] :'';
         $apoyoTodo="$tipoApoyo $tipoApoyoOtro";
          //condicion
         submisionApoyo($apoyoTodo,$contador);
        }
        }else{
           // $tipoApoyo1 = $valor["Tipo_de_apoyo_que_requiere"];

            
            $tipoApoyo1 = isset($item["Tipo_de_apoyo_que_requiere"]) ? $item["Tipo_de_apoyo_que_requiere"] : '';
            echo ' vacio - ';
            submisionApoyo($tipoApoyo1,$contador);//afuera del if deberia
           // $index = $index + 1;
        }



     
  
    // // //fin de la conversion
    $simSerial="no existe";
    $phoneNumber="no existe";
    $altitud="no existe";
    $presicion="no existe";
    $validation="no existe";
    $notes="no existe";
    $statuss="no existe";
    $submitte="no existe";
        
    //llamar ala funcion que manda a llamar ala base de datos
    beneficiario_insert_kb(
        $start,$end,$today,
        $simSerial,$deviceid,$phoneNumber,
        $fechaInicio,$fechaEnvio,$departamento,
        $municipio,$aldea,$ubicacionEvento,
        $latitud,$longitud,$altitud,
        $presicion,$regional,$agencia,
        $productor,$celular,$identidad,
        $clave2,$genero,$edad,
        $estadoCivil,$escolaridad,$nMiembros,
        $rtn,$etnia,$grupoProductivo,
        $nomCajaRural,$nomCooperativa,$nomAsociacion,
        $nomEmpresaServicio,$juntaAgua,$orgMiembro,
        $tipoVivienda,$tipoDocumento,$tipoPared,
        $tipoTecho,$tipoPiso,$UbicacionFinca,
        $fuenteAgua,$nombreFuente,$sombra,
        $areaTotal,$areaConCafe,$plantaCafe,
        $produccionUva,$prodOro,$edadFinca,
        $tenencia,$fotoProductor,$fotoVivienda,
        $fotoFinca,$proyecto,$tecnico,
        $version,$_id,$uid,
        $sumisionTime,$validation,$notes,
        $statuss,$submitte,$index2);
 
        $index2 = $index2 + 1;
        $contador = $contador +1 ;
        
    }
    
    
return $result;




}

?>


