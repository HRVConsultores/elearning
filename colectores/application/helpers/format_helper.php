<?php

if (!defined('BASEPATH')) exit('No direct script access allowed');

// if (!function_exists('progressBar'))
// {
//   function progressBar($percentage)
//   {
//     $out = '<div id="progress-bar" class="all-rounded"><div id="progress-bar-percentage" class="all-rounded" style="width:' . $percentage . '%\">';
//     if ($percentage > 5)
//     {
//       $out .= "$percentage%";
//     } else
//     {
//       $out .= '<div class="spacer">&nbsp;</div>';
//     }
//     return $out . '</div></div>';
//   }
// }

if (!function_exists('unidad'))
{
  function unidad($numero = NULL,$tipo = NULL)
  {

    /*
    *
    * pagina: indica que pagina se debe cargar
    * titulo: es el titulo de la pagina (unidad)
    * indice: permite mostrar o no la pagina en un indice
    * template: selecciona bajo que template se debe cargar la pagina
    * navigation: realiza control del breadcrum y la navegacion. 
    *             -1 -> sin next , 1 -> sin previous
    *
    */


    $out = array(
     array(
        'pagina'=>'index',
        'titulo'=>'',
        'indice'=> false,
        'template' => 'index',
        ),
     array(
        'pagina'=>'modulo1/mod1_00',
        'modulo'=> 1,
        'titulo'=>'Indice',
        'indice'=> true,
        'template' => 'index_int',
        'navigation' => 1,
        ),
     array(
        'pagina'=>'modulo1/mod1_01',
        'modulo'=> 1,
        'titulo'=>'Introducción',
        'indice'=> true,
        'template' => 'index_int',
        ),
     array(
        'pagina'=>'modulo1/mod1_02',
        'modulo'=> 1,
        'titulo'=>'El Clima y la Atmósfera',
        'indice'=> true
        ),  
     array(
        'pagina'=>'modulo1/mod1_03', 
        'modulo'=> 1,
        'titulo'=>'El Efecto Invernadero',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_04', 
        'modulo'=> 1,
        'titulo'=>'Climas de América Latina',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_05', 
        'modulo'=> 1,
        'titulo'=>'El Clima y el Tiempo',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_06', 
        'modulo'=> 1,
        'titulo'=>'Ejercicio',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_07',
        'modulo'=> 1,
        'titulo'=>'Ejercicio',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_08', 
        'modulo'=> 1,
        'titulo'=>'La Oscilación del Sur y la Oscilación Decadal del Pacífico',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_09',
        'modulo'=> 1,
        'titulo'=>'El Niño y la Niña',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_10',
        'modulo'=> 1,
        'titulo'=>'Efectos del Niño y la Niña',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_11', 
        'modulo'=> 1,
        'titulo'=>'Riesgo Climático',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_12', 
        'modulo'=> 1,
        'titulo'=>'Amenaza',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_13', 
        'modulo'=> 1,
        'titulo'=>'Vulnerabilidad',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_14', 
        'modulo'=> 1,
        'titulo'=>'Vulnerabilidad',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_15',
        'modulo'=> 1,
        'titulo'=>'Ejercicio',
        'indice'=> true
        ), 
     array(
        'pagina'=>'modulo1/mod1_16', 
        'modulo'=> 1,
        'titulo'=>'Eventos Climáticos Extremos',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_17', 
        'modulo'=> 1,
        'titulo'=>'Desastres',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_18', 
        'modulo'=> 1,
        'titulo'=>'Adaptación y Resiliencia',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_19',
        'modulo'=> 1,
        'titulo'=>'Gestión de Riesgos Climáticos',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_20',
        'modulo'=> 1,
        'titulo'=>'Ejercicio',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo1/mod1_21', 
        'modulo'=> 1,
        'titulo'=>'Lecciones Aprendidas',
        'indice'=> true,
        'navigation' => -1,
        ),
    
     array(
        'pagina'=>'modulo2/mod2_00',
        'modulo'=> 2,
        'titulo'=>'Indice',
        'indice'=> false,
        'navigation' => 1,
        ),
     array(
        'pagina'=>'modulo2/mod2_01',
        'modulo'=> 2,
        'titulo'=>'Introducción',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_02', 
        'modulo'=> 2,
        'titulo'=>'¿Qué es una Sequía?',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_03', 
        'modulo'=> 2,
        'titulo'=>'Tipos de Sequía',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_04', 
        'modulo'=> 2,
        'titulo'=>'Exposición a la Sequía',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_05',
        'modulo'=> 2,
        'titulo'=>'Ejercicio',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_06',
        'modulo'=> 2,
        'titulo'=>'Efectos de las Sequías (1)',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_07', 
        'modulo'=> 2,
        'titulo'=>'Efectos de las Sequías (2)',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_08', 
        'modulo'=> 2,
        'titulo'=>'Recomendaciones para la Actividad Agropecuaria',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_09', 
        'modulo'=> 2,
        'titulo'=>'Requerimiento Hídrico para un Cultivo',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_10',
        'modulo'=> 2,
        'titulo'=>'Ejercicio',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_11',
        'modulo'=> 2,
        'titulo'=>'Recomendaciones para el Secano',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_12', 
        'modulo'=> 2,
        'titulo'=>'Experiencias de Gestión del Riesgo',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_13',
        'modulo'=> 2,
        'titulo'=>'Monitoreo de la Sequía',
        'indice'=> true
        ), 
     array(
        'pagina'=>'modulo2/mod2_14', 
        'modulo'=> 2,
        'titulo'=>'Ejercicio',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo2/mod2_15', 
        'modulo'=> 2,
        'titulo'=>'Lecciones Aprendidas',
        'indice'=> true,
        'navigation' => -1,
        ),

     
     array(
        'pagina'=>'modulo3/mod3_01',
        'modulo'=> 3,
        'titulo'=>'Introducción',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo3/mod3_02',
        'modulo'=> 3,
        'titulo'=>'Objetivos',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo3/mod3_03',
        'modulo'=> 3,
        'titulo'=>'Actividad Agropecuaria en Chile',
        'indice'=> true
        ), 
     array(
        'pagina'=>'modulo3/mod3_04', 
        'modulo'=> 3,
        'titulo'=>'Riesgo de Desastres',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo3/mod3_05', 
        'modulo'=> 3,
        'titulo'=>'Riesgo Climático',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo3/mod3_06',
        'modulo'=> 3,
        'titulo'=>'Riesgo de Desastres: Amenaza y Vulnerabilidad',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo3/mod3_07',
        'modulo'=> 3,
        'titulo'=>'Ejemplo: Sistemas Vulnerables frente a una Amenaza',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo3/mod3_08', 
        'modulo'=> 3,
        'titulo'=>'Identificando Riesgos Climáticos en la Agricultura',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo3/mod3_09', 
        'modulo'=> 3,
        'titulo'=>'Identificando Riesgos Climáticos en la Agricultura',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo3/mod3_10',
        'modulo'=> 3,
        'titulo'=>'Ejercicio: Identificando Riesgos Climáticos en la Agricultura',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo3/mod3_11',
        'modulo'=> 3,
        'titulo'=>'Identificando Riesgos Climáticos en la Agricultura',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo3/mod3_12',
        'modulo'=> 3,
        'titulo'=>'Riesgo de Sequía y su Implicancia en la Agricultura de Chile',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo3/mod3_13',
        'modulo'=> 3,
        'titulo'=>'Riesgo de Sequía: Ejercicio',
        'indice'=> true
        ), 
     array(
        'pagina'=>'modulo3/mod3_14',
        'modulo'=> 3,
        'titulo'=>'Prevención ante Sequías',
        'indice'=> true
        ), 
     array(
        'pagina'=>'modulo3/mod3_15', 
        'modulo'=> 3,
        'titulo'=>'Resumen: Lecciones Aprendidas',
        'indice'=> true
        ),

     array(
        'pagina'=>'modulo4/mod4_00',
        'modulo'=> 4,
        'titulo'=>'Indice',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo4/mod4_01',
        'modulo'=> 4,
        'titulo'=>'Introducción',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo4/mod4_02',
        'modulo'=> 4,
        'titulo'=>'Objetivos',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo4/mod4_03', 
        'modulo'=> 4,
        'titulo'=>'Los Pronósticos del Clima y del Riesgo Agroclimático',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo4/mod4_04', 
        'modulo'=> 4,
        'titulo'=>'Uso de Pronósticos para Identificación de Riesgos',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo4/mod4_05', 
        'modulo'=> 4,
        'titulo'=>'Identificando Riesgos en la Agricultura',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo4/mod4_06', 
        'modulo'=> 4,
        'titulo'=>'Alcance de los Pronósticos e Importancia del Lenguaje',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo4/mod4_07', 
        'modulo'=> 4,
        'titulo'=>'Interpretación de los Pronósticos',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo4/mod4_08', 
        'modulo'=> 4,
        'titulo'=>'Aplicaciones Potenciales',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo4/mod4_09',
        'modulo'=> 4,
        'titulo'=>'Ejercicio',
        'indice'=> true
        ), 
     array(
        'pagina'=>'modulo4/mod4_10',
        'modulo'=> 4,
        'titulo'=>'Plan de Gestión de Riesgo. Elementos Generales',
        'indice'=> true
        ), 
     array(
        'pagina'=>'modulo4/mod4_11',
        'modulo'=> 4,
        'titulo'=>'Ejercicio',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo4/mod4_12',
        'modulo'=> 4,
        'titulo'=>'Declaración de Sequía y Emergencia Agrícola',
        'indice'=> true
        ),
      
     array(
        'pagina'=>'modulo5/mod5_00', 
        'modulo'=> 5,
        'titulo'=>'Introducción',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_01', 
        'modulo'=> 5,
        'titulo'=>'Introducción',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_02',
        'modulo'=> 5,
        'titulo'=>'Objetivos',
        'indice'=> true
        ), 
     array(
        'pagina'=>'modulo5/mod5_03', 
        'modulo'=> 5,
        'titulo'=>'Pronósticos y Probabilidades',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_04',
        'modulo'=> 5,
        'titulo'=>'Pronósticos y Probabilidades',
        'indice'=> true
        ), 
     array(
        'pagina'=>'modulo5/mod5_05', 
        'modulo'=> 5,
        'titulo'=>'Pronósticos y Probabilidades',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_06', 
        'modulo'=> 5,
        'titulo'=>'Series de Tiemp',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_07',
        'modulo'=> 5,
        'titulo'=>'Probabilidad de Excedencia',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_08',
        'modulo'=> 5,
        'titulo'=>'Distribución Anual de las Precipitaciones',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_09', 
        'modulo'=> 5,
        'titulo'=>'Ejercicio',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_10', 
        'modulo'=> 5,
        'titulo'=>'Ejercicio',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_11', 
        'modulo'=> 5,
        'titulo'=>'Uso de Probabilidades en la Agricultura y Otras Actividades Rurales',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_12', 
        'modulo'=> 5,
        'titulo'=>'Incerteza en la Toma de Decisiones',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_13', 
        'modulo'=> 5,
        'titulo'=>'Cambio Climático: Aumento de la Incertidumbre',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_14', 
        'modulo'=> 5,
        'titulo'=>'Cambio Climático: Aumento de la Incertidumbre',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_15',
        'modulo'=> 5,
        'titulo'=>'Resumen: Lecciones Aprendidas',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_16',
        'modulo'=> 5,
        'titulo'=>'Resumen: Lecciones Aprendidas',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_17',
        'modulo'=> 5,
        'titulo'=>'Resumen: Lecciones Aprendidas',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_18',
        'modulo'=> 5,
        'titulo'=>'Resumen: Lecciones Aprendidas',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_19',
        'modulo'=> 5,
        'titulo'=>'Resumen: Lecciones Aprendidas',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_20',
        'modulo'=> 5,
        'titulo'=>'Resumen: Lecciones Aprendidas',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_21',
        'modulo'=> 5,
        'titulo'=>'Resumen: Lecciones Aprendidas',
        'indice'=> true
        ),
     array(
        'pagina'=>'modulo5/mod5_22',
        'modulo'=> 5,
        'titulo'=>'Resumen: Lecciones Aprendidas',
        'indice'=> true
        ),

     array(
        'pagina'=>'examen/examen_1',
        'titulo'=>'Exámen Final',
        'indice'=> true
        )
      );
    if($numero === NULL){
        return $out;
    }
    if($tipo === NULL){
      return $out[$numero];
    }else{
      $unidad = $out[$numero];
      switch ($tipo) {
        case 'navigation':
          return isset($unidad[$tipo])?$unidad[$tipo]:false;
          break;
        case 'template':
          return isset($unidad[$tipo])?$unidad[$tipo]:'index_int';
          break;
        default:
          return $unidad[$tipo];
          break;
      }
    }

  }
}

