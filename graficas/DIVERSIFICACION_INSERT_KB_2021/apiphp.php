<?php
require  'prueba2.php';
prueba();
function prueba(){
$header=array();
// $peliculas=array();
// $peliculas["items"]=array();
$header []='Authorization: token 5c0f67cdfaf731da94c7a1394f5eff3476616aca ';
$curl=curl_init();
curl_setopt($curl,CURLOPT_URL,'https://kf.kobotoolbox.org/assets/a9picM8CsmEMteQXtHzRva/submissions/?format=json');
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


$startt=isset($item["start"]) ? $item["start"] : '';
$endd=isset($item["end"]) ? $item["end"] : '';
$username=isset($item["username"]) ? $item["username"] : '';
$simserial=isset($item["simserial"]) ? $item["simserial"] : '';
$subscriberid=isset($item["subscriberid"]) ? $item["subscriberid"] : '';
$device=isset($item["deviceid"]) ? $item["deviceid"] : '';
$fecha_visita=isset($item["Fecha_de_La_visita"]) ? $item["Fecha_de_La_visita"] : '';
$dept=isset($item["Ubicacion/Departamento"]) ? $item["Ubicacion/Departamento"] : '';
$muni=isset($item["Ubicacion/Municipio"]) ? $item["Ubicacion/Municipio"] : '';
$aldea=isset($item["Ubicacion/Aldea"]) ? $item["Ubicacion/Aldea"] : '';
$ubicacion=isset($item["Ubicacion/Ubicacion_GPS"]) ? $item["Ubicacion/Ubicacion_GPS"] : '';
$regional=isset($item["Region_cafetalera/Regional"]) ? $item["Region_cafetalera/Regional"] : '';
$agencia=isset($item["Region_cafetalera/Agencia"]) ? $item["Region_cafetalera/Agencia"] : '';
$nombre=isset($item["Datos_Generales_del_productor/Nombre_del_productor_o_de_diversificaci_n"]) ? $item["Datos_Generales_del_productor/Nombre_del_productor_o_de_diversificaci_n"] : '';
$id=isset($item["Datos_Generales_del_productor/a5_identidad"]) ? $item["Datos_Generales_del_productor/a5_identidad"] : '';
$sexo=isset($item["Datos_Generales_del_productor/Sexo"]) ? $item["Datos_Generales_del_productor/Sexo"] : '';
$regIhcafe=isset($item["Datos_Generales_del_productor/_Es_productor_de_cafe_registra"]) ? $item["Datos_Generales_del_productor/_Es_productor_de_cafe_registra"] : '';
$parentesco=isset($item["Datos_Generales_del_productor/_Cual_es_su_parentes_que_est_registrada"]) ? $item["Datos_Generales_del_productor/_Cual_es_su_parentes_que_est_registrada"] : '';
$idParentesco=isset($item["Datos_Generales_del_productor/N_mero_de_identidad_que_est_registrada"]) ? $item["Datos_Generales_del_productor/N_mero_de_identidad_que_est_registrada"] : '';
$clave=isset($item[""]) ? $item[""] : '';
$areaFinca=isset($item["Datos_Generales_del_productor/Area_de_la_finca_ha"]) ? $item["Datos_Generales_del_productor/Area_de_la_finca_ha"] : '';
$tiempo=isset($item["Datos_Generales_del_productor/Disponibilidad_de_ti_esos_de_Capacitaci_n"]) ? $item["Datos_Generales_del_productor/Disponibilidad_de_ti_esos_de_Capacitaci_n"] : '';
$implementar_p=isset($item["Datos_Generales_del_productor/_Como_va_implementar_su_proyec"]) ? $item["Datos_Generales_del_productor/_Como_va_implementar_su_proyec"] : '';
$miembroGrupo=isset($item["Datos_Generales_del_productor/_Cu_ntos_miembros_tiene_su_grupo"]) ? $item["Datos_Generales_del_productor/_Cu_ntos_miembros_tiene_su_grupo"] : '';
$profundidad=isset($item["Profundidad_del_Suelo_cm"]) ? $item["Profundidad_del_Suelo_cm"] : '';
$porcentaje=isset($item["_Porcentaje_de_Mater_Org_nica_en_el_suelo"]) ? $item["_Porcentaje_de_Mater_Org_nica_en_el_suelo"] : '';
$tipoSuelo=isset($item["_Tipos_de_Suelo"]) ? $item["_Tipos_de_Suelo"] : '';
$rubro=isset($item["Rubro_de_Diversificacion_a_imp"]) ? $item["Rubro_de_Diversificacion_a_imp"] : '';
$lineaCafe1=isset($item[""]) ? $item[""] : '';
$lineaCafe2=isset($item[""]) ? $item[""] : '';
$tipo_frutales=isset($item[""]) ? $item[""] : '';
$mel=isset($item[""]) ? $item[""] : '';
$gua=isset($item[""]) ? $item[""] : '';
$ram=isset($item[""]) ? $item[""] : '';
$citri=isset($item[""]) ? $item[""] : '';
$lic=isset($item[""]) ? $item[""] : '';
$proyecto=isset($item["Proyecto"]) ? $item["Proyecto"] : '';
$tecnico=isset($item["Tecnicos"]) ? $item["Tecnicos"] : '';
$latitud=isset($geolocalizacion[0]) ? $geolocalizacion[0] : '';
$longitud=isset($geolocalizacion[1]) ? $geolocalizacion[1] : '';
    
//array
    $mes_lluvia = isset($item["meses_mas_lluviosos"]) ? $item["meses_mas_lluviosos"] : '';
    $Fuentes_ingreso = isset($item["Fuentes_de_ingreso"]) ? $item["Fuentes_de_ingreso"] : '';
    $Meses_Flacos = isset($item["Meses_Flacos"]) ? $item["Meses_Flacos"] : '';

    // $rutaVariedades = "Variedades/Variedades_Presentes";

    // if (!empty($variedades)) { 
    //     insertVariedades($variedades,$rutaVariedades,$contador);
      
    // { else{
    //     insertVariedades($variedades,$rutaVariedades,$contador);

    // }
  
        
        if (!empty($Fuentes_ingreso)) { 
            foreach ($Fuentes_ingreso as $clave=>$valor)
        {         
         $valor = $valor["Fuentes_de_ingreso/_Fuentes_de_ingreso_lia_aparte_del_cafe"];
         submisionIngresos($valor,$contador);  
        }
        }else{
            $valor = "";
            echo ' vacio - ';
            submisionIngresos($valor,$contador);  
           // $index = $index + 1;   
        }


        if (!empty($mes_lluvia)) { 
            foreach ($mes_lluvia as $clave=>$valor)
        {         
         $valor2 = $valor["meses_mas_lluviosos/Seleccione_meses_mas_lluviosos"];
         submisionLluvia($valor2,$contador);  
        }
        }else{
            $valor2 = "";
            echo ' vacio - ';
            submisionLluvia($valor2,$contador);  
           // $index = $index + 1;   
        }


        if (!empty($Meses_Flacos)) { 
            foreach ($Meses_Flacos as $clave=>$valor)
        {         
         $valor3 = $valor["Meses_Flacos/_Meses_sin_ning_n_in_n_mico_de_la_familia"];
         submisionFlacos($valor3,$contador);  
        }
        }else{
            $valor3 = "";
            echo ' vacio - ';
            submisionFlacos($valor3,$contador);  
           // $index = $index + 1;   
        }
      
       
  

        

    //     if (!empty($apoyo)) {
         
    //         foreach ($apoyo as $clave=>$valor)
    //     {   
    //        $tipoApoyo = $valor["Apoyo_que_requiere/Tipo_de_apoyo_que_requiere"];
    //        //si en algun caso omitir los otro borrar line siguiente
    //       $tipoApoyoOtro =isset( $valor["Apoyo_que_requiere/Especifique_otros"])? $valor["Apoyo_que_requiere/Especifique_otros"] :'';
    //      $apoyoTodo="$tipoApoyo $tipoApoyoOtro";
    //       //condicion
    //      submisionApoyo($apoyoTodo,$contador);
    //     }
    //     }else{
    //        // $tipoApoyo1 = $valor["Tipo_de_apoyo_que_requiere"];

            
    //         $tipoApoyo1 = isset($item["Tipo_de_apoyo_que_requiere"]) ? $item["Tipo_de_apoyo_que_requiere"] : '';
    //         echo ' vacio - ';
    //         submisionApoyo($tipoApoyo1,$contador);//afuera del if deberia
    //        // $index = $index + 1;
    //     }



     
  
    // // // //fin de la conversion
    // $simSerial="no existe";
    // $phoneNumber="no existe";
    // $altitud="no existe";
    // $presicion="no existe";
    // $validation="no existe";
    // $notes="no existe";
    // $statuss="no existe";
    // $submitte="no existe";
    
    $altitud="no existe";
    $precisino1="no existe";
    $mesesLluvioso="otra tabla";
    // //llamar ala funcion que manda a llamar ala base de datos
    diversificacion_insert_kb(
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
        $index2);
 
        $index2 = $index2 + 1;
        $contador = $contador +1 ;
    }
    
return $result;




}

?>


