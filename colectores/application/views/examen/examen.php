<div id="principal">
<h1>Examen Final</h1>
<p>A continuación se presentan <?php echo PREGUNTAS_EXAMEN; ?> preguntas de selección múltiple y verdadero y falso sobre los contenidos revisados en este curso, las que son extraídas aleatoriamente de un banco de 50 preguntas.</p>
<p>Cada respuesta correcta vale un punto. Para aprobar, debes contestar un <?php echo PORCENTAJE_APROBACION; ?>% de las preguntas correctamente, es decir, al menos <?php echo (PREGUNTAS_EXAMEN*PORCENTAJE_APROBACION)/100; ?> preguntas correctas (<?php echo (TOTAL_PUNTOS*PORCENTAJE_APROBACION)/100; ?> puntos). Si logras este puntaje, se emitirá automáticamente el certificado de que has aprobado esta parte del curso.</p>
<p>Las respuestas incorrectas NO restan puntos. El examen puede ser rendido como máximo en <?php echo INTENTOS_PERMITIDOS; ?> intentos.</p> 
<div id="examen">   
<?php echo form_open('home/submit_examen'); ?>
  <?php $i = 1; foreach($preguntas as $pregunta): ?>
  
    <div class="pregunta">
      <h1>Pregunta <?php echo $i++; ?> de <?php echo count($preguntas); ?></h1>
      <?php echo crear_pregunta($pregunta); ?>
      <!-- <?php if($debug): ?> -->
      <div>
        (<?php echo $pregunta['id'] ?>)<br />
        <?php echo $pregunta['respuestas'] ?>
      </div>
      <!-- <?php endif; ?> -->
    </div>
    <?php endforeach; ?>
    <?php 
    $data = array(
        'name'    => 'examen',    // button name
        'content' => 'Enviar examen',    // this is the button text
        'type'    => 'submit',  // button type (important!)
        'class'   => 'btn'
    );
    ?>
    <div style="text-align:center;"><?php echo form_button($data) ?></div>
<?php echo form_close(); ?>
</div>
        