function crear_pregunta($p)
{
  $out = '';
  foreach ($p as $key => $value)
  {
    $$key = $value;
  }
 
  $alternative = explode('||', $alternative);
  $options = explode('||', $options);
  $out = '';
  // $out = '(***--'.$id.'--***)';

  switch ($type)
  {
    case 'alt':
      $out .= '<p class="rotulo">' . $label . ':<br/>(' . $score . ' punto)</p>';
      if (count($options) > 1)
      {
        $out .= '<table class="alt_opciones" cellpadding="0" cellspacing="0">';
        for ($i = 0; $i < count($options); $i++)
        {
          $out .= '<tr><td align="right" valign="top" width="50px">' . roman($i + 1) . '.&nbsp;</td><td align="left">' . $options[$i] . '</td></tr>';
        }
        $out .= '</table>';
      }
      $out .= '<table class="alt_respuestas" cellpadding="3" cellspacing="0">';
      foreach ($alternative as $k => $a)
      {
        $out .= '<tr><td align="right" width="40"><input type="radio" name="radio' . $id . '" value="' . $k . '" /></td><td class="alt" width="630">' . $a . '</td></tr>';
      }
      $out .= '</table>';
      break;
      
    case 'alt2':
      $out .= $label . '<br/>(' . $score . ' punto)';
      $out .= '<table class="alt_respuestas" cellpadding="3" cellspacing="0">';
      foreach ($alternative as $k => $o)
      {
        $out .= '<tr><td align="right" width="40" valign="top"><input type="checkbox" name="checkbox' . $id . '_' . $k . '" /></td><td valign="top" class="alt" width="630">' . $o . '</td></tr>';
      }
      $out .= '</table>';
      break;
      
    case 'emp':
      $out .= '<p class="rotulo">Asigne escriba la letra de la afirmación o definición de la columna izquierda en la casilla correspondiente de la columna derecha</p>';
      $out .= $label ? '<p class="rotulo">' . $label . '<br/>(' . $score . ' puntos)</p>' :
      '(' . $score . ' punto)';
      $out .= '<table class="vf emp" cellpadding="3" cellspacing="1"><tr><td width="55%" valign="top">';
      foreach($alternative as $o){
      	$o = explode('¬¬', $o);
      	$out .= '<div class="emp_alternativa"><strong>' . $o[0] . '</strong> ' . $o[1] . '</div>';
      }
      $out .= '</td><td valign="top">';
      $aux = explode('||', $answer);
      foreach($aux as $k => $o){
      	$o = explode('¬¬', $o);
      	$out .= '<div class="emp_alternativa"><input type="text" name="' . $id . '_' . $k . '" id="' . $id . '_' . $k . '" maxlength="1" style="width:18px" /> ' . $o[1] . '</div>';
      }
      $out .= '</td></tr></table>';
      break;
    case 'vf':
    	$out .= '<p class="rotulo">';
      $out .= $label ? $label : 'Determine si la siguiente afirmación es verdadera (V) o falsa (F):';
      $out .= '<br/>(' . $score . ' punto)</p><table class="vf" cellpadding="3" cellspacing="1"><tr><th>&nbsp;</th><th>V</th><th>F</th></tr>';
      foreach($alternative as $k => $o){
      	$out.= '<tr><td>' . $o . '</td><td><input type="radio" name="radio' . $id . '_' . $k . '" value="1" /></td><td><input type="radio" name="radio' . $id . '_' . $k . '" value="0" /></td></tr>';
      }
      $out .= '</table>';
      break;
    case 'ord':
    	$out .= $label .'<br/>(' . $answer . ' puntos)';
      $out .= '<table class="alt_respuestas" cellpadding="4" cellspacing="0">';
      $answer = explode('||', $answer);
      foreach ($answer as $k => $o)
      {
      	$o = explode('¬¬', $o);
        $out .= '<tr><td align="right" width="40"><input style="width:18px" type="text" name="ord' . $id . '_' . $k . '" /></td><td class="alt" width="630">' . $o[1] . '</td></tr>';
      }
      $out .= '</table>';
      break;
    default:
      return false;
      break;
  }
  return $out;
}

