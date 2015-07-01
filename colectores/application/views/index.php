<div id="showcase">
	<div class="header02">
	  <div class="mapa"></div>	  
    <h1>"Toma de Muestra para detectar <br />consumo de alcohol y drogas"</h1>
  </div>
</div>
<div id="mainmenu">
    <ul>
      <li id="mapa2">
        <?php echo anchor('home/informacion', '<h7>Información del Curso </h7>', 'class="informacion"'); ?> 
      </li>
      <li> 
      	<?php echo anchor('home/registro_elemento/1', '<h7>Unidad 1 </h7>', 'class="active" id="tooltip1" rel="tooltip" data-placement="bottom" title="Programa Drug Free Work Place - Lugares de trabajo libre de drogas"'); ?>
      </li>
       <li> 
      	<?php echo anchor('home/registro_elemento/36', '<h7>Unidad 2 </h7>', 'id="tooltip2" rel="tooltip" data-placement="bottom" title="Lo que un colector debe saber…"'); ?>
      </li>
      <li> 
      	<?php echo anchor('home/registro_elemento/70', '<h7>Unidad 3 </h7>', 'id="tooltip3" rel="tooltip" data-placement="bottom" title="Cómo realizar el testeo de Alcohol & Drogas"'); ?>        
      </li>      
      <li id="mapa1">
        <?php echo anchor('home/registro_elemento/111', '<h7>Unidad 4 </h7>','id="tooltip4" rel="tooltip" data-placement="bottom" title="Instrumentos de Testeo del alcohol y drogas"'); ?>       </li>      
      
    </ul>
    <div class="examen">
      <?php echo ($secciones[67]->registro)  ?>
      <?php //echo $permmitir_examen?anchor('home/examen','Examen'):''; ?>
      <?php //echo $resultados?anchor('home/resultados','Resultado'):''; ?>
      <?php echo $examen_aprobado?'<span class="label label-success" style="background-color: #25A4D2;">'.anchor('home/certificado', 'Descargar mi certificado de aprobación').'</span>':''; ?>
      <?php //echo $encuesta_aprobado? anchor('home/certificado', 'Descargar mi certificado de aprobación'):''; ?>
      </ul>
      <?php if($uniad_vista > 1){ ?>
      <span class="label label-success" style="background-color: #25A4D2;"><?php echo anchor('home/pag/'.$uniad_vista, 'Ir a su última página visitada del curso', 'style="color: #FFFFFF;"'); ?> </span>
      <?php } ?>
</div>

<script>
$(function() {
	$('#tooltip1').tooltip();
  $('#tooltip2').tooltip();
  $('#tooltip3').tooltip();
  $('#tooltip4').tooltip();
});
</script>
</div>