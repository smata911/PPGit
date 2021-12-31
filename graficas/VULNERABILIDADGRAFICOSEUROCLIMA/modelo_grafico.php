<?php
	class Modelo_Grafico{
	private $conexion;
		function __construct()
		{
			require_once ('conexion.php');
            $this->conexion = new conexion();
			$this->conexion->conectar();
        }

		
		function TraeDatosGraficoBar(){
			$sql = "CALL vulnerabilidad_contar_fichas";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}
		function TraeDatosGraficoParametro($evento,$fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL vulnerabilidadParametrosEuroclima('$evento','$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		function TraeDatosGraficoParametroGenero($evento,$fechaInicio,$fechaFinal,$genero){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL vulnerabilidadParametrosEuroclimaS('$evento','$fechaInicio','$fechaFinal','$genero')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		
		function TraeDatosTotalesFactores($evento,$fechaInicioFact,$fechaFinalFact){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL vulnerabilidad_contador_Euroclima_fecha('$evento','$fechaInicioFact','$fechaFinalFact')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}



		function TraeDatosTotalesGenero($evento,$fechaInicio,$fechaFinal,$genero){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL vulnerabilidad_contador_Euroclima_fecha('$evento','$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

//FALTA OPTIMIZAR EL CODIGO PARA DISMINUIR LINEAS
		function TraeDatosGraficoTenencia($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL beneficiarioTenencia('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}
		function TraeDatosGraficoVariedades($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL BeneficiarioVariedades('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}


		function TraeDatosGraficoRubro($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL BeneficiarioRubro('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		function TraeDatosGraficoTipoVivienda($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL BeneficiarioTipoVivienda('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		function TraeDatosGraficoTipoPared($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL BeneficiaroTipoPared('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		function TraeDatosGraficoTipoTecho($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL BeneficiaroTecho('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		function TraeDatosGraficoTipoPiso($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL BeneficiaroPiso('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}


		function TraeDatosGraficoTipoEstufa($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL BeneficiarioEstufa('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}



		function TraeDatosGraficoTipoServicios($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL BeneficiariolServicios('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}



		function TraeDatosGraficoTipoGrupo($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL beneficiarioGrupoComunitario('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		function TraeDatosGraficoTipoEtnias($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL beneficiarioEtnia('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		function TraeDatosGraficoBeneGenero($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL BeneficiarioGenero('$fechaInicio','$fechaFinal')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}



		function TraeDatosTotalesTenencia($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_finca('$fechaInicio','$fechaFinal',1)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}



		function TraeDatosTotalesVariedad($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_finca('$fechaInicio','$fechaFinal',2)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}




		function TraeDatosTotalesRubro($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_finca('$fechaInicio','$fechaFinal',3)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}




		function TraeDatosTotalesVivienda($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_vivienda('$fechaInicio','$fechaFinal',1)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}





		function TraeDatosTotalesPared($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_vivienda('$fechaInicio','$fechaFinal',2)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}



		function TraeDatosTotalesTecho($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_vivienda('$fechaInicio','$fechaFinal',3)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}


		function TraeDatosTotalesPiso($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_vivienda('$fechaInicio','$fechaFinal',4)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}



		function TraeDatosTotalesEstufa($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_vivienda('$fechaInicio','$fechaFinal',5)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}



		function TraeDatosTotalesServicios($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_vivienda('$fechaInicio','$fechaFinal',6)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}
		function TraeDatosTotalesGrupo($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_otros('$fechaInicio','$fechaFinal',1)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		function TraeDatosTotalesEtnias($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_otros('$fechaInicio','$fechaFinal',2)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}


		function TraeDatosTotalesBeneGenero($fechaInicio,$fechaFinal){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL bene_contar_otros('$fechaInicio','$fechaFinal',3)";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}


		function TraeDatosGraficoLidGenero($fechaInicioLid,$fechaFinalLid,$evento){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL lider_gen_gru_pro_var('$fechaInicioLid','$fechaFinalLid','$evento')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		function TraeDatosGraficoDiversificacion($fechaInicioDiv,$fechaFinalDiv,$evento){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL diversificacion_contador_todos_g('$fechaInicioDiv','$fechaFinalDiv','$evento')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		function TraeDatosTotaleslideres($fechaInicioLid,$fechaFinalLid,$evento){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL lider_contador_todos('$fechaInicioLid','$fechaFinalLid','$evento')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		function TraeDatosTotalesDiversificacion($fechaInicioDiv,$fechaFinalDiv,$evento){
			//$sql = "CALL SP_DATOSGRAFICO_BAR";
			$sql = "CALL diversificacion_totales_todos_g('$fechaInicioDiv','$fechaFinalDiv','$evento')";	
			$arreglo = array();
			if ($consulta = $this->conexion->conexion->query($sql)) {

				while ($consulta_VU = mysqli_fetch_array($consulta)) {
					$arreglo[] = $consulta_VU;
				}
				return $arreglo;
				$this->conexion->cerrar();	
			}
		}

		

	}
?>