if (!function_exists('months'))
{
  function months()
  {
    return array('00' => 'Diciembre', '01' => 'Enero', '02' => 'Febrero', '03' => 'Marzo', '04' => 'Abril', '05' => 'Mayo', '06' => 'Junio', '07' => 'Julio', '08' => 'Agosto', '09' => 'Septiembre', '10' => 'Octubre', '11' => 'Noviembre', '12' => 'Diciembre', '13' => 'Enero');
  }

}

if (!function_exists('iso2txt'))
{
  function iso2txt($date, $case = 0)
  {
    $months = months();
    $date = explode('-', $date);
    $out = $date[2] . ' de ' . $months[$date[1]] . ' de ' . $date[0];
    if ($case == 0)
    {
      /* lowercase date */
      return $out;
    } else
    {
      return strtoupper($out);
    }
  }

}

if (!function_exists('datetime2screen'))
{
  function datetime2screen($datetime)
  {
    $datetime = explode(' ', $datetime);
    return iso2txt($datetime[0]) . ' a las ' . $datetime[1];
  }

}

if (!function_exists('navigation'))
{
  function navigation($data)
  {
    switch ($data) {
      case 1:
          return '<span class="icon-arrow-right"></span>';
        break;
      case -1:
          return '<span class="icon-arrow-left"></span>';
        break;
      case -10:
          return '';
      default:
          return '<span class="icon-arrow-left"></span><span class="icon-arrow-right"></span>';
        break;
    }
  }

}


// if (!function_exists('examen_order'))
// {
//   function examen_order($examenes)
//   {
//     $examenes = explode('-', $examenes);
//     // var_dump($examenes);
//     // die();
//     $temp = -2;
//     foreach ($examenes as $e) {
//       if($e === ''){$e = -1;}
//       if($temp < $e)
//         $temp = $e;
//     }
//     return $temp;
//   }
// }